<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  
  <script src="http://cdn.alloyui.com/3.0.1/aui/aui-min.js"></script>
<link href="http://cdn.alloyui.com/3.0.1/aui-css/css/bootstrap.min.css" rel="stylesheet"></link>


</head>
<body>
<h1>Account Creation</h1>
<br> 
<br> 
<br> 

<portlet:actionURL name="create" var="createURL"></portlet:actionURL>

<aui:form action="<%= createURL %>" name="<portlet:namespace />fm">

	<aui:fieldset>

            
            <p>First Name:</p> 
            <input name="f_Name" type="text">
            <p>Last Name:</p> 
            <input name="l_Name" type="text">
            <p>Email:</p> 
            <input name="email" type="text">
            <p>Password:</p> 
            <input name="password" type="text">
            <p>Confirm Password:</p> 
            <input name="password" type="text">
          
     </aui:fieldset>
         
    
    
     <aui:button-row>
     
      

         <portlet:renderURL var="createURL">
        	<portlet:param name="mvcPath" value="/html/login/admin.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button  onClick="<%= createURL.toString() %>" value="OK"></aui:button>
    	 
    	 <portlet:renderURL var="createURL">
        	<portlet:param name="mvcPath" value="/html/login/view.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= createURL.toString() %>" value="Cancle"></aui:button>
         
           
     </aui:button-row>
        
</aui:form>

</body>
</html>

