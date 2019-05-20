<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<!--DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"-->

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Display Tag Pagination Display Tag</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <style>
            table {
                border: 1px solid #666;
                width: 80%;
                margin: 20px 0 20px 0 !important;
            }
            th,td {
                padding: 2px 4px 2px 4px !important;
                text-align: left;
                vertical-align: top;
            }
            thead tr {
                background-color: #999999;
            }
            th.sorted {
                background-color: #CCCCCC;
            }
            th a,th a:visited {
                color: black;
            }
            th a:hover {
                text-decoration: underline;
                color: black;
            }
            th.sorted a,th.sortable a {
                background-position: right;
                display: block;
                width: 100%;
            }
            tr.odd {
                background-color: #fff
            }

            tr.tableRowEven,tr.even {
                background-color: #CCCCCC
            }
            .group-1 {
                font-weight:bold;
                padding-bottom:10px;
                border-top:1px solid black;
            }
            .group-2 {
                font-style:italic;
                border-top: 1px solid black;

            }
            .grouped-table tr.even {
                background-color: #fff;
            }
            .grouped-table tr.odd {
                background-color: #fff;
            }
        </style>
    </head>

    <body>

        <display:table  pagesize="3"  requestURI=""  name="userList">
            <display:column property="name" ></display:column>
            <display:column title="insert" ><input type="text"/></display:column>  
            <display:column property="lastName"></display:column>
            <display:column property="nickName"></display:column>
            <display:column property="modernName"></display:column>
            <display:column property="section"></display:column>
            <display:column property="address"></display:column>
        </display:table>

    </body>
</html>