<%@ page contentType="application/xrds+xml" %>
<%
  String host = request.getServerName();
  int port = request.getServerPort();
  if(port != 80 && port != 443){
    host = host + ":" + Integer.toString(port);
  }
%>
<?xml version="1.0" encoding="UTF-8"?>
<xrds:XRDS xmlns:xrds="xri://$xrds" xmlns="xri://$xrd*($v*2.0)">
<XRD>
<Service priority="0">
<Type>http://specs.openid.net/auth/2.0/server</Type>
<URI>http://<%= host %>/simple-openid/provider.jsp</URI>
</Service>
</XRD>
</xrds:XRDS>
