package edu.gyu.stu.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
public class ConnectPool {
    private  LinkedList<Connection> pool = new LinkedList<Connection>();
    int size;
    public ConnectPool(int size) {
        this.size = size;
        init(); //调用init方法初始化队列
    }

    public void init(){
        //加载驱动源
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            for (int i = 0; i < size; i++) {
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/stu?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC",
                        "root","root");
                pool.addLast(conn);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
        }
    }
    public synchronized Connection getConnection(){
        while (pool.isEmpty()) {
            try {
                this.wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return  pool.removeFirst();
    }

    public  synchronized  void releaseConnction(Connection conn) {
        pool.addLast(conn);
        this.notifyAll();   //唤醒等待的进程
    }

    public static void main(String[] args) {
        ConnectPool pool = new ConnectPool(3); //初始化10个连接对象放到池子中
        for (int i = 0; i < 10; i++) {
            new WorkThread("work thread" + i, pool).start();
        }
    }
}

class  WorkThread extends  Thread {
    private ConnectPool pool;
    public WorkThread(String name, ConnectPool pool) {
        super(name);
        this.pool = pool;
    }
    public void run() {
        Connection c = pool.getConnection();//获取连接池中的连接
        System.out.println(this.getName() + ":\t 获取连接" + "连接的对象的值" + c.toString());
        try(Statement psmt = c.createStatement()) {
            Thread.sleep(10000);    //睡眠10ms容易有效果
            //执行sql语句
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        pool.releaseConnction(c);
    }
}

