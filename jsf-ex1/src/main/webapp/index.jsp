<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
    <head><title>Saisir un entier</title></head>
    <body>
    <h2>Saisissez un entier :</h2>

    <h:form>
        <h:outputLabel for="val" value="Entier : " />
        <h:inputText id="val" value="#{bean.nombre}" required="true"/>
        <h:commandButton value="Valider" action="#{bean.goResult}"/>
    </h:form>
    </body>
    </html>
</f:view>
