<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>
<portlet:defineObjects />

<portlet:renderURL var="viewURL">
    <portlet:param name="mvcPath" value="/html/guestbook/view.jsp"></portlet:param>
</portlet:renderURL>

<portlet:actionURL name="addEntry" var="addEntryURL"></portlet:actionURL>

<aui:form action="<%= addEntryURL %>" name="<portlet:namespace />fm">

        <aui:fieldset>

            <aui:input name="">League Name</aui:input>
            <aui:input name="">League Address</aui:input>
            <aui:input name=""> League Description</aui:input>
           

        </aui:fieldset>

      <aui:button-row>

         <portlet:renderURL var="loginURL">
        	<portlet:param name="mvcPath" value="/html/login/view.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= loginURL.toString() %>" value="Cancle"></aui:button>
             
     </aui:button-row>
     
     <aui:button-row>

         <portlet:renderURL var="loginURL">
        	<portlet:param name="mvcPath" value="/html/login/practice.jsp"></portlet:param>
    	 </portlet:renderURL>

    	 <aui:button onClick="<%= loginURL.toString() %>" value="Confirm"></aui:button>
             
     </aui:button-row>
     
     
     
</aui:form>