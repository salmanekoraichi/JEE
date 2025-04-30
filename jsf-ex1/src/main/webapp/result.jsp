<%--
  Created by IntelliJ IDEA.
  User: Yoga
  Date: 30/04/2025
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  <!-- JSTL pour la boucle -->
<f:view>
    <html>
    <head><title>Résultat</title></head>
    <body>
    <h2>Les 5 nombres après #{bean.nombre}</h2>

    <!-- Affichage avec JSTL -->
    <c:forEach items="#{bean.suite}" var="n" varStatus="s">
        ${s.index + 1}. ${n} <br/>
    </c:forEach>

    <!-- Lien retour -->
    <h:commandLink value="&#x21E6; Retour" action="index"/>
    </body>
    </html>
</f:view>
