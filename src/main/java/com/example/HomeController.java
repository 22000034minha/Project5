package com.example;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String index(){
        System.out.println("request index");

        return "index";
    }

    @RequestMapping("classlist")
    public String classList(Model model){
        model.addAttribute("title", "2학년 2학기 교과목 리스트");
        List<String> list = new ArrayList<>();
        list.add("실전프로젝트1");
        list.add("컴퓨터 비전");
        model.addAttribute("classList", list);

        return "board/list";
    }

}
