<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>


<aui:button-row>

         <portlet:renderURL var="loginURL">
        	<portlet:param name="mvcPath" value="/html/login/view.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= loginURL.toString() %>" value="Edit"></aui:button>
         
</aui:button-row>

<aui:button-row>

         <portlet:renderURL var="loginURL">
        	<portlet:param name="mvcPath" value="/html/login/crleague.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= loginURL.toString() %>" value="Create"></aui:button>
         
</aui:button-row>


<aui:button-row>

         <portlet:renderURL var="loginURL">
        	<portlet:param name="mvcPath" value="/html/login/view.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= loginURL.toString() %>" value="Cancle"></aui:button>
         
           
     </aui:button-row>
     