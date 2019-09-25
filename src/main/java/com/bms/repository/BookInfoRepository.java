package com.bms.repository;

import com.bms.dataobject.Book;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BookInfoRepository extends JpaRepository<Book, Integer> {

    List<Book> findByBookStatus(Integer bookStatus);
}
