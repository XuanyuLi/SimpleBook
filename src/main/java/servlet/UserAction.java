package servlet;

import org.jasypt.util.password.StrongPasswordEncryptor;
import util.Db;
import util.Error;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by lixuanyu
 * on 2017/6/27.
 */
@WebServlet(urlPatterns = "/user")
public class UserAction extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if ("signUp".equals(action)) {
            signUp(req, resp);
            return;
        }
        Error.showError(req,resp);
    }
    private void signUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nick = req.getParameter("nick").trim();
        String mobile = req.getParameter("mobile").trim();
        StrongPasswordEncryptor encryptor = new StrongPasswordEncryptor();
        String password = encryptor.encryptPassword(req.getParameter("password"));
        Connection connection = Db.getConnection();
        PreparedStatement preparedStatement = null;
        String sql = "INSERT INTO db_jianshu.user (nick, mobile, password, lastIp) VALUES (?,?,?,?)";
        try {
            if (connection != null) {
                preparedStatement = connection.prepareStatement(sql);
            } else {
                Error.showError(req,resp);
                return;
            }
            preparedStatement.setString(1,nick);
            preparedStatement.setString(2,mobile);
            preparedStatement.setString(3,password);
            preparedStatement.setString(4,req.getRemoteAddr());
            preparedStatement.executeUpdate();
            resp.sendRedirect("login.jsp");
            System.out.println("123");
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            Db.close(null,preparedStatement,connection);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
