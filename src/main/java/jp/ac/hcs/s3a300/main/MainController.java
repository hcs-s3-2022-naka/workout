package jp.ac.hcs.s3a300.main;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.ac.hcs.s3a300.user.UserData;

@Controller
public class MainController {
	
	@Autowired
	LoginService  loginService;
	
	/**
	 * トップ画面を表示する。
	 * @param principal ログイン情報
	 * @return トップ画面
	 */
	@RequestMapping("/")
	public String index(Principal principal) {
		
		UserData userData = loginService.getLoginUserInfo(principal);
		
		if(loginService.judgeUserStatus(userData)) {
			//OK
			return "index";
		} else {
			//NG
			return "login";
		}
	}
}
