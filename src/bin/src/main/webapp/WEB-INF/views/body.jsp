
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>


<spring:theme code="bootstrap.css" var="bootstrapCss" />
<spring:url value="/${bootstrapCss}" var="bootstrap" /> 
<link rel="stylesheet" type="text/css" href="${bootstrap}" media="screen">

<spring:theme code="metisMenu.css" var="metisMenuCss" />
<spring:url value="/${metisMenuCss}" var="metisMenuCss1" /> 
<link rel="stylesheet" type="text/css" href="${metisMenuCss1}" media="screen">

<spring:theme code="timeline.css" var="timelineCss" />
<spring:url value="/${timelineCss}" var="timelineCss1" /> 
<link rel="stylesheet" type="text/css" href="${timelineCss1}" media="screen">

<spring:theme code="custom.css" var="customCss" />
<spring:url value="/${customCss}" var="customCss1" /> 
<link rel="stylesheet" type="text/css" href="${customCss1}" media="screen">

<spring:theme code="morrisChart.css" var="morrisChartCss" />
<spring:url value="/${morrisChartCss}" var="morrisChartCss1" /> 
<link rel="stylesheet" type="text/css" href="${morrisChartCss1}" media="screen">


<spring:theme code="fontAwesome.css" var="fontAwesomeCss" />
<spring:url value="/${fontAwesomeCss}" var="fontAwesomeCss1" /> 
<link rel="stylesheet" type="text/css" href="${fontAwesomeCss1}" media="screen">

<spring:theme code="fontAwesomeMin.css" var="fontAwesomeMinCss" />
<spring:url value="/${fontAwesomeMinCss}" var="fontAwesomeMinCss1" /> 
<link rel="stylesheet" type="text/css" href="${fontAwesomeMinCss1}" media="screen">


<!--  jquery file add in   -->
<spring:theme code="JQuery.min.js" var="jqueryMinJs" />
<spring:url value="/${jqueryMinJs}" var="jqueryMinJs1" />
<script src="${jqueryMinJs1}" type="text/javascript"></script>

<spring:theme code="bootstrap.min.js" var="bootstrapMinJs" />
<spring:url value="/${bootstrapMinJs}" var="bootstrapMinJs1" />
<script src="${bootstrapMinJs1}" type="text/javascript"></script>

<spring:theme code="metisMenu.min.js" var="metisMenuJs" />
<spring:url value="/${metisMenuJs}" var="metisMenuJs1" />
<script src="${metisMenuJs1}" type="text/javascript"></script>

<spring:theme code="raphael-min.js" var="raphelMinJs" />
<spring:url value="/${raphelMinJs}" var="raphelMinJs1" />
<script src="${raphelMinJs1}" type="text/javascript"></script>

<spring:theme code="morris.min.js" var="morrisMinJs" />
<spring:url value="/${morrisMinJs}" var="morrisMinJs1" />
<script src="${morrisMinJs1}" type="text/javascript"></script>

<spring:theme code="morris-data.js" var="morrisDataJs" />
<spring:url value="/${morrisDataJs}" var="morrisDataJs1" />
<script src="${morrisDataJs1}" type="text/javascript"></script>

<spring:theme code="customeTheme.js" var="customeThemeJs" />
<spring:url value="/${customeThemeJs1}" var="customeThemeJs1" />
<script src="${customeThemeJs1}" type="text/javascript"></script>





