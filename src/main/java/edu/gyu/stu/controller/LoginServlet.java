package edu.gyu.stu.controller;

import edu.gyu.stu.dao.UserDao;
import edu.gyu.stu.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

public class LoginServlet extends HttpServlet {
    private static Logger logger = Logger.getLogger("LoginServlet");

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        User user=new User();
        String name = request.getParameter("username");
        String pass = request.getParameter("password");
        user.setUsername(name);
        user.setPassword(pass);
        UserDao userDao=new UserDao();
        if (userDao.login(user)) {
            request.getSession().setAttribute("user",user);
            //请求转发
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }else {
            request.getSession().setAttribute("msg","用户名或密码错误！");
            response.sendRedirect("login.jsp");

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.info("get request!");
    }

}
