package jp.ac.hcs.s3a300.user;

public enum UserStatus {
	VALID(1), LOCKED(2), INVALID(3);

	private final int code;

	private UserStatus(int code) {
		this.code = code;
	}

	public int getCode() {
		return code;
	}
}
