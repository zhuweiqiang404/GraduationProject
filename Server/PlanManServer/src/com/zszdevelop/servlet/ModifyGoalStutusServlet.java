package com.zszdevelop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.zszdevelop.bean.BaseUser;
import com.zszdevelop.bean.InsertStatus;
import com.zszdevelop.config.ResponseMessage;
import com.zszdevelop.config.ResultCode;
import com.zszdevelop.dao.GoalInfoDao;
import com.zszdevelop.dao.LoginDao;
import com.zszdevelop.impl.GoalInfoImpl;
import com.zszdevelop.impl.LoginImpl;
import com.zszdevelop.utils.AuthUserUtils;
import com.zszdevelop.utils.OutJsonUtils;
import com.zszdevelop.utils.ServerSettingUtils;

/**
 * Servlet implementation class ModifyGoalStutusServlet
 */
@WebServlet("/ModifyGoalStutusServlet")
public class ModifyGoalStutusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyGoalStutusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServerSettingUtils.settingEncode(request, response);
		
		// 验证token
		boolean passAuthUser = AuthUserUtils.passAuthUser(request, response);
		if (!passAuthUser) {
			return;
		}
		// 取得参数
		String userId = request.getParameter("userId");
		String goalId = request.getParameter("goalId");
		
		// 对数据进行一个容错处理
		userId=userId==null?"0":userId;
		goalId=goalId==null?"0":goalId;
		// 用户基本数据
		GoalInfoDao goalInfoDao = new GoalInfoImpl();
		boolean modifyGoalStatus = goalInfoDao.modifyGoalStatus(Integer.parseInt(goalId), Integer.parseInt(userId));
		
		
		if (!modifyGoalStatus) {
			OutJsonUtils.outJson("", ResponseMessage.MESSAGE_NO_MODIFY, response,ResultCode.HTTP_ERROR);
			return;
		}

		// 将数据以json的形式传递回来
		Gson gson = new Gson();
		String jsonData = gson.toJson(new InsertStatus(ResultCode.INSERT_OK));
		OutJsonUtils.outJson(jsonData, ResponseMessage.MESSAGE_CUCCESS, response,ResultCode.HTTP_OK);
	}

}
