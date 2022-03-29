package jp.ac.hcs.s3a300.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * ユーザ情報を操作する。
 */
@Transactional
@Service
public class UserService {
	
	@Autowired
	UserRepository userRepository;
	
	/**
	 * ユーザ情報を全件取得する 
	 * @return UserEntity
	 */
	public UserEntity selectAll() {
		return userRepository.selectAll();
	}
	
	/**
	 * ユーザ情報を1件追加する。
	 * @param userData 追加するユーザ情報（パスワードは平文）
	 * @return 処理結果(成功:true, 失敗:false)
	 */
	public boolean insertOne(UserData userData) {
		int rowNumber;
		try {
			rowNumber = userRepository.insertOne(userData); 
		} catch(DataAccessException e) {
			e.printStackTrace();
			rowNumber = 0;
		}
		return rowNumber > 0;
	}
	
	/**
	 * 指定したユーザIDのユーザ情報を取得する.
	 * @param user_id ユーザID
	 * @return UserData
	 */
	public UserData selectOne(String user_id) {
		return userRepository.selectOne(user_id);
	}

	/**
	 * (管理用)ユーザ情報を1件更新する(パスワード更新有).
	 * @param userData 更新するユーザ情報(パスワードは平文)
	 * @return 処理結果(成功:true, 失敗:false)
	 */
	public boolean updateOneWithPassword(UserData userData) {
		int rowNumber = userRepository.updateOneWithPassword(userData);
		boolean result = (rowNumber > 0) ? true : false;
		return result;
	}

	/**
	 * (管理用)ユーザ情報を1件更新する(パスワード更新無).
	 * @param userData 更新するユーザ情報(パスワードは設定しない)
	 * @return 処理結果(成功:true, 失敗:false)
	 */
	public boolean updateOne(UserData userData) {
		int rowNumber = userRepository.updateOne(userData);
		boolean result = (rowNumber > 0) ? true : false;
		return result;
	}

	/**
	 * ユーザ情報を1件削除する.
	 * @param user_id 削除したいユーザID
	 * @return 処理結果(成功:true, 失敗:false)
	 */
	public boolean deleteOne(String user_id) {
		int rowNumber = userRepository.deleteOne(user_id);
		boolean result = (rowNumber > 0) ? true : false;
		return result;
	}
}
