package com.bms.controller;

import com.bms.dataobject.Book;
import com.bms.service.BookInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("/book")
public class BookInfoController {

    @Autowired
    private BookInfoService bookInfoService;

    /**
     * 书籍列表
     *
     * @return
     */
    @GetMapping("/list")
    public ModelAndView list(@RequestParam(value = "page", defaultValue = "1") Integer page,
                             @RequestParam(value = "size", defaultValue = "4") Integer size,
                             Map<String, Object> map) {
        PageRequest pageRequest = new PageRequest(page-1,size);
        Page<Book> book = bookInfoService.findAll(pageRequest);
        map.put("book",book);
        map.put("currentPage",page);
        return new ModelAndView("book/list",map);
    }

}
