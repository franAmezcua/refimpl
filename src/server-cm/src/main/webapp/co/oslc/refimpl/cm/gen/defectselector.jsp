<!DOCTYPE html>
<%--Start of user code "Copyright"
--%>
<%--
 Copyright (c) 2011, 2012 IBM Corporation and others.

 All rights reserved. This program and the accompanying materials
 are made available under the terms of the Eclipse Public License v1.0
 and Eclipse Distribution License v. 1.0 which accompanies this distribution.

 The Eclipse Public License is available at http://www.eclipse.org/legal/epl-v10.html
 and the Eclipse Distribution License is available at
 http://www.eclipse.org/org/documents/edl-v10.php.

 Contributors:

  Sam Padgett     - initial API and implementation
  Michael Fiedler - adapted for OSLC4J
  Jad El-khoury   - initial implementation of code generator (https://bugs.eclipse.org/bugs/show_bug.cgi?id=422448)

 This file is generated by org.eclipse.lyo.oslc4j.codegenerator
--%>
<%--End of user code--%>

<%--Start of user code "body"
--%>
<%--TODO: Replace/adjust this default content as necessary.
All manual changes in this "protected" user code area will NOT be overwritten upon subsequent code generations.
To revert to the default generated content, delete all content in this file, and then re-generate.
--%>

<%@page import="org.eclipse.lyo.oslc4j.core.model.ServiceProvider"%>
<%@page import="org.eclipse.lyo.oslc.domains.cm.Defect"%>
<%@page import="org.eclipse.lyo.oslc4j.core.OSLC4JUtils"%>
<%@page import="javax.ws.rs.core.UriBuilder"%>

<%@ page contentType="text/html" language="java" pageEncoding="UTF-8" %>

<%
  String selectionUri = (String) request.getAttribute("selectionUri");

%>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>DefectDlgSel</title>
    <script type="text/javascript" src="<%=UriBuilder.fromUri(OSLC4JUtils.getPublicURI()).path("delegatedUI.js").build().toString()%>"></script>
  </head>
  <body style="padding: 10px;">
    <div id="selector-body">
      <p id="searchMessage">Find a specific resource through a free-text search.</p>

      <p id="loadingMessage" style="display: none;">Pondering your search. Please stand by ...</p>

      <div>
        <input type="search" style="width: 335px" id="searchTerms" placeholder="Enter search terms" autofocus>
        <button type="button" onclick="search( '<%= selectionUri %>' )">Search</button>
      </div>

      <div style="margin-top: 5px;">
        <select id="results" size="10" style="width: 400px" multiple="multiple"></select>
      </div>

      <div style="width: 400px; margin-top: 5px;">
        <button style="float: right;" type="button"
          onclick="javascript: cancel()">Cancel</button>
        <button style="float: right;" type="button"
          onclick="javascript: select();">OK</button>
      </div>
      <div style="clear: both;"></div>
    </div>

  </body>
</html>
<%--End of user code--%>
