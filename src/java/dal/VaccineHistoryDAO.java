package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.VaccineHistory;

public class VaccineHistoryDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<VaccineHistory> getHistoryByIdUser(String id) {
          List<VaccineHistory> list = new ArrayList<>();
        String query = "SELECT u.username, u.gender, h.name, ap.appointmentDateAt, v.name AS vaccine_name, a.price\n"
                + "FROM [user] u\n"
                + "JOIN appointment a ON u.idUser = a.idUserVaccineA\n"
                + "JOIN appointment_provision ap ON a.idAppoinmentProvisionA = ap.idAppointmentProvision\n"
                + "JOIN vaccine v ON ap.idVaccineAP = v.idVaccine\n"
                + "JOIN hospital h ON ap.idHAP = h.idH\n"
                + "\n"
                + "WHERE u.idUser = ?;";
        try {
            con = new DBContext().getConnect(); // mo ket noi voi sql sever       
            ps = con.prepareStatement(query); //chay cau lenh query           
            ps.setString(1, id);
              

            rs = ps.executeQuery();
            while (rs.next()) {
                
                
                System.out.println(rs.getString(1));
                list.add(new VaccineHistory(
                        rs.getString(1),
                        rs.getBoolean(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getDouble(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<VaccineHistory> getHistoryByIdHos(String id) {
        System.out.println("helloooo");
        List<VaccineHistory> list = new ArrayList<>();
        String query = "SELECT * From vaccine_history where idHVH = ?;";
        try {
            con = new DBContext().getConnect(); // mo ket noi voi sql sever
            ps.setInt(1, Integer.parseInt(id));
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new VaccineHistory(rs.getString(1), rs.getBoolean(2), rs.getString(3), rs.getDate(4),
                        rs.getString(5), rs.getDouble(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        VaccineHistoryDAO dao = new VaccineHistoryDAO();
            try {
            List<VaccineHistory> listh = dao.getHistoryByIdUser("1003");
            
        for (VaccineHistory history : listh) {
            System.out.println(history);
        }
        } catch (Exception ex) {
            Logger.getLogger(VaccineHistoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
