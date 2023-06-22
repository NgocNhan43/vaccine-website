package dal;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import model.Hospital;
import model.User;

public class HospitalDAO {

    static Connection conn = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;
    static Encrypt en = new Encrypt();

    public static void saveOnVaccineHistory(File uncomUserFile) throws IOException, ParseException {
        //// Current solution
//		SOlU 2: 
//		1: Create 1 column on appointment table store detail which set by default is come. ✅
//		2: Hospital give excel |idAppointment& detailDontCome| => handle it into excelIds []
        Set<Integer> excelIds = new HashSet<>(); // Use Set to remove duplicates
        try {
            FileInputStream fis = new FileInputStream(uncomUserFile);
            XSSFWorkbook wb = new XSSFWorkbook(fis);
            XSSFSheet sheet = wb.getSheetAt(0);
            for (Row row : sheet) {
                int id = (int) row.getCell(0).getNumericCellValue();
                excelIds.add(id);
            }
        } catch (Exception ex) {
            Logger.getLogger(HospitalDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
//		3: update column status on table appointment by idAP above
        String updateStatusSql = "update [vaccine].[dbo].[appointment] SET [status] = 'not come' where [idAppointment] = ?";
        try ( Connection conn = DBContext.getConnect()) {
            for (Integer idA : excelIds) {
                PreparedStatement stmt = conn.prepareStatement(updateStatusSql);
                stmt.setInt(1, idA);
                stmt.executeUpdate();
            }
        } catch (Exception ex) {
            Logger.getLogger(HospitalDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
//		4: select * where status = default (come) on tbl appointment => [rs] 
//		5: Store [rs] on VH and delete * on appointment where status = come.

        String selectAllCome = "Select * from [vaccine].[dbo].[appointment] where [status] = 'come'";
        String deleteOnA = "Delete from [vaccine].[dbo].[appointment] where [status] = 'come'";
        String insertOnVH = "Insert into  [vaccine].[dbo].[vaccine_history] "
                + "(idUserVH, idVaccineVH, vaccineAt, price, idHVH) Values(?, ?, ?, ?, ?)";
        try ( Connection conn = DBContext.getConnect()) {
            PreparedStatement stmt = conn.prepareStatement(selectAllCome);
            PreparedStatement stmtInsert = conn.prepareStatement(insertOnVH);
            PreparedStatement stmtDelete = conn.prepareStatement(deleteOnA);
            ResultSet rs = stmt.executeQuery();
            stmtDelete.executeUpdate();
            while (rs.next()) {
                stmtInsert.setString(1, rs.getString(2));
                stmtInsert.setInt(2, VaccineDAO.getIdVacByIdAP(rs.getInt(4)));
                stmtInsert.setDate(3, VaccineDAO.getVacTimeByIdAP(rs.getInt(4)));
                stmtInsert.setInt(4, rs.getInt(6));
                stmtInsert.setInt(5, VaccineDAO.getIdHosByIdAP(rs.getInt(4)));
                stmtInsert.executeUpdate();
            }
            System.out.println("Finish handle excel file!");
        } catch (Exception ex) {
            Logger.getLogger(HospitalDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

      public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        String sql = "select * from [user]";

        try {
            conn = new DBContext().getConnect();// mo ket noi voi sql
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5),
                        rs.getBoolean(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getInt(10));
//				System.out.println(u);
                list.add(u);
            }
        } catch (Exception e) {
        }
        return list;
    }
       public List<Hospital> getAllHospital() {
        List<Hospital> list = new ArrayList<>();
        String query = "select * from hospital";
        try {
            conn = new DBContext().getConnect();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Hospital(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getString(3),
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void insertHospital(String name, String address, String email, String hotline, String username,
            String password) {
        String query = "INSERT INTO hospital " + "(name, address, email, hotline, username, password)\n"
                + "VALUES (?,?,?,?,?,?);";
        try {
            conn = new DBContext().getConnect();// mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, address);
            ps.setString(3, email);
            ps.setString(4, hotline);
            ps.setString(5, username);
            ps.setString(6, password);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int updateHospital(int id, String name, String address, String email, String hotline) {
        String query = "UPDATE hospital \n"
                + "               SET name =  ?, address =  ?, email =  ?,\n"
                + "               hotline =  ?\n"
                + "              WHERE idH = ?";
        try {
            conn = new DBContext().getConnect();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, address);
            ps.setString(3, email);
            ps.setString(4, hotline);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (Exception e) {
            return 0;
        }
        return 1;
    }
    
    public static void updateHospital(int id, String name, String address, String email, String hotline,
            String username, String password) {
        String query = "UPDATE hospital " + "SET name = ?, address = ?, email = ?, "
                + "hotline = ?, username = ?, password = ? " + "WHERE idH = ?";
        try {
            conn = new DBContext().getConnect();// mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, address);
            ps.setString(3, email);
            ps.setString(4, hotline);
            ps.setString(5, username);
            ps.setString(6, password);
            ps.setInt(7, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public int updateHospital(String password, String email) throws Exception {
        String pass = en.encryptCCCDTo(password);
        try {
            String sql = "UPDATE [dbo].[hospital]\n"
                    + "   SET [password] = ?\n"
                    + "WHERE [hospital].email =?";
            conn = new DBContext().getConnect();
            PreparedStatement stm = conn.prepareCall(sql);
            stm.setString(1, pass);
            stm.setString(2, email);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
        return 1;
    }

    public static void deleteHospital(String dhid) {
        String query = "DELETE FROM hospital WHERE idH = ?";
        try {
            conn = new DBContext().getConnect();// mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, dhid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static Hospital findHospital(String email, String password) {

        try {
            Encrypt en = new Encrypt();
            String sql = "select * from [hospital] where [email] = ? and [password] = ?";
            conn = new DBContext().getConnect();
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, en.encryptCCCDTo(password));
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Hospital s = new Hospital();
                s.setIdBV(rs.getInt("idH"));
                s.setName(rs.getString("name"));
                s.setAddress(rs.getString("address"));
                s.setEmail(rs.getString("email"));
                s.setHotline(rs.getString("hotline"));
                s.setUsername(rs.getString("username"));
                s.setPassword(rs.getString("password"));
                return s;
            }
        } catch (Exception e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public Hospital findHospital(String email) {
        try {
            Encrypt en = new Encrypt();
            String sql = "select * from [hospital] where [email] = ?";
            conn = new DBContext().getConnect();
            PreparedStatement stm = conn.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Hospital s = new Hospital();
                s.setIdBV(rs.getInt("idH"));
                s.setName(rs.getString("name"));
                s.setAddress(rs.getString("address"));
                s.setEmail(rs.getString("email"));
                s.setHotline(rs.getString("hotline"));
                s.setUsername(rs.getString("username"));
                s.setPassword(rs.getString("password"));
                return s;
            }
        } catch (Exception e) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;

    }


public static int getIdHByName(String name) {
        String query = "SELECT idH FROM hospital WHERE name = ?";
        try {
            conn = new DBContext().getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("idH");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } 
        return -1;
    }
	
    public static void main(String[] args) {
//		File fi = new File("C:\\vaccine\\23-05-2023-uncome.xls");
//		String date = fi.getName().substring(0, 10);


//		
//		 Hospital t  = HospitalDAO.findHospital("Thang Long");
//		
//		System.out.println(HospitalDAO.getAllHospital());


HospitalDAO dao = new HospitalDAO();

            
        List<Hospital> list = dao.getAllHospital();
        for (Hospital o : list ) {
            System.out.println("\n"+o);
        }
	}
    
       




}
