<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="openwcm.OpenWcmServlet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jsp:FAQ</title>
</head>
<body>
<%	
	openwcm.OpenWcmServlet openwcm = new openwcm.OpenWcmServlet();
	
	// In a real circumstance you'd get the username from somewhere else...here it is hardcoded.
	String username = "sysadmin";
	String datafileContentId = "CDF_FAQ_PRIMARY";
	String placeholderContentId = "FAQ_LIST_PH";


	String targetPage = "OpenWcmPage2.jsp";
	String link = "OpenWcmPage2.jsp?" + OpenWcmServlet.PLACEHOLD_ID + "=FAQ_CONTENT_PH&" + OpenWcmServlet.DATAFILE_ID + "=";
	//http://localhost:8080/ucm/OpenWcmPage2.jsp?placeholdId=FAQ_ITEM_PH&datafileId=000142
	Map<String,String> additionalArgs = new HashMap<String,String>();
	additionalArgs.put("urlPrefix", link);

	String output = openwcm.callWcmPlaceholder( username, datafileContentId, placeholderContentId, null, application, additionalArgs);
	
	// http://ucmel2/idc/idcplg?IdcService=WCM_PLACEHOLDER&dataFileDocName=CDF_FAQ_PRIMARY&placeholderDefinitionDocName=FAQ_LIST_PH
%>

<p>
<a href="http://ucmel2.lab.com/dewa/faq/index.htm" target="new">Edit Page</a>
</p>
<%= output %>

</body>
</html>