<%@ include file="/init.jsp" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet"%>
<%@ page import="com.adibrata.model.docInquiry"  %>
<%@ page import="com.liferay.portal.theme.ThemeDisplay" %>
<%@ page import="com.liferay.portlet.documentlibrary.util.PDFProcessorUtil"%>
<%@ page import="com.liferay.portlet.documentlibrary.util.DLUtil"%>
<%@ page import="com.liferay.portal.kernel.repository.model.FileVersion"%>
<%@ page import="com.liferay.portal.kernel.repository.model.FileEntry"%>
<%@ page import="com.liferay.portlet.documentlibrary.service.DLAppLocalServiceUtil"%>
<%@ page import="com.liferay.portlet.documentlibrary.service.DLAppHelperLocalServiceUtil"%>
<%@ page import="com.liferay.portal.kernel.portlet.LiferayPortletURL"%>
<%@ page import="com.liferay.portlet.PortletURLFactoryUtil"%>
<%@ page import="com.liferay.portal.kernel.portlet.LiferayWindowState"%>
<%@ page import='com.liferay.portal.theme.PortletDisplay' %>
<%@ page import='com.liferay.portal.theme.ThemeDisplay' %>
<%@ page import='com.liferay.portal.kernel.util.WebKeys'%>
<%@ page import="javax.portlet.PortletRequest"%>
<%@ page import="javax.portlet.PortletURL"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>
<%
ThemeDisplay themeDisplay = new ThemeDisplay();
LiferayPortletURL myRenderURL=PortletURLFactoryUtil.create(renderRequest, "20", themeDisplay.getPlid(), "0");
myRenderURL.setWindowState(LiferayWindowState.MINIMIZED);
myRenderURL.setParameter("name", "meera");
%>

<liferay-portlet:actionURL portletName="20" var="actionURL" plid="<%=themeDisplay.getPlid()%>"  varImpl="openPortletURL" windowState="<%=LiferayWindowState.MAXIMIZED.toString()%>">
<liferay-portlet:param name="name" value="meera"/>
</liferay-portlet:actionURL>

<portlet:defineObjects />
<html>
<head>
<link href="<%=request.getContextPath()%>/css/datatable.css" media="all" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath()%>/js/datatable-editable.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery-ui.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/raphael.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/selectivizr-min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.mousewheel.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.vmap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.vmap.sampledata.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.vmap.world.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/fullcalendar.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/gcal.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.easy-pie-chart.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/excanvas.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.isotope.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/isotope_extras.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/modernizr.custom.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/select2.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/styleswitcher.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/wysiwyg.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/summernote.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.inputmask.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.validate.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-fileupload.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-datepicker.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-timepicker.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-colorpicker.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/typeahead.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/daterange-picker.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/date.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/morris.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/skycons.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/fitvids.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/jquery.sparkline.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/main.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/respond.js" type="text/javascript"></script>
</head>
<body>
<h2>Document Inquiry</h2>
<s:if test="hasActionMessages()">
   <div class="message">
      <s:actionmessage/>
   </div>
</s:if>
<s:if test="hasFieldErrors()">
   <div class="errors">
      <s:fielderror />
   </div>
</s:if>

<s:if test="userList.size() > 0">
	<table class="table table-bordered table-striped" border="1" width="auto" >
		<tr>
			<th>Title</th>
			<th>Description</th>
			<th>Create Date</th>
			<th>Modified</th>
			<th>Version</th>
			<th>User by</th>
			<th>Read Count</th>
			<th>Format</th>
		</tr>	
		<s:iterator value="userList">
			<tr>
		    <td><a href="<%= actionURL%>"><s:property value="title" /></a></td>
			  <td><s:property value="Description" /></td>
				<td><s:property value="CreateDate" /></td>
				   <td><s:property value="ModifiedDate" /></td>
				     <td><s:property value="version" /></td>
				     <td><s:property value="UserName" /></td>				
			         <td><s:property value="ReadCount" /></td>
			        <td><s:property value="extension" /></td>
			      </tr>		
		</s:iterator>
	</table>
</s:if>
</body>
</html>

