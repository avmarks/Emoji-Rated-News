package edu.matc.controller;

import edu.matc.entity.Food;
import edu.matc.entity.User;
import edu.matc.persistence.GenericDAO;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * A simple servlet to add food item
 */

@WebServlet(

        name = "addFood",
        urlPatterns = {"/addFood"}
)

public class AddFood extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        GenericDAO userDao = new GenericDAO(User.class);

        GenericDAO foodDao = new GenericDAO(Food.class);

        HttpSession session = req.getSession();

        String foodName = req.getParameter("foodName");

        double foodCalorie = Double.valueOf(req.getParameter("foodCalorie"));


        User userFood;
        List<User> userList = userDao.getUserID(req.getRemoteUser());

        int userId = userList.get(0).getId();

        userFood = (User)userDao.getById(userId);

        Food newFood = new Food(foodName, foodCalorie, userFood );

        String confirmationMessage = "Item " + foodName + " with caloric value of " + foodCalorie +  " was successfully added!";


        if(!foodName.isEmpty()&&(foodCalorie != 0)) {

            foodDao.insert(newFood);
            session.setAttribute("Message", " " + confirmationMessage);

        } else {

            session.setAttribute("Message", "Both fields are required.");
        }

        resp.sendRedirect("add_food_success.jsp");

    }
}
