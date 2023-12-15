package controler;

import com.google.gson.Gson;
import connect.Connect;
import model.Lottery;
import model.LotteryResult;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

@WebServlet(name = "index", value = "")
public class IndexServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }
    private ArrayList<String> loadProvince(){
        Connection conn = Connect.getInstance().getConnection();
        try {
            PreparedStatement ps=conn.prepareStatement("SELECT province FROM data_mart group by province;");

            ResultSet rs =ps.executeQuery();
            ArrayList<String> rss = new ArrayList<>();
            while (rs.next() ){
                rss.add(rs.getString(1));
            }
            return rss;
        } catch (SQLException e) {

            // TODO Auto-generated catch block
            e.printStackTrace();
            return new ArrayList<>();
        }
    }
    private ArrayList<LotteryResult> getLotteryByProvinceAndDate(java.sql.Date date, String province){
        Connection conn = Connect.getInstance().getConnection();
        try {
            PreparedStatement ps=conn.prepareStatement("SELECT name_prize, result FROM data_mart where province = " +
                    "'"+province+"' " +
                    "and " +
                    "date_lottery = ?" +
                    " ");
            ps.setDate(1, date);
            System.out.println(ps.toString());
            ResultSet rs =ps.executeQuery();
            ArrayList<LotteryResult> rss = new ArrayList<>();
            while (rs.next()) {
                LotteryResult p = new LotteryResult(rs.getString(1), rs.getInt(2));
                rss.add(p);
            }
            return rss;
        } catch (SQLException e) {

            // TODO Auto-generated catch block
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ArrayList<String> rs = loadProvince();
        request.setAttribute("listProvince", rs);
        System.out.println(rs.size());
       request.getRequestDispatcher("index.jsp").forward(request,response);
        // Hello

    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        req.setCharacterEncoding("UTF-8");
        res.setContentType("text/html; charset=UTF-8");
        res.setCharacterEncoding("UTF-8");
        String time = req.getParameter("time");
        java.sql.Date date = new java.sql.Date(Long.parseLong(time));
        String province = req.getParameter("province");
        ArrayList<LotteryResult> rs = getLotteryByProvinceAndDate(date, province);
        Lottery lottery = new Lottery(province, date, rs);
        res.getWriter().println(new Gson().toJson(lottery));
    }

    public void destroy() {
    }
}