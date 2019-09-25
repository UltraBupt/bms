package com.bms.service;

import com.bms.dataobject.Book;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface BookInfoService  {

    //查询一条记录
    Book findOne(Integer book_id);

    //查询所有记录
    Page<Book> findAll(Pageable pageable);

    //增加和更新图书
    Book save(Book book);


}
