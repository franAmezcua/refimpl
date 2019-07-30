<%--Start of user code "Copyright"
--%>
<%--
 Copyright (c) 2018 Jad El-khoury.

 All rights reserved. This program and the accompanying materials
 are made available under the terms of the Eclipse Public License v1.0
 and Eclipse Distribution License v. 1.0 which accompanies this distribution.

 The Eclipse Public License is available at http://www.eclipse.org/legal/epl-v10.html
 and the Eclipse Distribution License is available at
 http://www.eclipse.org/org/documents/edl-v10.php.

 Contributors:

  Jad El-khoury        - Migrate toHtml methods from the resource pojos to be embedded in jsp pages.

 This file is generated by org.eclipse.lyo.oslc4j.codegenerator
--%>
<%--End of user code--%>

<%--Start of user code "body"
--%>
<%--TODO: Replace/adjust this default content as necessary.
All manual changes in this "protected" user code area will NOT be overwritten upon subsequent code generations.
To revert to the default generated content, delete all content in this file, and then re-generate.
--%>
<%@page import="org.eclipse.lyo.oslc.domains.cm.Enhancement"%>
<%@page import="java.net.URI"%>
<%
String asLocalResource = request.getParameter("asLocalResource");
Enhancement aResource = null;
if (request.getAttribute("aEnhancement") != null) {
    aResource = (Enhancement) request.getAttribute("aEnhancement");
}
else {
    if (request.getParameter("resourceUri") != null) {
        aResource = new Enhancement (new URI(request.getParameter("resourceUri")));
    }
}

if (asLocalResource != null && asLocalResource.equalsIgnoreCase("true")) {
    out.write("{a Local Enhancement Resource} - update Enhancement.toString() to present resource as desired.");
}
else {
    if (aResource == null) {
        out.write("<em>null</em>");
    }
    else {    
        out.write("<a href=\"" + aResource.getAbout() + "\" class=\"oslc-resource-link\">" + aResource.getAbout() + "</a>");
    }
}
%>
<%--End of user code--%>
