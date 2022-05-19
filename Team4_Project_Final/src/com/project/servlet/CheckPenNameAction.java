package com.project.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.google.gson.Gson;
import com.project.model.UserDAO;

public class CheckPenNameAction implements Action {

	@Override
	public String action(HttpServletRequest request) throws ServletException, IOException {
		String url = "addUser.jsp";
		
		String penName = request.getParameter("penName");
		boolean result = false;
		Gson g = new Gson();
			try {
				if (new UserDAO().checkPenName(penName)) {
					result = true;
					url = "isReactedResult.jsp";
					request.setAttribute("result", g.toJson(result));
				}else {
					url = "isReactedResult.jsp";
					request.setAttribute("result", g.toJson(result));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		return url;
	}

}
