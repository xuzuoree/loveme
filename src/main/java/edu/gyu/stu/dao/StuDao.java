package edu.gyu.stu.dao;
import edu.gyu.stu.model.Student;
import edu.gyu.stu.util.ConnectPool;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class StuDao {
    private static Logger logger = Logger.getLogger(StuDao.class.getName());
    private ConnectPool pool;
    public StuDao(ConnectPool pool) {
        this.pool = pool;
    }

    public List<Student> getAllStu() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Student> stus = new ArrayList<>();
        try {
            conn = pool.getConnection();
            String sql = "select * from tb_stu order by id";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("Id"));
                student.setName(rs.getString("name"));
                student.setGender(rs.getString("gender"));
                student.setBirthday(rs.getDate("birthday"));
                student.setMajor(rs.getString("major"));
                stus.add(student);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            pool.releaseConnction(conn);
        }
        return stus;
    }
}