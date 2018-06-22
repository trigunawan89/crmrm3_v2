import { Injectable } from '@angular/core';
import { Platform } from 'ionic-angular';
import { SQLite, SQLiteObject } from '@ionic-native/sqlite';
import { SQLitePorter } from '@ionic-native/sqlite-porter';
import { Http } from '@angular/http';
import {Observable} from 'rxjs/Observable';
import 'rxjs/add/observable/fromPromise';
import 'rxjs/add/operator/map';
import { BehaviorSubject } from 'rxjs/Rx';
import { Storage } from '@ionic/storage';
import { IonicStorageModule } from '@ionic/storage';
import {HttpModule} from '@angular/http';
 

/*
  Generated class for the DatabaseProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class DatabaseProvider {
  database: SQLiteObject;
  private databaseReady: BehaviorSubject<boolean>;

  constructor(public sqlitePorter: SQLitePorter, private storage: Storage, private sqlite: SQLite, private platform: Platform, private http: Http) {
    this.databaseReady = new BehaviorSubject(false);
    this.platform.ready().then(() => {
      this.sqlite.create({
        name: 'cri_rm3.db',
        location: 'default'
      })
        .then((db: SQLiteObject) => {
          this.database = db;
          this.storage.get('database_filled').then(val => {
            if (val) {
              this.databaseReady.next(true);
            } else {
              this.fillDatabase();
            }
          });
        });
    });
  }
 
  fillDatabase() {
    this.http.get('assets/cri_rm3.sql')
      .map(res => res.text())
      .subscribe(sql => {
        this.sqlitePorter.importSqlToDb(this.database, sql)
          .then(data => {
            this.databaseReady.next(true);
            this.storage.set('database_filled', true);
          })
          .catch(e => console.error(e));
      });
  }
 
  addRM3Score(score_id, score_desc) {
    let data = [score_id, score_desc]
    return this.database.executeSql("INSERT INTO CRI_RM3_SCORE (score_id, score_desc ) VALUES (?, ?)", data).then(data => {
      return data;
    }, err => {
      console.log('Error: ', err);
      return err;
    });
  }

  addRM3Question(question_detail_id, question_detail_desc, question_group_id, question_group_desc  ) {
    let data = [question_detail_id, question_detail_desc, question_group_id, question_group_desc]
    return this.database.executeSql("INSERT INTO CRI_RM3_QUESTION (question_detail_id, question_detail_desc, question_group_id, question_group_desc ) VALUES (?, ?,?,?)", data).then(data => {
      return data;
    }, err => {
      console.log('Error: ', err);
      return err;
    });
  }

  addRM3Data(sites,description,question_detail_id,question_group_id,question_note,score,date  ) {
    let data = [sites,description,question_detail_id,question_group_id,question_note,score,date ]
    return this.database.executeSql("INSERT INTO CRI_RM3_DATA (rowid, sites,description,question_detail_id,question_group_id,question_note,score,date ) VALUES (null,?,?,?,?,?,?)", data).then(data => {
      return data;
    }, err => {
      console.log('Error: ', err);
      return err;
    });
  }

  getAllRM3Score() {
    return this.database.executeSql("SELECT * FROM CRI_RM3_SCORE", []).then((data) => {
      let RM3Score = [];
      if (data.rows.length > 0) {
        for (var i = 0; i < data.rows.length; i++) {
          RM3Score.push({ score_id: data.rows.item(i).score_id, score_desc: data.rows.item(i).score_desc });
        }
      }
      return RM3Score;
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getAllRM3Data() {
    return this.database.executeSql("SELECT * FROM CRI_RM3_DATA", []).then((data) => {
      let RM3Data = [];
      if (data.rows.length > 0) {
        for (var i = 0; i < data.rows.length; i++) {
          RM3Data.push({ rowid: data.rows.item(i).rowid, sites: data.rows.item(i).sites,description: data.rows.item(i).description,question_detail_id: data.rows.item(i).question_detail_id,question_group_id: data.rows.item(i).question_group_id,question_note: data.rows.item(i).question_note,score: data.rows.item(i).score,date: data.rows.item(i).date,  });
        }
      }
      return RM3Data;
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

  getAllRM3Question() {
    return this.database.executeSql("SELECT * FROM CRI_RM3_QUESTION", []).then((data) => {
      let RM3Question = [];
      if (data.rows.length > 0) {
        for (var i = 0; i < data.rows.length; i++) {
          RM3Question.push({ question_detail_id: data.rows.item(i).question_detail_id, question_detail_desc: data.rows.item(i).question_detail_desc,question_group_id: data.rows.item(i).question_group_id,question_group_desc: data.rows.item(i).question_group_desc });
        }
      }
      return RM3Question;
    }, err => {
      console.log('Error: ', err);
      return [];
    });
  }

 
  getDatabaseState() {
    return this.databaseReady.asObservable();
  }
}
