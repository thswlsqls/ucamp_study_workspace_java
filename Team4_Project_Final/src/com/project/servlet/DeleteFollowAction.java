package com.project.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.google.gson.JsonObject;
import com.project.model.InteractionDAO;

public class DeleteFollowAction implements Action {

	@Override
	public String action(HttpServletRequest request) throws ServletException, IOException {
		String url = "addFllowResult.jsp";
		String followeePenName = request.getParameter("followeePenName");
		String followerPenName = request.getParameter("followerPenName");
		
		InteractionDAO iDao = (InteractionDAO) request.getServletContext().getAttribute("iDao");
		JsonObject j=new JsonObject();
		String followeeId = iDao.getFolloweeId(followeePenName);
		String followerId = iDao.getFollowerId(followerPenName);

		try {
			String result = iDao.deleteFollow(followeeId, followerId);
				if (result.equals("true")) {
					url = "addFllowResult.jsp";
					j.addProperty("isFollowDelete", result);
					request.setAttribute("result", j); 
					System.out.println(j);
				}
				
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return url;
	}

}
