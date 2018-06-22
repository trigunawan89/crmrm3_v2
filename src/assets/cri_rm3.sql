CREATE TABLE IF NOT EXISTS CRI_RM3_SCORE (
  score_id TEXT
, score_desc TEXT
);
CREATE TABLE IF NOT EXISTS CRI_RM3_QUESTION (
  question_detail_id TEXT
, question_detail_desc TEXT
, question_group_id TEXT
, question_group_desc TEXT
);
CREATE TABLE IF NOT EXISTS CRI_RM3_DATA (
  rowid INTEGER  PRIMARY KEY AUTOINCREMENT
, sites TEXT
, description TEXT
, question_detail_id TEXT
, question_group_id TEXT
, question_note TEXT
, score TEXT
, date TEXT
);
INSERT INTO CRI_RM3_SCORE (score_id,score_desc) VALUES (
'0','0 – No evidence at all, no awareness');
INSERT INTO CRI_RM3_SCORE (score_id,score_desc) VALUES (
'1','1 – Ad hoc, reactive, not controlled, not current');
INSERT INTO CRI_RM3_SCORE (score_id,score_desc) VALUES (
'2','2 – Silo, random and spotty');
INSERT INTO CRI_RM3_SCORE (score_id,score_desc) VALUES (
'3','3 – Uniformly present, minimum standard (for compliance)');
INSERT INTO CRI_RM3_SCORE (score_id,score_desc) VALUES (
'4','4 – Applied, driven by top down   ');
INSERT INTO CRI_RM3_SCORE (score_id,score_desc) VALUES (
'5','5 – Embraced consistently with full confidence and continual improvement (in DNA)');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'1.1','1.1 Risk management competence is part of all managers'' competencies','1.SP1','1.SP1 –Leadership');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'1.2','1.2 Risk assessment is done for every big project, new products, business practice changes, etc','1.SP1','1.SP1 –Leadership');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'1.3','1.3 Adoption of APP BCoC','1.SP1','1.SP1 –Leadership');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'1.4','1.4 Operational risks and their priorities are always reported to management','1.SP1','1.SP1 –Leadership');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'2.1','2.1 Effective risk management policies and standards are documented and communicated','2.SP2','2.SP2 –Risk Management Policy and Standards');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'2.2','2.2 Processes are defined and process specific risks are identified','2.SP2','2.SP2 –Risk Management Policy and Standards');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'2.3','2.3 Process owners consistently manage their risks and opportunities, to enhance value creation','2.SP2','2.SP2 –Risk Management Policy and Standards');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'3.1','3.1 The organization’s business goals and targets are defined and communicated','3.SP3','3.SP3 –Management Committee / Governance');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'3.2','3.2 The organization’s goals for HSE are defined and communicated','3.SP3','3.SP3 –Management Committee / Governance');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'3.3','3.3 Adoption of APP BCoC','3.SP3','3.SP3 –Management Committee / Governance');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'3.4','3.4 Operational risks and their priorities are always reported to management','3.SP3','3.SP3 –Management Committee / Governance');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'4.1','4.1 Effective risk management policies and standards are documented and communicated','4.SP4','4.SP4 -Standard HSE management System');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'4.2','4.2 Processes are defined and process specific risks are identified','4.SP4','4.SP4 -Standard HSE management System');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'4.3','4.3 Process owners consistently manage their risks and opportunities, to enhance value creation','4.SP4','4.SP4 -Standard HSE management System');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'5.1','5.1 Risk ownership by business areas','5.OC1','5.OC1 –Allocation of responsibilities');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'5.2','5.2 Right people are doing the right things at the right time','5.OC1','5.OC1 –Allocation of responsibilities');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'6.1','6.1 Management is accountable for meeting safety objectives and mitigating risks that they are responsible for','6.OC2','6.OC2 –Management and supervisory performance');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'6.2','6.2 Adequate supervision, information, instruction and training are put in place','6.OC2','6.OC2 –Management and supervisory performance');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'7.1','7.1 The organization is structured to enable effective risk mitigation','7.OC3','7.OC3 –Organization structure');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'7.2','7.2 Risk controls fit sensibly into the management structures','7.OC3','7.OC3 –Organization structure');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'8.1','8.1 Two-way communication between management and employees','8.OC4','8.OC4 –Communication arrangements');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'8.2','8.2 Formal and informal routine gathering of information, discussions and assessments of risks and opportunities','8.OC4','8.OC4 –Communication arrangements');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'8.3','8.3 Formal communication management is implemented','8.OC4','8.OC4 –Communication arrangements');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'8.4','8.4 Performance management framework is implemented','8.OC4','8.OC4 –Communication arrangements');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'9.1','9.1 Understanding of dependencies and consequences','9.OC5','9.OC5 –Management of shared risk across multiple functions');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'9.2','9.2 Collaborative efforts to manage shared risks','9.OC5','9.OC5 –Management of shared risk across multiple functions');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'9.2','9.2 Consideration of people, relationships, external, process and systems view','9.OC5','9.OC5 –Management of shared risk across multiple functions');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'10.1','10.1 Personal ownership and responsibility for safety','10.OC6','10.OC6 –Safety Culture');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'10.2','10.2 Health and safety roles, tasks and objectives are defined','10.OC6','10.OC6 –Safety Culture');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'10.3','10.3 Clear policy, standard and objectives for health and safety','10.OC6','10.OC6 –Safety Culture');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'11.1','11.1 Information and records are stored reliably and with good integrity','11.OC7','11.OC7 –Records and Information Management System (RIMS), and Knowledge Management (KM)');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'11.2','11.2 Stored information can be accessed and used for managing risks','11.OC7','11.OC7 –Records and Information Management System (RIMS), and Knowledge Management (KM)');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'12.1','12.1 Consultation to employees at all levels about risks issues including health and safety','12.EP1','12.EP1 –Employees involvement and Cooperation');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'13.1','13.1 Recruitment, selection, training and development policies are focused on meeting company objectives','13.EP2','13.EP2 –Skills Competencies Management System');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'13.2','13.2 Employees have the right competencies (knowledge, skills, experience and abilities) needed to perform effectively, efficiently and safety','13.EP2','13.EP2 –Skills Competencies Management System');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'14.1','14.1 Formalization of risk indicators and measures','14.PI1','14.PI1 –Risk assessment and management');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'14.2','14.2 Risk-reward based resource allocation','14.PI1','14.PI1 –Risk assessment and management');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'14.3','14.3 Risk management reporting','14.PI1','14.PI1 –Risk assessment and management');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'15.1','15.1 SMART objectives that are aligned to support overall organization’s objectives and policies','15.PI2','15.PI2 –Objective / target setting');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'15.2','15.2 Short-term and long-term objectives','15.PI2','15.PI2 –Objective / target setting');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'16.1','16.1 Integration of risk management in operational planning','16.PI3','16.PI3 –Workload planning');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'16.2','16.2 Adherence to health and safety objectives and policies','16.PI3','16.PI3 –Workload planning');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'16.3','16.3 Monitoring of planning effectiveness and performance','16.PI3','16.PI3 –Workload planning');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'17.1','17.1 Clear identification of assets in management','17.RC2','17.RC2 –Asset Management and Loss Prevention');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'17.2','17.2 System to ensure good maintenance of assets','17.RC2','17.RC2 –Asset Management and Loss Prevention');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'17.3','17.3 Identification and reduction of value reductions and losses','17.RC2','17.RC2 –Asset Management and Loss Prevention');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'18.1','18.1 Changes are planned, made and evaluated to ensure attainment of business objectives','18.RC3','18.RC3 –Change Management');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'19.1','19.1 Effective management of contractors from selection through to handover at end of job','19.RC4','19.RC4 –Control of Contractors');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'19.2','19.2 Focus on health and safety of contractors','19.RC4','19.RC4 –Control of Contractors');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'19.3','19.3 Performance evaluation on contractors','19.RC4','19.RC4 –Control of Contractors');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'20.1','20.1 Business resilience capabilities','20.RC5','20.RC5 –Emergency Planning');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'20.2','20.2 Understanding of consequences of action or inaction','20.RC5','20.RC5 –Emergency Planning');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'20.3','20.3 Proactive prevention and reduction of impact from major accidents','20.RC5','20.RC5 –Emergency Planning');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'21.1','21.1 Activities and equipment that are critical to risk control are constantly monitored','21.ME1','21.ME1 –Proactive Monitoring System');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'22.1','22.1 Independent, systematic check of risk-control systems and management arrangements are conducted','22.ME2','22.ME2 –Routine audit inspections');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'23.1','23.1 All incidents are investigated and reported appropriately','23.ME3','23.ME3 –Incident investigation');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'23.2','23.2 Preventive measures are taken based on incident investigations','23.ME3','23.ME3 –Incident investigation');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'24.1','24.1 Ensuring that the organization objectives are continually improve and deliver excellence','24.ME4','24.ME4 –Management Review & Evaluation');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'24.2','24.2 Benchmarking internally and externally','24.ME4','24.ME4 –Management Review & Evaluation');
INSERT INTO CRI_RM3_QUESTION (question_detail_id,question_detail_desc,question_group_id,question_group_desc) VALUES (
'25.1','25.1 Risk assessment is used to drive continual improvement in the risk profile of the organization','25.CI1','25.CI1 –Corrective Action and Kaizen');
INSERT INTO CRI_RM3_DATA (rowid,sites,description,question_detail_id,question_group_id,question_note,score,date) VALUES (
1,'wik rm3 assessment','1','1','need improvement','2','2018-01-01',NULL);

