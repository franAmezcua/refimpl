<!DOCTYPE html>
<%--Start of user code "Copyright"
--%>
<%--
 Copyright (c) 2011, 2012, 2017 IBM Corporation and others.

 All rights reserved. This program and the accompanying materials
 are made available under the terms of the Eclipse Public License v1.0
 and Eclipse Distribution License v. 1.0 which accompanies this distribution.

 The Eclipse Public License is available at http://www.eclipse.org/legal/epl-v10.html
 and the Eclipse Distribution License is available at
 http://www.eclipse.org/org/documents/edl-v10.php.

 Contributors:

  Sam Padgett     - initial API and implementation
  Michael Fiedler - adapted for OSLC4J
  Jad El-khoury   - initial implementation of code generator (422448)
  Frédéric Loiret - Switch the template to Bootstrap (519699)
  Frédéric Loiret - Support for UI Preview (494303)
  Andrii Berezovskyi - Support for UI Preview (494303)

 This file is generated by org.eclipse.lyo.oslc4j.codegenerator
--%>
<%--End of user code--%>

<%--Start of user code "body"
--%>
<%--TODO: Replace/adjust this default content as necessary.
All manual changes in this "protected" user code area will NOT be overwritten upon subsequent code generations.
To revert to the default generated content, delete all content in this file, and then re-generate.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@page import="org.eclipse.lyo.oslc4j.core.model.Link" %>
<%@page import="org.eclipse.lyo.oslc4j.core.model.ServiceProvider"%>
<%@page import="java.net.URI"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.eclipse.lyo.oslc.domains.cm.ChangeRequest"%>

<%@ page contentType="text/html" language="java" pageEncoding="UTF-8" %>

<%
  ChangeRequest aChangeRequest = (ChangeRequest) request.getAttribute("aChangeRequest");
%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title><%= aChangeRequest.toString() %></title>

  <link href="<c:url value="/static/css/bootstrap-4.0.0-beta.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/static/css/adaptor.css"/>" rel="stylesheet">

  <script src="<c:url value="/static/js/jquery-3.2.1.min.js"/>"></script>
  <script src="<c:url value="/static/js/popper-1.11.0.min.js"/>"></script>
  <script src="<c:url value="/static/js/bootstrap-4.0.0-beta.min.js"/>"></script>
  <script src="<c:url value="/static/js/preview.js"/>"></script>

</head>


<body>

<nav class="navbar sticky-top navbar-light bg-light">
  <div class="container">
  <a class="navbar-brand" href="<c:url value="/services/catalog/singleton"/>">CM</a>
  </div>
</nav>

