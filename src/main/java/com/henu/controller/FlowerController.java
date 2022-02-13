package com.henu.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.henu.domain.Flower;
import com.henu.service.FlowerService;
import com.henu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import java.util.List;

@Controller
//   管理员简单的增删改查
@RequestMapping("/flower")
public class FlowerController extends HttpServlet {

    @Autowired
    private FlowerService flowerService;
    //配置注册地址

    @RequestMapping("list")
    @ResponseBody
    public List<Flower> flowers() {
        List<Flower> flowers = flowerService.showAllFlowers();
        return flowers;
    }

    //    实现分页操作 传入两个参数 一个是 当前的页数 分页的条数
    @RequestMapping("findAll")
    @ResponseBody
    public IPage<Flower> findAllFlowers(int current, int size) {
        Page<Flower> page = new Page<Flower>(current, size);
        IPage<Flower> data = flowerService.selectPage(page);
        return data;
    }

    @RequestMapping("save")
    public ModelAndView saveFlower(Flower flower) {
        System.out.println(flower);
        if (flower != null)
            flowerService.insertFlower(flower);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/pages/flower-list.jsp");
        return modelAndView;
    }

    @RequestMapping("del")
    @ResponseBody
    public String delBook(String id) {
        flowerService.delFlower(Integer.valueOf(id)); //可能会抛出异常
        return "OK";
    }

    @RequestMapping("update")

    public String updateFlower(Flower flower) {
        flowerService.updateFlower(flower);
        return "/pages/flower-list.jsp";
    }

    @RequestMapping("queryById")
    @ResponseBody
    public Flower queryById(String id) {
        Flower flower = flowerService.queryFlowerById(Integer.valueOf(id)); //可能会抛出异常
        return flower;
    }


    @RequestMapping("queryByFlowerId")
    public ModelAndView queryByFlowerId(String id) {
        Flower flower = flowerService.queryFlowerById(Integer.valueOf(id));

        ModelAndView modelAndView = new ModelAndView();
//       将查询到的model传到下个页面
        modelAndView.addObject("flower", flower);
        modelAndView.setViewName("/pages/flower-update.jsp");
        return modelAndView;
    }

}
