# Practica-de-laboratorio-02-Servlets-JSP-y-JPA-
OBJETIVO ALCANZADO: 
===============
• Diseña y desarrolla modelos de software en diferentes niveles de abstracción y modelos de datos a nivel transaccional y analítico con entornos de desarrollo actuales
----------------

ACTIVIDADES DESARROLLADAS 
========

DIAGRAMA
---------
![1](https://user-images.githubusercontent.com/34308770/82855386-c7299a00-9ed0-11ea-935c-7c936e5cc2c1.jpg)

3.Realización de la página web mediante HTML y dichos componentes mencionados con anterioridad.
=====================
Requisitos de implementación funcional.

3.1 Realizaremos la implementación de una página HTML mediante servlets el objetivo principal es utilizar las clases DAO que nos permitirán tener una gestión a nivel funcional.
============
o	Crearemos la implementación de la clase persona:

o	También para la persona tendremos una lista de teléfonos a nivel privado (Una persona puede tener varios teléfonos) 

o	Los usuarios pueden registrarse en la aplicación a través de un formulario de creación de cuentas. 

o	Validación del correo realizando una clave primaria única

o	Nullable=Implementa el valor especifica en NULL.

o	Inicializamos la relación de uno a muchos.

o	OrphanRemoval= se eliminará cuando ya no se haga referencia a ella desde la entidad "principal".

![2](https://user-images.githubusercontent.com/34308770/82855444-f50ede80-9ed0-11ea-9931-d1c8ef5e2daa.jpg)

Implementación de hascode and equals.
===
![3](https://user-images.githubusercontent.com/34308770/82855490-1243ad00-9ed1-11ea-858a-488496954a9b.jpg)

•	Gestión Teléfono
====
•	Generamos la entidad 
•	Generación de Muchos a uno

![4](https://user-images.githubusercontent.com/34308770/82855546-34d5c600-9ed1-11ea-9985-6a4f6992ae8b.jpg)

Implementación de hascode and equals
===
![5](https://user-images.githubusercontent.com/34308770/82855593-5636b200-9ed1-11ea-8007-7d039620e3cf.jpg)

Creación de la identidad JPA
====
•	Implementación de la persistencia JPA 

![6](https://user-images.githubusercontent.com/34308770/82855636-71092680-9ed1-11ea-9ec4-d261b437a5a2.jpg)

o	Creación de la tabla

o	Implementación de los métodos JPA

JPA GENERIC DAO
=======
![7](https://user-images.githubusercontent.com/34308770/82855679-91d17c00-9ed1-11ea-845a-0787dcf70264.jpg)
![8](https://user-images.githubusercontent.com/34308770/82855712-a9a90000-9ed1-11ea-88ff-4b6de58cab2d.jpg)
![9](https://user-images.githubusercontent.com/34308770/82855739-bcbbd000-9ed1-11ea-810c-d9a1197ce4ca.jpg)


JPA PERSONA DAO
====
![10](https://user-images.githubusercontent.com/34308770/82855781-dceb8f00-9ed1-11ea-8623-6983a827a92a.jpg)

JPA TELEFONO DAO
=====
![11](https://user-images.githubusercontent.com/34308770/82855836-00163e80-9ed2-11ea-943f-7a2d7f6f0ab8.jpg)

IMPLEMENTACION EN LA PAGINA HTML
==
![12](https://user-images.githubusercontent.com/34308770/82855883-2f2cb000-9ed2-11ea-9e4b-b2d7b2d3f2b8.jpg)

o	En el siguiente punto definiremos el login.

o	Los usuarios pueden iniciar sesión usando su correo y contraseña. 

o	Verificaremos si existe o no el usuario.

o	Implementación de la base de datos.

o	Implementación del método de la base en los servlets en este caso el login.

![13](https://user-images.githubusercontent.com/34308770/82855936-57b4aa00-9ed2-11ea-817a-356b024600de.jpg)
![14](https://user-images.githubusercontent.com/34308770/82855965-70bd5b00-9ed2-11ea-8c71-1b44d2daf700.jpg)
![15](https://user-images.githubusercontent.com/34308770/82856014-8cc0fc80-9ed2-11ea-8e4d-7c28cef1ca87.jpg)

o	En el siguiente punto definiremos la gestión del usuario.

o	Registrar, modificar, eliminar, buscar y listar sus teléfonos

o	Listar los números de teléfono de un usuario usando su número de cédula o correo electrónico

o	Podrá llamar o enviar un correo electrónico desde el sistema usando aplicaciones externas.

o	Visualización del número telefónico, la gestión nos permitirá editar, agregar, eliminar un numero telefónico.

o	Implementación de la base de datos.

o	Implementación del método de la base en los servlets en este caso la Agenda.

EDITAR TELEFONO 
====
![16](https://user-images.githubusercontent.com/34308770/82856078-b7ab5080-9ed2-11ea-8613-306203a63a4c.jpg)

ELIMINAR
=====
![17](https://user-images.githubusercontent.com/34308770/82856153-ddd0f080-9ed2-11ea-8961-321150e00754.jpg)
![18](https://user-images.githubusercontent.com/34308770/82856176-efb29380-9ed2-11ea-9f40-a34dea707dc1.jpg)

AGREGAR TELEFONO
===
![19](https://user-images.githubusercontent.com/34308770/82856236-1244ac80-9ed3-11ea-98e3-250dd9ffcf0a.jpg)
![20](https://user-images.githubusercontent.com/34308770/82856264-225c8c00-9ed3-11ea-96be-c4e50a5c21bb.jpg)

INTERFAZ EXTERNA
====
![21](https://user-images.githubusercontent.com/34308770/82856318-47e99580-9ed3-11ea-918d-dd52cdc37f04.jpg)
![22](https://user-images.githubusercontent.com/34308770/82856435-91d27b80-9ed3-11ea-95d7-bca2cbd4c6f6.jpg)
![23](https://user-images.githubusercontent.com/34308770/82856463-a151c480-9ed3-11ea-99fc-223857a3d7e8.jpg)
![24](https://user-images.githubusercontent.com/34308770/82856496-b890b200-9ed3-11ea-9580-49a63bf5b43b.jpg)

Método Buscar Llamar a una Aplicación externa, Enviar correo.
---
![25](https://user-images.githubusercontent.com/34308770/82856555-dd852500-9ed3-11ea-8db5-6b269d51336d.jpg)
![26](https://user-images.githubusercontent.com/34308770/82856565-eb3aaa80-9ed3-11ea-9f6a-d7298eecc7ee.jpg)
![27](https://user-images.githubusercontent.com/34308770/82856589-fa215d00-9ed3-11ea-8aab-553bc943043d.jpg)
![28](https://user-images.githubusercontent.com/34308770/82856613-09a0a600-9ed4-11ea-88eb-3de9332a0d0f.jpg)

VALIDACION DE FORMULARIOS
====
![29](https://user-images.githubusercontent.com/34308770/82856634-20df9380-9ed4-11ea-85b6-7a8c88ca3500.jpg)

o	En el siguiente punto definiremos la gestión del Filtro a nivel de gestión.

o	Login

o	Home

o	Agenda

o	Filtro para la gestión de login.

![30](https://user-images.githubusercontent.com/34308770/82856676-3f458f00-9ed4-11ea-9cd3-3973f0a1a215.jpg)

Pagina Principal
![31](https://user-images.githubusercontent.com/34308770/82856705-597f6d00-9ed4-11ea-9a2d-83d0aae648e6.jpg)


CONCLUSIONES: 
----
•	El patrón DAO propone separar por completo la lógica de negocio de la lógica para acceder a los datos, de esta forma, el DAO proporcionará los métodos necesarios para insertar, actualizar, borrar y consultar la información; por otra parte, la capa de negocio solo se preocupa por lógica de negocio y utiliza el DAO para interactuar con la fuente de datos.

•	En esta sección tocaremos los elementos más básicos de JPA, aprenderemos a crear un proyecto, configurarlo, aprenderemos las anotaciones básicas y crearemos nuestras primera Entidad. 





