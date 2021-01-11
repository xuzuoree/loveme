package edu.gyu.stu.controller;

import edu.gyu.stu.dao.UserDao;
import edu.gyu.stu.model.User;
import edu.gyu.stu.util.Info;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet(name = "RegServlet",urlPatterns = {"/reg"})
public class RegServlet extends HttpServlet {
    private static Logger logger = Logger.getLogger("RegServlet");

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //处理post提交的中文，避免乱码
        request.setCharacterEncoding("utf-8");
        User user=new User();
        String name = request.getParameter("username");
        String pass = request.getParameter("password");
        user.setUsername(name);
        user.setPassword(pass);
        UserDao userDao=new UserDao();
        Info info = userDao.addUser(user);
        request.setAttribute("info",info);
        request.getRequestDispatcher("reg.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
