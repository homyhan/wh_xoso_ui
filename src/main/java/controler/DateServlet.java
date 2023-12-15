package controler;

import model.LotteryResult;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "date", value = "/date")
public class DateServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String province=request.getParameter("province");
        String date=request.getParameter("date");

        List<LotteryResult> results = getLotteryResults(province, date);

        // Set the results in the request attribute
        request.setAttribute("lotteryResults", results);

        // Forward the request to the JSP page for rendering
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }

    private List<LotteryResult> getLotteryResults(String province, String date) {
        // Implement your database query logic here
        // Use JDBC or an ORM framework like Hibernate to interact with the database

        // Return a dummy list for illustration purposes
        List<LotteryResult> dummyResults = new ArrayList<>();
        dummyResults.add(new LotteryResult("Giải Tam", 53));
        dummyResults.add(new LotteryResult("Giải Bảy", 387));
        // ...

        return dummyResults;

    }

    public void destroy() {
    }
}