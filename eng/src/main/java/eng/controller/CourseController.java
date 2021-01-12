package eng.controller;

import eng.entity.Courses;
import eng.entity.User;
import eng.service.CourseService;
import eng.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.security.Principal;
import java.util.List;

@Controller
public class CourseController {
    private final CourseService courseService;
    private final UserService userService;

    public CourseController(CourseService courseService, UserService userService) {
        this.courseService = courseService;
        this.userService = userService;
    }

    @GetMapping("/courses")
    public ModelAndView getAllCoursesByUser(ModelAndView modelAndView, Principal principal) {
        modelAndView.setViewName("courses");
        String email = principal.getName();
        User user = userService.findUserByEmail(email);
        Courses course = user.getCourseId();
        modelAndView.getModelMap().addAttribute("course", course);
        return modelAndView;
    }

    @GetMapping("/ourCourses")
    public ModelAndView getAllEnableCourses(ModelAndView modelAndView) {
        modelAndView.setViewName("ourCourses");
        List<Courses> list = courseService.findAllCourses();
        modelAndView.getModelMap().addAttribute("allCourses", list);
        return modelAndView;
    }

    @GetMapping("/payment/{id}")
    public ModelAndView getPaymentSystem(ModelAndView modelAndView, @PathVariable Long id) {
        Courses courses = courseService.findCourseById(id).get();
        modelAndView.setViewName("payment");
        modelAndView.getModelMap().addAttribute("course", courses);
        return modelAndView;
    }

}
