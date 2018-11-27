package com.timshaya.springboot.web.TodoApp.controller;

import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.timshaya.springboot.web.TodoApp.model.Todo;
import com.timshaya.springboot.web.TodoApp.service.TodoService;

@Controller
@SessionAttributes("name")
public class ToDoController {
	
	@Autowired
	TodoService service;
	
	@RequestMapping(value="/list-todos", method=RequestMethod.GET)	
	public String showToDoList(ModelMap model) {
		
		String name = (String) model.get("name");
						
		model.put("todos", service.retrieveTodos(name));
		return "list-todos"; 
	}
	
	@RequestMapping(value="/add-todo", method=RequestMethod.GET)	
	public String showAddToDoPAge(ModelMap model) {	
		
		model.addAttribute("todo", new Todo(0, (String) model.get("name"), "Describe your ToDo here", new Date(), false));
		
		return "todo"; 
	}	
	
	@RequestMapping(value="/add-todo", method=RequestMethod.POST)	
	public String addToDo(ModelMap model, @Valid Todo todo, BindingResult result) {
		
		if(result.hasErrors()) {
			return "todo";
		}
		
		service.addTodo((String) model.get("name"), todo.getDesc(), new Date(), false);
		
		//model.clear();
	
		return "redirect:/list-todos";  
	}
	
	@RequestMapping(value="/delete-todo", method=RequestMethod.GET)	
	public String deleteToDo(@RequestParam int id) {
		
		service.deleteTodo(id);	
		return "redirect:/list-todos";  
	}
	
	
}
