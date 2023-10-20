/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.food;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 *  
 */

@WebServlet(name = "FoodController", urlPatterns = {"/foodcontroller"})
public class FoodController extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        try {
            FoodDAO foodDAO = new FoodDAO();
            List<FoodDTO> food = foodDAO.getListFood();
            

            request.setAttribute("food", food);
            
            
            request.getRequestDispatcher("food.jsp").forward(request, response);
        } catch (Exception e) {
            
            e.printStackTrace();
            
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý yêu cầu POST nếu cần
        doGet(request, response);
    }
}
