<%-- 
    Document   : home
    Created on : Jun 16, 2015, 1:50:06 PM
    Author     : forsell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>


<spring:form action="${pageContext.request.contextPath}/admin/schedule/save" method="post" commandName="Schedule">
            <div class="form-group">
                <label for="applicantId">Applicant Id</label>
                
                <spring:select path="applicantId" class="form-control">
                    <spring:option value="0">Select Applicant</spring:option>
                    <c:forEach var="app" items="${applicants}">
                        <spring:option value="${app.getApplicantId()}">${app.getFirstName()} ${app.getLastName()}
                    </spring:option>
                    </c:forEach>
                </spring:select>
            </div> 
            <div class="form-group">
                <label for="scheduleDate">Schedule Date</label>
                <spring:input path="scheduleDate" type="date" class="form-control" placeholder="Enter Schedule Date "/>
            </div>
            <div class="form-group">
                <label for="scheduleTime">Schedule Time</label>
                <spring:input path="scheduleTime" type="time" class="form-control" placeholder="Enter Schedule Time"/>
            </div>
            <div class="form-group">
                <label for="interviewer">Interviewer</label>
                
                <spring:select path="interviewer" class="form-control">
                    <spring:option value="0" >Select Interviewer</spring:option>
                    <c:forEach var="role" items="${roles}">
                        <spring:option value="${role.getRoleId()}">${role.getRoleName()} 
                    </spring:option>
                    </c:forEach>
                </spring:select>
            </div> 
            <div class="form-group">
                <label for="messageForApplicant">Message For Applicant</label>
                <spring:input path="messageForApplicant" type="text" class="form-control" placeholder="Enter Message For Applicant"/>
            </div>
            <div class="form-group">
                <label for="messageForInterviewer">Message For Interviewer</label>
                <spring:input path="messageForInterviewer" type="text" class="form-control" placeholder="Enter Message For Interviewer"/>
            </div>
            <div class="form-group">
                <label for="scheduleStatus">Schedule Status</label>
                <spring:input path="scheduleStatus"  class="form-control" placeholder="Enter Schedule Status"/>
            </div>   
            <div class="form-group">
                <label for="remarks">Remarks</label>
                <spring:input path="remarks" class="form-control" placeholder="Enter Remarks"/>
            </div>
            <div class="box-footer">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </spring:form>
