<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>

 /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 100%; width :20%;}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 30px;
   
      background-color: #fcce99;
      height: 100%;
      width :15%;
      position:fixed; 
      float:left;
    }
    
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
   
        
   
        width :17%;
        position:fixed; 
      }
      .row.content {height:auto; width :20%;} 
    }
    ul.sider {
        list-style: none;
         padding-left:10px;
        font-weight: bold;
    }
    ul.sider li{
    padding:10px;
    }
ul.sider li:hover{
      color: #f4511e !important;
      background-color: #fff !important;
  }


  </style>



    <div class="sidenav">
  
      <ul class="ul sider">
      	<li><a href="http://localhost:8080/board/notice" style="color:#f4511e; font-size:12pt;text-decoration: none;">공지사항</a></li>
      	
      	<li><a href="http://localhost:8080/board/qna" style="color:#f4511e; font-size:12pt;text-decoration: none;">QnA</a></li>
      
      	<li><a href="http://localhost:8080/board/free" style="color:#f4511e; font-size:11pt;text-decoration: none;">자유게시판</a></li>
      </ul>


      </div>
      



