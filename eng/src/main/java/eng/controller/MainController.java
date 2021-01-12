package eng.controller;

import eng.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
    private final UserService userService;

    @Autowired
    public MainController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/main")
    public ModelAndView createMainPage(ModelAndView modelAndView) {
        modelAndView.setViewName("main");
        return modelAndView;
    }
}
