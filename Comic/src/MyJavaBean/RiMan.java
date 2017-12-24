package MyJavaBean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RiMan {
	public List<Cartoon> getcartoon(int pageSize, int currentPage) { // pageSize每页要显示的最大数，currentPage当前页
		// TODO Auto-generated method stub
		List<Cartoon> cartoons = new ArrayList<Cartoon>();
		Connection con = MyConnection.getConnection();
		Statement st;
		try {
			String sql = "select * from riman";
			st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			rs.absolute((currentPage - 1) * pageSize + 1);
			for (int i = 1; i <= pageSize; i++) {
				Cartoon cartoon = new Cartoon();
				cartoon.setName(rs.getString("name"));
				cartoon.setImage(rs.getString("image"));
				cartoon.setTime(rs.getString("time"));
				cartoon.setDrama(rs.getString("drama"));
				cartoons.add(cartoon);
				if (!rs.next()) {
					break;
				}
			}
			rs.close();
			st.close();
			con.close();

		} catch (Exception e) {

			e.printStackTrace();
		}
		return cartoons;

	}

	public int getmaxPage(int totalRow,int pageSize) {
		int maxPage = 0;
		Connection con = MyConnection.getConnection();
		Statement st;
		try {
			String sql = "select * from riman";
			st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			rs.last();
			totalRow=rs.getRow();
			maxPage=totalRow%pageSize==0?totalRow/pageSize:(totalRow/pageSize+1);
			rs.close();
			st.close();
			con.close();

		} catch (Exception e) {

			e.printStackTrace();
		}
		return maxPage;
	}
}
