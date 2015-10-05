<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>


<portlet:actionURL name="create" var="createURL"></portlet:actionURL>

<aui:form action="<%= createURL %>" name="<portlet:namespace />fm">

	<aui:fieldset>

            <aui:input name="">First Name</aui:input>
          
            <aui:input name=""> Last Name</aui:input>
            <aui:input name=""> Email</aui:input>
            <aui:input name=""> Password</aui:input>
            <aui:input name="">Confirm Password</aui:input>
            

     </aui:fieldset>
         
     <aui:button-row>

         <portlet:renderURL var="loginURL">
        	<portlet:param name="mvcPath" value="/html/login/view.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= loginURL.toString() %>" value="Cancle"></aui:button>
         
           
     </aui:button-row>
     
     
     <aui:button-row>

         <portlet:renderURL var="loginURL">
        	<portlet:param name="mvcPath" value="/html/login/admin.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= loginURL.toString() %>" value="OK"></aui:button>
         
           
     </aui:button-row>
        
</aui:form>



