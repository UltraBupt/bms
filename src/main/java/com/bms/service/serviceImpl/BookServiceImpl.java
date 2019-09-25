package com.bms.service.serviceImpl;

import com.bms.dataobject.Book;
import com.bms.repository.BookInfoRepository;
import com.bms.service.BookInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookInfoService {

    @Autowired
    private BookInfoRepository bookInfoRepository;

    @Override
    public Book findOne(Integer book_id) {
        return bookInfoRepository.findOne(book_id);
    }

    @Override
    public Page<Book> findAll(Pageable pageable) {
        return bookInfoRepository.findAll(pageable);
    }

    @Override
    public Book save(Book book) {
        return bookInfoRepository.save(book);
    }
}
