<%-- 
    Document   : welcome
    Created on : Jun 16, 2015, 2:05:32 PM
    Author     : forsell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="http://code.jquery.com/ui/jquery-ui-git.css" rel="stylesheet"/>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="http://code.jquery.com/ui/jquery-ui-git.js"></script>
    </head>
    <body>
        <h1>Welcome to Contact List</h1>
        <c:forEach var="c" items="${contacts}">
        <li><h2><a href="javascript:void(0)" class="emp" rel="${c.getEmail()}" >${c.getFirstName()}</a></h2></li>
        </c:forEach>
        
        <div style="display:none">
            <div id="popup-dialog">
                <form action="">
                    <input type="email" name="email" id="email" />
                    <input type="text" name="schedule-date" class="datepicker"/>
                </form>
            </div>
        </div>
        
        <script>
            $(document).on("ready",function(){
               $(".emp").on("click",function(){
                   var $obj=$(this);
                   $("#email").val($obj.prop("rel"));
                   $("#popup-dialog").dialog({modal:true,title:"Contact to ",buttons:[]});
                   $(".datepicker").datepicker({changeMonth: true,changeYear: true});
               }); 
            });
            </script>
    </body>
</html>
