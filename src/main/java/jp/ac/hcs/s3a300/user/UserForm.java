package jp.ac.hcs.s3a300.user;

import lombok.Data;

@Data
public class UserForm {
	
	/* ユーザID（メールアドレス） */
	@NotBlank(message = "{require_check}")
	@Email()
	private String user_id;
	
	private String password;
	
	private String user_name;
	
	private boolean darkmode;
	
	private String role;
}
