package edu.gyu.stu.dao;

import edu.gyu.stu.model.User;
import edu.gyu.stu.util.DBHelper;
import edu.gyu.stu.util.Info;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

public class UserDao {
    private static Logger logger = Logger.getLogger("UserDao");

    public boolean login(User user) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DBHelper.getConnection();
            String sql = "select * from tb_user where username=? and password=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            rs = stmt.executeQuery();
            if (rs.next()) {
                logger.info(user.getUsername() + "登录成功！！！");
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public Info addUser(User user) {
        Connection connection = null;
        PreparedStatement statement=null;

        String querysql="select * from tb_user where username=?";
        Info info=new Info();
        String msg = "恭喜" + user.getUsername() + "注册成功！";
        try {
            connection=DBHelper.getConnection();

            statement = connection.prepareStatement(querysql);
            statement.setString(1,user.getUsername());
            ResultSet rs=statement.executeQuery();
            if (rs.next()) {
                msg = "早起的鸟儿有虫吃，用户名被占用了！";
                info.setMsg(msg);
                info.setSuccess(false);
                return info;
            }else {
                String sql = "insert into tb_user (username,password) values(?,?)";
                int r = 0;
                logger.info( user.toString());
                try {
                    statement = connection.prepareStatement(sql);
                    statement.setString(1, user.getUsername());
                    statement.setString(2, user.getPassword());
                    r = statement.executeUpdate();
                    if (r == 1) {
                        info.setMsg(msg);
                        info.setSuccess(true);

                    }
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                    msg = "悲催了，注册不成功！";
                    info.setSuccess(false);
                }


                return info;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();

        } catch (Exception e) {
            e.printStackTrace();
        }
        info.setSuccess(false);
        return info;
    }



}

