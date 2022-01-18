package servlets;

import DAO.LoginDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("login.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            LoginDAO loginDao = new LoginDAO();

            String username = req.getParameter("username");
            String password = req.getParameter("password");

            if (loginDao.validate(username, password))
            {
                HttpSession session = req.getSession();
                LoginDAO.configureSession(username, password, session);
                resp.sendRedirect("profile.jsp");
            }
            else
            {
                //HttpSession session = request.getSession();
                resp.sendRedirect("login.jsp");

            }


    }
}
