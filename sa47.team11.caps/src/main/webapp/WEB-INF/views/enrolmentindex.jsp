<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="search-container">
    <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit">Search</button>
    </form>
  </div>
  <br/>
  <br/>


<a href="${pageContext.request.contextPath}/enrol/create">Add Enrolment</a>
<br/>
<br/>
  <br/>
  
<c:if test="${fn:length(enrolmt) gt 0 }">
	<table class="table table-striped">
	  		<thead>
				<tr class="listHeading">
				<th>#</th>
					<th><spring:message code="User ID" /></th>
					<th><spring:message code="First Middle Name" /></th>
					<th><spring:message code="Last Name" /></th>
					<th><spring:message code="Course Name" /></th>
					<th><spring:message code="Status of Registration" /></th>
					<th><spring:message code="Date of Registration" /></th>
					<th><spring:message code="caption.edit" /></th>
				</tr>
			</thead>
			
			
	  <tbody>
		 <c:forEach var="studentEnrolments" items="${enrolmt}" varStatus="idx">
			<tr>
			<td>${idx.index+1}</td>
		      <td scope="row">${studentEnrolments.getUser().getUserid()}</td>
		      <td>${studentEnrolments.getUser().getFirstMidName()}</td>
		      <td>${studentEnrolments.getUser().getLastName()}</td> 
		      <td scope="row">${studentEnrolments.getCourse().getCourseName()}</td>
		      <td>${studentEnrolments.statusEnroll}</td>
		      <td><fmt:formatDate pattern = "dd MMM yyyy" value="${studentEnrolments.dateRegistered }"/></td>
		    
		     
		     <td align = "center">
		      <a href="${pageContext.request.contextPath}/enrol/edit/${studentEnrolments.getUser().getUserid()}/${studentEnrolments.getCourse().getCourseid()}.html">
						<spring:message	code="Edit" /></a>
				</td>

		    </tr>
			</c:forEach> 
			</tbody>
			
	</table>
</c:if>