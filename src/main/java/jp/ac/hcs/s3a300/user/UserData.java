package jp.ac.hcs.s3a300.user;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 1件分のユーザ情報.
 * 各項目のデータ仕様も合わせて管理する.
 */
@Data
@NoArgsConstructor
public class UserData {

	/**
	 * ユーザID（メールアドレス）
	 * 主キー、必須入力、メールアドレス形式
	 */
	private String user_id;

	/**
	 * パスワード
	 * 必須入力、長さ4から100桁まで、半角英数字のみ
	 */
	private String password;

	/**
	 * クラス出席番号
	 * 必須入力、担任はTANNIN
	 */
	private String class_number;

	/**
	 * ユーザ名
	 * 必須入力
	 */
	private String user_name;

	/**
	 * ダークモードフラグ
	 * - ON  : true
	 * - OFF : false
	 * ユーザ作成時はfalse固定
	 */
	private boolean darkmode;

	/**
	 * 権限
	 * - 管理 : "ROLE_ADMIN"
	 * - 一般 : "ROLE_GENERAL"
	 * 必須入力
	 */
	private String role;

	/**
	 * ユーザ状態
	 * - UserStatusクラスで定義
	 */
	private int user_status;

	/**
	 * パスワードエラー回数
	 * ユーザ作成時は0固定
	 * ユーザ状態を有効にした際に0に戻す
	 */
	private int password_error_count;

}
