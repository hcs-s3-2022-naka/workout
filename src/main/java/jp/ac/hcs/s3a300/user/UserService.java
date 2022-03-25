package jp.ac.hcs.s3a300.user;

import org.springframework.dao.DataAccessException;

/**
 * ユーザ情報を操作する。
 */
public class UserService {

	public boolean insertOne(UserData userData) {
		int rowNumber;
		try {
			rowNumber = UserRepository.insertOne(userData); 
		} catch(DataAccessException e) {
			e.printStackTrace();
			rowNumber = 0;
		}
		return rowNumber > 0;
	}
	
	UserData refillToData(UserForm form) { 
		UserData data = new UserData();
	}
}
