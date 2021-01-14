package edu.gyu.stu.controller;

import edu.gyu.stu.dao.StuDao;
import edu.gyu.stu.util.ConnectPool;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet(name = "StuServlet",urlPatterns = {"/stu"})
public class StuServlet extends HttpServlet {
    private static Logger logger = Logger.getLogger(StuServlet.class.getName());
    private ConnectPool connectPool;
    private StuDao stuDao;


    @Override
    public void init() throws ServletException {
        super.init();
        connectPool = (ConnectPool) getServletContext().getAttribute("pool");
        stuDao = new StuDao(connectPool);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StuDao dao = new StuDao(connectPool);
        request.setAttribute("stus", dao.getAllStu());
        request.getRequestDispatcher("admin/student.jsp").forward(request, response);
    }
}