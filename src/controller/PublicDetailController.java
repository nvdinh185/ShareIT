package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.News;
import model.dao.NewsDao;

public class PublicDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NewsDao newsDao;

	public PublicDetailController() {
		super();
		newsDao = new NewsDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("did"));
		}catch(NumberFormatException e) {
			
		}
		
		News item = newsDao.getItem(6);
		ArrayList<News> listNews = newsDao.getRelatedItems(item, 3);
		
		request.setAttribute("item", item);
		request.setAttribute("listNews", listNews);
		System.out.println(listNews.size());
		RequestDispatcher rd = request.getRequestDispatcher("/public/detail.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
