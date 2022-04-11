/* 開発用にデータ削除を追加 : リリース時は消す
DROP TABLE m_user;
DROP TABLE task;
 */

/* ユーザマスタ */
CREATE TABLE IF NOT EXISTS m_user (
    user_id VARCHAR(50) PRIMARY KEY,
    encrypted_password VARCHAR(100),
    class_number VARCHAR(6),
    user_name VARCHAR(50),
    darkmode BOOLEAN,
    role VARCHAR(50),
    user_status int DEFAULT 1,
    password_error_count int DEFAULT 0
);

/* 受験報告テーブル */
CREATE TABLE IF NOT EXISTS report (
  report_id INT PRIMARY KEY,
  user_name VARCHAR(50),
  department VARCHAR(1),
  number VARCHAR(3),
  company_kana VARCHAR(50),
  company_name VARCHAR(50),
  classification VARCHAR(10),
  classification_other VARCHAR(10),
  location VARCHAR(100),
  location_large_area VARCHAR(50),
  location_area VARCHAR(20),
  location_area_other VARCHAR(20),
  testing_stage VARCHAR(50),
  testing_result VARCHAR(50),
  testing_contents VARCHAR(50),
  testing_contents_other VARCHAR(50),
  interview VARCHAR(30),
  interviewers VARCHAR(30),
  interviewers_position VARCHAR(30),
  interview_time VARCHAR(20),
  theme VARCHAR(50),
  contents VARCHAR(200),
  state VARCHAR(50)
  );

  /*就職活動申請(申請)*/
 CREATE TABLE IF NOT EXISTS apply (
  apply_id int(5) PRIMARY KEY,
  user_id VARCHAR(50),
  hunting_start_date DATE,
  hunting_start_time TIME,
  hunting_end_date DATE,
  hunting_end_time TIME,
  job_hunting_place VARCHAR(60),
  advance_state int DEFAULT 1,
  company_name VARCHAR(50),
  summany_state BOOLEAN,
  absence_classification BOOLEAN,
  absence_start_date DATE,
  absence_start_time TIME,
  absence_end_date DATE,
  absence_end_time TIME,
  departure_classification BOOLEAN,
  departure_scheduled_date DATE,
  departure_scheduled_time TIME,
  tardiness_classification BOOLEAN,
  tardiness_scheduled_date DATE,
  tardiness_scheduled_time TIME,
  memo_remarks VARCHAR(500),
  job_hunting_state int DEFAULT 1,
  remand_remarks VARCHAR(100),
  registration_date CHAR(20),
  registrant_user_id VARCHAR(254),
  update_date CHAR(20),
  updater_user_id VARCHAR(254)
);

  /*就職活動申請(報告)*/
 CREATE TABLE IF NOT EXISTS houkoku (
  houkoku_id int(5) PRIMARY KEY,
  user_id VARCHAR(254),
  apply_id CHAR(5),
  company_name VARCHAR(50),
  hunting_report_state int DEFAULT 1,
  report_details VARCHAR(200),
  advance_state BOOLEAN,
  registration_date CHAR(20),
  houkoku_remand_remarks VARCHAR(100),
  registrant_user_id VARCHAR(254),
  update_date CHAR(20),
  updater_user_id VARCHAR(254)
);
