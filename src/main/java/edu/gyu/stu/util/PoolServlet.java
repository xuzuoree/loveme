package edu.gyu.stu.util;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

@WebServlet(name = "PoolServlet",loadOnStartup = 1,urlPatterns = {"/poolServlet"})

public class PoolServlet extends HttpServlet {
    private static Logger logger = Logger.getLogger(PoolServlet.class.getName());
    private ConnectPool pool;

    @Override
    public void init() throws ServletException {
        super.init();
        pool = new ConnectPool(10);
        logger.info("PoolServlet 初始化连接池成功！");
        getServletContext().setAttribute("pool",pool);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
