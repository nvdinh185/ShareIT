package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.Comment;
import util.DBConnectionUtil;

public class CommentDao {
	private Connection conn;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;

	public int addItem(Comment objItem) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String sql = "INSERT INTO comments (id_song, username, comment) VALUES (?, ?, ?)";
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, objItem.getId_song());
			pst.setString(2, objItem.getUsername());
			pst.setString(3, objItem.getComment());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, conn);
		}
		return result;
	}
	public ArrayList<Comment> getItems(int idSong) {
		conn = DBConnectionUtil.getConnection();
		ArrayList<Comment> listItems = new ArrayList<>();
		String sql = "SELECT * FROM comments WHERE id_song = ?";
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, idSong);
			rs = pst.executeQuery();
			while (rs.next()) {
				Comment cmt = new Comment(rs.getInt("id"), rs.getInt("id_song"), rs.getString("username"),
						rs.getString("comment"), rs.getTimestamp("date_create"), rs.getBoolean("active"));
				listItems.add(cmt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, pst, conn);
		}
		return listItems;
	}
	public ArrayList<Comment> getItems() {
		conn = DBConnectionUtil.getConnection();
		ArrayList<Comment> listItems = new ArrayList<>();
		String sql = "SELECT * FROM comments";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				Comment cmt = new Comment(rs.getInt("id"), rs.getInt("id_song"), rs.getString("username"),
						rs.getString("comment"), rs.getTimestamp("date_create"), rs.getBoolean("active"));
				listItems.add(cmt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(rs, st, conn);
		}
		return listItems;
	}
	public int delItem(int cmtId) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String sql = "DELETE FROM comments WHERE id = ?";
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, cmtId);
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, conn);
		}
		return result;
	}
	public int editItem(Comment cmt) {
		int result = 0;
		conn = DBConnectionUtil.getConnection();
		String sql = "UPDATE comments SET active = ? WHERE id = ?";
		try {
			pst = conn.prepareStatement(sql);
			pst.setBoolean(1, cmt.isActive());
			pst.setInt(2, cmt.getId());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnectionUtil.close(pst, conn);
		}
		return result;
	}
}
