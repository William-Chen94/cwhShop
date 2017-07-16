package com.shop.cwh.controller;



import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import com.shop.cwh.bean.User;

@Controller
public class UserInfoController {

		@ModelAttribute
		public User getUser() {
			return new User();
		}

		/**
		 * 用户帐号安全
		 *
		 */
		@RequestMapping(value = "/safe")
		public String SafeInfo( ) {

			return "person/safe";
		}
		/**
		 * 用户帐号安全
		 *
		 */
		@RequestMapping(value = "/refund")
		public String RefundInfo( ) {

			return "person/refund";
		}
		/**
		 * 用户帐号安全
		 *
		 */
		@RequestMapping(value = "/evaluate")
		public String EvaluateInfo( ) {

			return "person/evaluate";
		}
		/**
		 * 用户积分
		 *
		 */
		@RequestMapping(value = "/points")
		public String PointsInfo( ) {

			return "person/points";
		}
		/**
		 * 用户优惠卷
		 *
		 */
		@RequestMapping(value = "/coupon")
		public String CouponInfo( ) {

			return "person/coupon";
		}
		/**
		 * 用户红包
		 *
		 */
		@RequestMapping(value = "/bonus")
		public String BonusInfo( ) {

			return "person/bonus";
		}
		
		/**
		 * 用户账户余额
		 *
		 */
		@RequestMapping(value = "/walletlist")
		public String WalletlistInfo( ) {

			return "person/walletlist";
		}
		/**
		 * 账单明细
		 *
		 */
		@RequestMapping(value = "/bill")
		public String BillInfo( ) {

			return "person/bill";
		}
		/**
		 * 收藏
		 *
		 */
		@RequestMapping(value = "/collection")
		public String CollectionInfo( ) {

			return "person/collection";
		}
		/**
		 * 用户足迹
		 *
		 */
		@RequestMapping(value = "/foot")
		public String FootInfo( ) {
			
			/*User user =(User) session.getAttribute("user");
			List<Foot> foots = footService.QueryByUser_account(user.getUser_account());*/
			
			return "person/foot";
		}
		/**
		 * 增加银行卡
		 *
		 */
		@RequestMapping(value = "/cardmethod")
		public String Cardmethod( ) {

			return "person/cardmethod";
		}
		/**
		 * 更改用户头像
		 *
		 */
		@RequestMapping(value = "/updatePic")
		public String UpdatePic( ) {

			return "person/updatePic";
		}
		
}
