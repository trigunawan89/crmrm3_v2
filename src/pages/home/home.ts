import { DatabaseProvider } from './../../providers/database/database';
import { Component } from '@angular/core';
import { NavController, Platform } from 'ionic-angular';
 
@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  developer = {};
  developers = [];

  
  RM3Data = {};
  RM3Datas = [];
  RM3Question = {};
  RM3Questions = [];
  RM3Score = {};
  RM3Scores = [];
 
  constructor(public navCtrl: NavController, private databaseprovider: DatabaseProvider, private platform: Platform) {
    //this.currStep = this.navParams.get('currStep');
    this.databaseprovider.getDatabaseState().subscribe(rdy => {
      if (rdy) {
        this.loadRM3Data();
        this.loadRM3Question();
        this.loadRM3Score();
      }
    })

  }

  loadRM3Data() {
    this.databaseprovider.getAllRM3Data().then(data => {
      this.RM3Datas = data;
    })
  }
 
  addRM3Data() {
    this.databaseprovider.addRM3Data(this.RM3Data['site'],this.RM3Data['description'],this.RM3Data['question_detail_id'],this.RM3Data['question_group_id'],this.RM3Data['question_note'],this.RM3Data['score'],this.RM3Data['date'])
    .then(data => {
      this.loadRM3Data();
    });
    this.RM3Data = {};
  }

  loadRM3Question() {
    this.databaseprovider.getAllRM3Question().then(data => {
      this.RM3Questions = data;
    })
  }
 
  addRM3Question() {
    this.databaseprovider.addRM3Question(this.RM3Question['question_detail_id'],this.RM3Question['question_detail_desc'],this.RM3Question['question_group_id'],this.RM3Question['question_group_desc'])
    .then(data => {
      this.loadRM3Question();
    });
    this.RM3Question = {};
  }

  loadRM3Score() {
    this.databaseprovider.getAllRM3Score().then(data => {
      this.RM3Datas = data;
    })
  }
 
  addRM3Score() {
    this.databaseprovider.addRM3Score(this.RM3Data['score_id'],this.RM3Data['score_desc'])
    .then(data => {
      this.loadRM3Score();
    });
    this.RM3Score = {};
  }
  
 
}