package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Comment;
import model.dao.CommentDao;

public class PublicSaveCommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CommentDao cmtDao;

	public PublicSaveCommentController() {
		super();
		cmtDao = new CommentDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int idSong = Integer.parseInt(request.getParameter("aid"));
		String username = request.getParameter("afullname");
		String cmt = request.getParameter("acmt");
		Comment item = new Comment(0, idSong, username, cmt, null, true);
		if (cmtDao.addItem(item) > 0) {
			response.sendRedirect(request.getContextPath()+"/public/detail.jsp?msg=1");
		} else {
			response.sendRedirect(request.getContextPath()+"/public/detail.jsp?msg=0");
		}
	}
}
