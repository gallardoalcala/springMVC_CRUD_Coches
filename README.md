# springMVC_CRUD_Coches
Proyecto Spring-framework

# Tabla de contenidos
-----
1. [Descripcion](#descripción)
   * [Requerimientos](#requerimientos)
2. [Desarrollo](#desarrollo)
3. [Ejecución del proyecto](#ejecución-del-proyecto)


##Descripción

Trabajo práctico realizado a partir del proyecto: https://github.com/jeromejaglale/spring4-tutorial/tree/master/04_form_validation

###Requerimientos 

##Persistencia de datos

Crear la base de datos y las tablas necesarias en mysql.
user:root
passwd:root114

El script necesario se encuentra en: /src/main/resources/SQL/database.sql

##Desarrollo

- Se han añadido las dependencias al fichero pom.xml para conectar con la base de datos mysql.
- Se ha añadido el pluggin "jetty" para desplegar la aplicación.
- Se ha creado un "index.jsp".
- Se ha completado la aplicación inicial, añadiendo los métodos de modificación, eliminación, y muestra de coches. Así como las vistas necesarias realizadas en jsp. Completando así un CRUD.
- Se ha incluido los ficheros SpringDispacherServlet.xml  web.xml y DataBaseProperties. 

##Ejecución del proyecto

Podremos ejecutar el proyecto con el comando mvn clean jetty:run, accediendo al localhost:9999/index
