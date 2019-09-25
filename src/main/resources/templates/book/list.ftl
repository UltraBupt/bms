
<html>
<head>
    <meta charset="utf-8">
    <title>图书列表</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/bms/css/style.css"/>
</head>

<body>
<div id="wrapper" class="toggled">
    <#include "common/nav.ftl">
    <div id="page-content-wrapper">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <th>图书编号</th>
                            <th>书名</th>
                            <th>封面照片</th>
                            <th>单价</th>
                            <th>介绍</th>
                            <th>购买人</th>
                            <th>图书状态</th>
                            <th>现存放位置</th>
                            <th>借阅次数</th>
                            <th>购买时间</th>
                            <th colspan="2">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list book.content as bookContent>
                            <tr>
                                <td>${bookContent.bookId}</td>
                                <td>${bookContent.bookName}</td>
                                <td></td>
                                <td>${bookContent.bookAmount}</td>
                                <td>${bookContent.bookDescription}</td>
                                <td>${bookContent.buyerId}</td>
                                <#if bookContent.bookStatus == 0>
                                    <td><span style="color: greenyellow">可借</span></td>
                                <#elseif bookContent.bookStatus == 1>
                                    <td><span style="color: red">已借出</span></td>
                                </#if>
                                <td>${bookContent.nowLocation}</td>
                                <td>${bookContent.borrowTimes}</td>
                                <td>${bookContent.buyTime}</td>
                                <td><span style="color: deepskyblue">编辑</span></td>
                                <td><span style="color: deepskyblue">上传照片</span></td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
                    <ul class="pagination">
                        <#if currentPage lte 1>
                            <li class="disabled">
                                <a href="#">上一页</a>
                            </li>
                        <#else>
                            <li class=""><a href="/bms/book/list?page=${currentPage-1}&size=2">上一页</a></li>
                        </#if>
                        <#list 1..book.getTotalPages() as index>
                            <#if currentPage == index>
                                <li class="disabled"><a href="#">${index}</a></li>
                            <#else>
                                <li class=""><a href="/bms/book/list?page=${index}&size=2">${index}</a></li>
                            </#if>
                        </#list>
                        <#if currentPage gte book.getTotalPages()>
                            <li class="disabled">
                                <a href="#">下一页</a>
                            </li>
                        <#else>
                            <li class=""><a href="/bms/book/list?page=${currentPage+1}&size=2">下一页</a></li>
                        </#if>
                    </ul>
                    <#--                        <div class="progress progress-striped active">-->
                    <#--                            <div class="progress-bar progress-success">-->
                    <#--                            </div>-->
                    <#--                        </div>-->
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>