package jp.ac.hcs.s3a300.user;

import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;

import lombok.Data;

@Data
public class UserFormForUpdate {
	
	/** ユーザID（メールアドレス）*/
	@NotBlank(message = "{require_check}")
	@Email(message = "{email_check}")
	private String user_id;

	/** パスワード */
	private String password;

	/** クラス番号 */
	@NotBlank(message = "{require_check}")
	private String class_number;

	/** ユーザ名 */
	@NotBlank(message = "{require_check}")
	private String user_name;

	/** ダークモードフラグ */
	private boolean darkmode;

	/** 権限 */
	private String role;

	/** ユーザ状態 */
	@Min(value=1, message = "{user_status_check}")
	private int user_status;
}
