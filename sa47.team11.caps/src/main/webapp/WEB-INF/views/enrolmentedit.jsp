<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

    
<div class="container">
  <form:form class="form-horizontal" method="POST" modelAttribute="studentenrolment"
  	action="${pageContext.request.contextPath}/enrol/edit/${user.userid}.html" >
  	

  
    <div class="form-group">
      <label class="control-label col-sm-2" for="ID">
      	<spring:message code="fieldLabel.user." />
      </label>
      
      
      <div class="col-sm-4">
     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
     <form:input path="studentenrolment.getCourse().getCourseName()" class="form-control" placeholder="course name" />
      </div>
    </div>
    
    
        <div class="form-group">
      <label class="control-label col-sm-2" for="dateRegistered">
      	Registration Date
      </label>
      <div class="col-sm-4">
     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
     <form:input path="dateRegistered" class="form-control" placeholder="date Registered" />
      </div>
    </div>
    
    
    <div class="form-group ">
      <label class="control-label col-sm-2" for="statusEnroll">
		Status of Enrolment
	</label>
      <div class="col-sm-4 md-form amber-textarea active-amber-textarea">          
       <!--  <input type="password" class="form-control" id="password" placeholder="Enter password" name="password"> -->
      	<form:textarea path="statusEnroll" class="md-textarea form-control z-depth-1" row="10"></form:textarea>
      </div>
    </div>

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
       <!--  <button type="submit" class="btn btn-default">Submit</button> -->
       <form:button name="submit" class="btn btn-default" type="submit">Update</form:button>
      </div>
    </div>
  

  </form:form>

</div>