<!-- Begin page content -->
<div class="container">
    <div class="page-header">
        <h1>ChangeRequest resource</h1>
        <p class="lead">URI:&nbsp;
        <jsp:include page="/co/oslc/refimpl/cm/gen/changerequesttohtml.jsp"></jsp:include>
        </p>
    </div>
        <h2>Properties</h2>

        <div>
          <dl class="row">
            <dt  class="col-sm-2 text-right">shortTitle</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.getShortTitle() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.getShortTitle().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">description</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.getDescription() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.getDescription().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">title</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.getTitle() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.getTitle().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">identifier</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.getIdentifier() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.getIdentifier().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">subject</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            Iterator<String> subjectItr = aChangeRequest.getSubject().iterator();
            while(subjectItr.hasNext()) {
                out.write("<li>" + subjectItr.next().toString() + "</li>");
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">creator</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getCreator()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    %>
                    <li>
                    <jsp:include page="/co/oslc/refimpl/cm/gen/persontohtml.jsp">
                        <jsp:param name="resourceUri" value="<%=next.getValue()%>"/> 
                        </jsp:include>
                    </li>
                    <%
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">contributor</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getContributor()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    %>
                    <li>
                    <jsp:include page="/co/oslc/refimpl/cm/gen/persontohtml.jsp">
                        <jsp:param name="resourceUri" value="<%=next.getValue()%>"/> 
                        </jsp:include>
                    </li>
                    <%
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">created</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.getCreated() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.getCreated().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">modified</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.getModified() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.getModified().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">serviceProvider</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getServiceProvider()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    out.write("<li>" + "<a href=\"" + next.getValue().toString() + "\" class=\"oslc-resource-link\">" + next.getValue().toString() + "</a>" + "</li>");
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">instanceShape</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getInstanceShape()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    out.write("<li>" + "<a href=\"" + next.getValue().toString() + "\" class=\"oslc-resource-link\">" + next.getValue().toString() + "</a>" + "</li>");
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">discussedBy</dt>
            <dd class="col-sm-9">
            <%
            if ((aChangeRequest.getDiscussedBy() == null) || (aChangeRequest.getDiscussedBy().getValue() == null)) {
                out.write("<em>null</em>");
            }
            else {
                %>
                <jsp:include page="/co/oslc/refimpl/cm/gen/discussiontohtml.jsp">
                    <jsp:param name="resourceUri" value="<%=aChangeRequest.getDiscussedBy().getValue()%>"/> 
                    </jsp:include>
                <%
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">closeDate</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.getCloseDate() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.getCloseDate().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">status</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.getStatus() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.getStatus().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">closed</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.isClosed() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.isClosed().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">inProgress</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.isInProgress() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.isInProgress().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">fixed</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.isFixed() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.isFixed().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">approved</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.isApproved() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.isApproved().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">reviewed</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.isReviewed() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.isReviewed().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">verified</dt>
            <dd class="col-sm-9">
            <%
            if (aChangeRequest.isVerified() == null) {
                out.write("<em>null</em>");
            }
            else {
                out.write(aChangeRequest.isVerified().toString());
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">relatedChangeRequest</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getRelatedChangeRequest()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    out.write("<li>" + "<a href=\"" + next.getValue().toString() + "\" class=\"oslc-resource-link\">" + next.getValue().toString() + "</a>" + "</li>");
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">affectsPlanItem</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getAffectsPlanItem()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    out.write("<li>" + "<a href=\"" + next.getValue().toString() + "\" class=\"oslc-resource-link\">" + next.getValue().toString() + "</a>" + "</li>");
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">affectedByDefect</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getAffectedByDefect()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    %>
                    <li>
                    <jsp:include page="/co/oslc/refimpl/cm/gen/defecttohtml.jsp">
                        <jsp:param name="resourceUri" value="<%=next.getValue()%>"/> 
                        </jsp:include>
                    </li>
                    <%
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">tracksRequirement</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getTracksRequirement()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    %>
                    <li>
                    <jsp:include page="/co/oslc/refimpl/cm/gen/requirementtohtml.jsp">
                        <jsp:param name="resourceUri" value="<%=next.getValue()%>"/> 
                        </jsp:include>
                    </li>
                    <%
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">implementsRequirement</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getImplementsRequirement()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    %>
                    <li>
                    <jsp:include page="/co/oslc/refimpl/cm/gen/requirementtohtml.jsp">
                        <jsp:param name="resourceUri" value="<%=next.getValue()%>"/> 
                        </jsp:include>
                    </li>
                    <%
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">affectsRequirement</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getAffectsRequirement()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    %>
                    <li>
                    <jsp:include page="/co/oslc/refimpl/cm/gen/requirementtohtml.jsp">
                        <jsp:param name="resourceUri" value="<%=next.getValue()%>"/> 
                        </jsp:include>
                    </li>
                    <%
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">tracksChangeSet</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getTracksChangeSet()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    %>
                    <li>
                    <jsp:include page="/co/oslc/refimpl/cm/gen/changesettohtml.jsp">
                        <jsp:param name="resourceUri" value="<%=next.getValue()%>"/> 
                        </jsp:include>
                    </li>
                    <%
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">parent</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getParent()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    %>
                    <li>
                    <jsp:include page="/co/oslc/refimpl/cm/gen/changerequesttohtml.jsp">
                        <jsp:param name="resourceUri" value="<%=next.getValue()%>"/> 
                        </jsp:include>
                    </li>
                    <%
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">priority</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getPriority()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    %>
                    <li>
                    <jsp:include page="/co/oslc/refimpl/cm/gen/prioritytohtml.jsp">
                        <jsp:param name="resourceUri" value="<%=next.getValue()%>"/> 
                        </jsp:include>
                    </li>
                    <%
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">state</dt>
            <dd class="col-sm-9">
            <%
            if ((aChangeRequest.getState() == null) || (aChangeRequest.getState().getValue() == null)) {
                out.write("<em>null</em>");
            }
            else {
                %>
                <jsp:include page="/co/oslc/refimpl/cm/gen/statetohtml.jsp">
                    <jsp:param name="resourceUri" value="<%=aChangeRequest.getState().getValue()%>"/> 
                    </jsp:include>
                <%
            }
            %>
            
            </dd>
          </dl>
          <dl class="row">
            <dt  class="col-sm-2 text-right">authorizer</dt>
            <dd class="col-sm-9">
            <ul>
            <%
            for(Link next : aChangeRequest.getAuthorizer()) {
                if (next.getValue() == null) {
                    out.write("<li>" + "<em>null</em>" + "</li>");
                }
                else {
                    %>
                    <li>
                    <jsp:include page="/co/oslc/refimpl/cm/gen/agenttohtml.jsp">
                        <jsp:param name="resourceUri" value="<%=next.getValue()%>"/> 
                        </jsp:include>
                    </li>
                    <%
                }
            }
            %>
            </ul>
            
            </dd>
          </dl>
        </div>
      </div>
    </div>

  <footer class="footer">
    <div class="container">
      <p class="text-muted">
        OSLC Adaptor was generated using <a href="http://eclipse.org/lyo">Eclipse Lyo</a>.
      </p>
    </div>
  </footer>
</body>
</html>
<%--End of user code--%>
