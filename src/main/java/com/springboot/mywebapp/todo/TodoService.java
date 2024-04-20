package com.springboot.mywebapp.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<>();
    static{
        todos.add(new Todo(1, "eleri", "Learn Spring", LocalDate.now().plusMonths(1), false));
                todos.add(new Todo(1, "eleri", "Learn Angular", LocalDate.now().plusMonths(3), false));
                todos.add(new Todo(1, "eleri", "Learn Spring Security", LocalDate.now().plusMonths(2), false));
    }

    public List<Todo> findByUsername(String username) {
        return todos;
    }
}
