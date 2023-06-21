/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import dal.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.User;

/**
 *
 * @author DELL
 */
public class AdminDAO extends DBContext{
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        String sql = "select * from [user]";
//        PreparedStatement stm = conn.prepareCall(sql);
//        ResultSet rs = stm.executeQuery();s
        try {
            conn = new DBContext().getConnect();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getDate(5), rs.getBoolean(6),
                        rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10)));

            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args) {
        AdminDAO db = new AdminDAO();
        List<User> l = db.getAllUser();
        for (User user : l) {
            System.out.println(user);
        }
    }
}