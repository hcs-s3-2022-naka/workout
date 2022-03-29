/* 開発用にデータ削除を追加 : リリース時は消す */
DELETE FROM m_user;
DELETE FROM task;

 /* ユーザマスタのデータ（ADMIN権限） PASS:pasword */
INSERT INTO "PUBLIC"."M_USER" VALUES
('joho@hcs.ac.jp', '$2a$10$xRTXvpMWly0oGiu65WZlm.3YL95LGVV2ASFjDhe6WF4.Qji1huIPa', 'TANNIN', STRINGDECODE('\u62c5\u4efb\u592a\u90ce'), FALSE, 'TEACHER', 1, 0),
('josen@hcs.ac.jp', '$2a$10$l0HfPWrYhQOO7znreD5nKOJsChq/gXhdiLk6lMwOaQvfCwqkCkeIe', 'S3A412', STRINGDECODE('\u53d7\u5165\u592a\u90ce'), FALSE, 'STUDENT', 1, 0);

/* タスクテーブルのデータ */
INSERT INTO task (id, user_id, priority, title, comment, limitday) VALUES (1, 'isida@xxx.co.jp', 'HIGH','a', 'これやる', '2020-03-23');
INSERT INTO task (id, user_id, priority, title, comment, limitday) VALUES (2, 'abe@xxx.co.jp', 'MIDDLE','b', 'あれやる', '2020-03-24');
INSERT INTO task (id, user_id, priority, title, comment, limitday) VALUES (3, 'isida@xxx.co.jp', 'LOW','c', 'それやる', '2020-03-31');
INSERT INTO task (id, user_id, priority, title, comment, limitday) VALUES (4, 'sano@xxx.co.jp', 'LOW','d', 'どれやる', '2020-03-25');
INSERT INTO task (id, user_id, priority, title, comment, limitday) VALUES (5, 'abe@xxx.co.jp', 'LOW','e', 'もっとやる', '2020-04-20');