/* 開発用にデータ削除を追加 : リリース時は消す */
DELETE FROM m_user;

/* ユーザマスタのデータ（ADMIN権限） PASS:pasword */
INSERT INTO "PUBLIC"."M_USER" VALUES
('t-ukeire@hcs.ac.jp', '$2a$10$xRTXvpMWly0oGiu65WZlm.3YL95LGVV2ASFjDhe6WF4.Qji1huIPa', 'TANNIN', STRINGDECODE('\u62c5\u4efb\u592a\u90ce'), FALSE, 'TEACHER', 1, 0),
('s-ukeire@hcs.ac.jp', '$2a$10$l0HfPWrYhQOO7znreD5nKOJsChq/gXhdiLk6lMwOaQvfCwqkCkeIe', 'S3A412', STRINGDECODE('\u53d7\u5165\u592a\u90ce'), FALSE, 'STUDENT', 1, 0);
--/* ユーザマスタのデータ（一般権限） PASS:pasword */
--INSERT INTO m_user (user_id, encrypted_password, class_number, user_name, darkmode, role)
--VALUES('tamura@xxx.co.jp', '$2a$10$xRTXvpMWly0oGiu65WZlm.3YL95LGVV2ASFjDhe6WF4.Qji1huIPa', 'S2A112', '田村', false, 'STUDENT');
--INSERT INTO m_user (user_id, encrypted_password, class_number, user_name, darkmode, role)
--VALUES('suzuki@xxx.co.jp', '$2a$10$xRTXvpMWly0oGiu65WZlm.3YL95LGVV2ASFjDhe6WF4.Qji1huIPa', 'R4A114', '鈴木', true, 'STUDENT');

--/* 受験報告テーブルのデータ */
--INSERT INTO report (report_id, user_name, department, number, company_kana, company_name, location, state) VALUES (2, 'J2A088情報加奈子', 'J', '025', 'ヤマモ', '株式会社山本エンジニアリング', '外会場', '承認済');
--INSERT INTO report (report_id, user_name, department, number, company_kana, company_name, location, state) VALUES (3, 'R3A077情報花江', 'R', '154', 'ダダダ', '株式会社DADADA', '会社', '差戻し');
--INSERT INTO report (report_id, user_name, department, number, company_kana, company_name, location, state) VALUES (4, 'S3A066情報史五郎', 'S', '005', 'デンシ', '学校法人電子開発学園', 'HCS', '承認済');
--INSERT INTO report (report_id, user_name, department, number, company_kana, company_name, location, state) VALUES (5, 'M2A055情報廉太郎', 'M', '113', 'エービ', 'ABC株式会社', 'その他', '承認待ち');

/*就職活動申請テーブルのデータ*/
INSERT INTO apply(apply_id,user_id, job_hunting_state,hunting_start_date, hunting_start_time,hunting_end_date, hunting_end_time, job_hunting_place, company_name, summany_state, memo_remarks) values('00001','s-ukeire@hcs.ac.jp', 1 ,'2021-02-20', '11:30:00', '2021-02-20', '19:00:00', 'HCS', 'abc株式会社', true, '校長室で面接');

/*就職活動申請テーブルのデータ*/
INSERT INTO houkoku(houkoku_id,company_name,report_details,user_id ,hunting_report_state, advance_state) values('00001','abc株式会社', '面接をした', 's-ukeire@hcs.ac.jp' , 1, true);