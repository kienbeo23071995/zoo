package sample.food;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "UpdateFood", urlPatterns = {"/updatefood"})

public class UpdateFood extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String foodid = request.getParameter("foodID");
        FoodDAO d = new FoodDAO();
        FoodDTO a = d.getFoodByID(foodid);
        request.setAttribute("aa", a);
        List<FoodDTO> list = d.getAllFood();
        request.setAttribute("food", list);
        request.getRequestDispatcher("update_food.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String foodid = request.getParameter("foodid");
        String foodname = request.getParameter("foodname");

        FoodDAO d = new FoodDAO();

        d.updatefood(foodid, foodname);

        response.sendRedirect("foodcontroller");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
