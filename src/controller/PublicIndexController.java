package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Category;
import model.bean.News;
import model.dao.CatDao;
import model.dao.NewsDao;

public class PublicIndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NewsDao newsDao;
	private CatDao catDao;

	public PublicIndexController() {
		super();
		newsDao = new NewsDao();
		catDao = new CatDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		News topItem = newsDao.getTopItem();
		ArrayList<News> listNews = newsDao.getItems();
		ArrayList<News> listNewsView = newsDao.getItems(5);
		ArrayList<Category> listCats = catDao.getItems();
		
		//System.out.println(topItem.getName());
		request.setAttribute("topItem", topItem);
		request.setAttribute("listNews", listNews);
		request.setAttribute("listCats", listCats);
		request.setAttribute("listNewsView", listNewsView);
		RequestDispatcher rd = request.getRequestDispatcher("/public/index.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
