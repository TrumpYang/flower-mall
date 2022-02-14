package com.henu.controller;


import com.henu.domain.Flower;
import com.henu.domain.User;
import com.henu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

@SessionAttributes(value = "user",types = User.class)

@Controller
@RequestMapping("/user")
public class UserController extends HttpServlet {
    @Autowired
    private UserService userService;

    //配置注册地址
    @RequestMapping("/register")
    public ModelAndView resister(User user) {
        System.out.println(user);
        Boolean flag = userService.register(user);
        ModelAndView modelAndView = new ModelAndView();
        if (flag) {
            modelAndView.addObject("user");
            modelAndView.setViewName("redirect:/user_page/index.jsp");
        }
        else {
//            将用户名字存在session
            modelAndView.addObject("userName",user.getUserName());
            modelAndView.setViewName("/user_page/login.jsp");
            modelAndView.addObject("reg_msg", "用户名存在，注册失败");
        }
        return modelAndView;
    }

    //配置 用户登录 地址
    @RequestMapping("/userLogin")
    public ModelAndView userLogin(String username, String password, HttpSession session) {
        System.out.println(username);
        System.out.println(password);
        //ModelAndView 模型和视图
        ModelAndView modelAndView = new ModelAndView();
        //封装对象，放在ModelAndView中，作为Model
        if (userService.login(username, password)) {
            //登录成功 返回首页
            session.setAttribute("userName",username);
            modelAndView.setViewName("redirect:/user_page/index.jsp");
        } else {
            //登录失败 继续登录 账号密码错误  把用户名也返回为用户
            modelAndView.setViewName("/user_page/login.jsp");
            modelAndView.addObject("username", username);
            modelAndView.addObject("msg", "账号或密码错误");
        }
        return modelAndView;
    }


    //配置 admin登录 地址
    @RequestMapping("/admin")
    public ModelAndView adminLogin(String username, String password) {

        //ModelAndView 模型和视图
        ModelAndView modelAndView = new ModelAndView();
        //封装对象，放在ModelAndView中，作为Model
        if (username.equals("admin") && password.equals("123456")) {
            //登录成功 返回首页
            modelAndView.setViewName("/pages/main.jsp");
        } else {
            //登录失败 继续登录 账号密码错误  把用户名也返回为用户
            modelAndView.setViewName("/login.jsp");
            modelAndView.addObject("username", username);
            modelAndView.addObject("msg", "账号或密码错误");
        }
        return modelAndView;
    }
    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session){
        //ModelAndView 模型和视图
        ModelAndView modelAndView = new ModelAndView();
        session.removeAttribute("userName");
        modelAndView.setViewName("redirect:/user_page/login.jsp");
        return modelAndView;
    }


}
