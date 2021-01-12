package eng.controller;

import eng.dto.UserDTO;
import eng.entity.*;
import eng.service.CourseService;
import eng.service.TaskService;
import eng.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.List;

@Controller
public class CabinetController {
    private final UserService userService;
    private final TaskService taskService;

    public CabinetController(UserService userService, TaskService taskService) {
        this.userService = userService;
        this.taskService = taskService;
    }

    @GetMapping("/cabinet")
    public ModelAndView getCabinetPage(ModelAndView modelAndView, Principal principal) {
        modelAndView.setViewName("cabinet");
        String email = principal.getName();
        UserDTO userDTO = userService.findByEmail(email);
        User user = userService.findUserByEmail(email);
        modelAndView.getModelMap().addAttribute("user", userDTO);
        return modelAndView;
    }

    @GetMapping("/tasks")
    public ModelAndView getAllCoursesByUser(ModelAndView modelAndView, Principal principal) {
        modelAndView.setViewName("tasks");
        String email = principal.getName();
        User user = userService.findUserByEmail(email);
        List<Tasks> listOfTasks = taskService.findAllTasksInCourse(user.getCourseId());
        modelAndView.getModelMap().addAttribute("listOfTasks", listOfTasks);
        return modelAndView;
    }
}
