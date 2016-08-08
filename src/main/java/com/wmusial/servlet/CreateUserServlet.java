package com.wmusial.servlet;

import com.wmusial.data.UserDatabase;
import com.wmusial.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user-create")
public class CreateUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/create-user-form.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // odebrania danych z formularza, ktory wypelni uzytkownik
        String firstName = req.getParameter("imie");
        String lastName = req.getParameter("nazwisko");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String training = req.getParameter("kurs");
        boolean certificate = Boolean.parseBoolean(req.getParameter("certyfikat"));

        // stworzenie obiektow
        User user = new User(firstName, lastName, email, password, training, certificate);

        // dodaje do "bazy"
        UserDatabase.addUser(user);

        // przekierowanie do tabeli (listy uzytkownikow)
        resp.sendRedirect("/users");
    }
}
