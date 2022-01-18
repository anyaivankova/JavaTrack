package servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet("/calcServlet")
public class CalcServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String startAddress = req.getParameter("start_address");
        String finalAddress = req.getParameter("final_address");
        Integer size = Integer.valueOf(req.getParameter("size"));
        Integer weight = Integer.valueOf(req.getParameter("weight"));
        int distance = imitateDistanceCalculation(startAddress, finalAddress);

        req.setAttribute("distance", distance);
        double cost = size * 0.1 * weight * 0.1 * distance;
        req.setAttribute("cost", cost);

        getServletContext().getRequestDispatcher("home.jsp").forward(req, resp);
    }

    private int imitateDistanceCalculation(String startAddress, String finalAddress) {
        Random random = new Random();
        return random.nextInt(9000) + 1000;
    }


}
