package com.springboot.mywebapp.todo;

import jakarta.validation.Valid;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<>();
    private static int todosCount = 0;

    static {
        todos.add(new Todo(++todosCount, "eleri", "Learn Spring", LocalDate.now().plusMonths(1), false));
        todos.add(new Todo(++todosCount, "eleri", "Learn Angular", LocalDate.now().plusMonths(3), false));
        todos.add(new Todo(++todosCount, "eleri", "Learn Spring Security", LocalDate.now().plusMonths(2), false));
    }

    public List<Todo> findByUsername(String username) {

        Predicate<? super Todo> predicate = todo -> todo.getUsername().equalsIgnoreCase(username);
        return todos.stream().filter(predicate).toList();
    }

    public void addTodo(String userName, String description, LocalDate targetDate, boolean done) {
        Todo todo = new Todo(++todosCount, userName, description, targetDate, done);
        todos.add(todo);
    }

    public void deleteById(int id) {
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        todos.removeIf(predicate);
    }

    public Todo findById(int id) {
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        Todo todo = todos.stream().filter(predicate).findFirst().get();
        return todo;
    }

    public void updateTodo(@Valid Todo todo) {
        deleteById(todo.getId());
        todos.add(todo);
    }
}
