package service;

import connect.Connect;
import model.LotteryResult;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Result {
    public static List<LotteryResult> getLotteryResult() {
        List<LotteryResult> list = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql;
        try {
            sql = "select * from datamart";
            ps = Connect.getConnection().prepareStatement(sql);
            list = new ArrayList<>();
            rs = ps.executeQuery(sql);
            while (rs.next()) {
                LotteryResult p = new LotteryResult(rs.getString(1), rs.getInt(2));
                list.add(p);

            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    public static void main(String[] args) {
        List<LotteryResult> products = Result.getLotteryResult();
        System.out.println(products);
    }
}

