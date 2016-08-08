package com.wmusial.data;

import com.wmusial.model.User;

import java.util.ArrayList;
import java.util.List;

public class UserDatabase {

    private static List<User> users = new ArrayList<>();

    public static void addUser (User user) {
        users.add(user);
    }

    public static List<User> getUsers() {
        return users;
    }
}
