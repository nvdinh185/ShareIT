package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.Category;
import model.bean.News;
import util.DBConnectionUtil;

public class NewsDao {
	private static Connection conn;
	private static Statement st;
	private static PreparedStatement pst;
	private static ResultSet rs;

	public ArrayList<News> getItems() {
		conn = DBConnectionUtil.getConnection();
		String sql = "SELECT n.*, c.name AS cname FROM news AS n JOIN categories AS c WHERE n.cat_id = c.id ORDER BY id DESC";
		ArrayList<News> listItems = new ArrayList<>();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				News ObjItem = new News(rs.getInt("id"), rs.getString("name"), rs.getString("preview_text"),
						rs.getString("detail_text"), rs.getTimestamp("date_create"), rs.getString("picture"),
						rs.getInt("counter"), new Category(0, rs.getString("cname")));
				listItems.add(ObjItem);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, st, conn);
		}
		return listItems;
	}

	public News getTopItem() {
		conn = DBConnectionUtil.getConnection();
		String sql = "SELECT n.*, c.name AS cname FROM news AS n JOIN categories AS c WHERE n.cat_id = c.id ORDER BY id LIMIT 1";
		News item = null;
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			if (rs.next()) {
				item = new News(rs.getInt("id"), rs.getString("name"), rs.getString("preview_text"),
						rs.getString("detail_text"), rs.getTimestamp("date_create"), rs.getString("picture"),
						rs.getInt("counter"), new Category(0, rs.getString("cname")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, st, conn);
		}
		return item;
	}

	public ArrayList<News> getItemsByIdCat(int idCat) {
		conn = DBConnectionUtil.getConnection();
		String sql = "SELECT n.*, c.name AS cname FROM news AS n JOIN categories AS c WHERE n.cat_id = c.id AND n.cat_id = ? ORDER BY id DESC";
		ArrayList<News> listItems = new ArrayList<>();
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, idCat);
			rs = pst.executeQuery();
			while (rs.next()) {
				News ObjItem = new News(rs.getInt("id"), rs.getString("name"), rs.getString("preview_text"),
						rs.getString("detail_text"), rs.getTimestamp("date_create"), rs.getString("picture"),
						rs.getInt("counter"), new Category(0, rs.getString("cname")));
				listItems.add(ObjItem);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, conn);
		}
		return listItems;
	}

	public ArrayList<News> getItems(int number) {
		conn = DBConnectionUtil.getConnection();
		String sql = "SELECT n.*, c.name AS cname FROM news AS n JOIN categories AS c WHERE n.cat_id = c.id ORDER BY counter DESC LIMIT ?";
		ArrayList<News> listItems = new ArrayList<>();
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, number);
			rs = pst.executeQuery();
			while (rs.next()) {
				News ObjItem = new News(rs.getInt("id"), rs.getString("name"), rs.getString("preview_text"),
						rs.getString("detail_text"), rs.getTimestamp("date_create"), rs.getString("picture"),
						rs.getInt("counter"), new Category(0, rs.getString("cname")));
				listItems.add(ObjItem);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, conn);
		}
		return listItems;
	}

	public ArrayList<News> getRelatedItems(News itemNews, int number) {
		conn = DBConnectionUtil.getConnection();
		String sql = "SELECT n.*, c.name AS cname FROM news AS n JOIN categories AS c WHERE n.cat_id = c.id AND n.cat_id = ? AND n.id != ? ORDER BY n.id DESC LIMIT ?";
		ArrayList<News> listItems = new ArrayList<>();
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, itemNews.getItemCat().getId());
			pst.setInt(2, itemNews.getId());
			pst.setInt(3, number);
			rs = pst.executeQuery();
			while (rs.next()) {
				News ObjItem = new News(rs.getInt("id"), rs.getString("name"), rs.getString("preview_text"),
						rs.getString("detail_text"), rs.getTimestamp("date_create"), rs.getString("picture"),
						rs.getInt("counter"), new Category(0, rs.getString("cname")));
				listItems.add(ObjItem);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, conn);
		}
		return listItems;
	}

	public News getItem(int id) {
		conn = DBConnectionUtil.getConnection();
		String sql = "SELECT n.*, c.name AS cname FROM news AS n JOIN categories AS c WHERE n.cat_id = c.id AND n.id = ?";
		News items = null;
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			rs = pst.executeQuery();
			if (rs.next()) {
				items = new News(rs.getInt("id"), rs.getString("name"), rs.getString("preview_text"),
						rs.getString("detail_text"), rs.getTimestamp("date_create"), rs.getString("picture"),
						rs.getInt("counter"), new Category(rs.getInt("cat_id"), rs.getString("cname")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, conn);
		}
		return items;
	}

}
