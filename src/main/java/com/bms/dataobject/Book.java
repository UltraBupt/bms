package com.bms.dataobject;

import lombok.Data;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.boot.autoconfigure.domain.EntityScan;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.util.Date;


//书籍展示
@Entity
@Data
@DynamicUpdate
public class Book {

    @Id
    @GeneratedValue
    private Integer bookId;

    private String bookName;

    private String bookPhotoUrl;

    private BigDecimal bookAmount;

    private String bookDescription;

    private Integer buyerId;

    private Integer bookStatus;

    private String nowLocation;

    private Integer borrowTimes;

    private Date createTime;

    private Date buyTime;




}
