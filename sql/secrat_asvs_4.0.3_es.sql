-- Housekeeping
SET FOREIGN_KEY_CHECKS=0;
SET CHARACTER SET 'utf8';
SET NAMES 'utf8';
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (1,"Ciclo de Vida de Desarrollo de Software Seguro","V1.1", '',1, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (4,"V1 - Arquitectura, Diseño y Modelado de Amenazas","Arquitectura, Diseño y Modelado de Amenazas",4,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (1,NULL,"V1.1.1","Verifique el uso de un ciclo de vida de desarrollo de software seguro que aborde la seguridad en todas las etapas del desarrollo. ([C1](https://owasp.org/www-project-proactive-controls/#div-numbering))",1, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,1);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,1);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (1,'',1,1);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (2,'',2,1);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (2,NULL,"V1.1.2","Verifique el uso del modelado de amenazas para cada cambio de diseño o planificación de sprint para identificar amenazas, planificar contramedidas, facilitar respuestas de riesgo adecuadas y guiar las pruebas de seguridad.",2, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,2);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,2);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,2);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,2);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (3,'',1,2);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (4,'',2,2);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,2);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (3,NULL,"V1.1.3","Verifique que todas las historias y características de usuario contienen restricciones de seguridad funcionales, como por ejemplo: 'Como usuario, debería poder ver y editar mi perfil. No debería ser capaz de ver o editar el perfil de nadie más'",3, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,3);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,3);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,3);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,3);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (5,'',1,3);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (6,'',2,3);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,3);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (4,NULL,"V1.1.4","Verifique la documentación y la justificación de todos los límites de confianza, componentes y flujos de datos significativos de la aplicación.",4, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,4);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,4);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,4);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,4);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (7,'',1,4);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (8,'',2,4);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,4);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (5,NULL,"V1.1.5","Verifique la definición y el análisis de seguridad de la arquitectura de alto nivel de la aplicación y todos los servicios remotos conectados. ([C1](https://owasp.org/www-project-proactive-controls/#div-numbering))",5, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,5);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,5);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,5);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,5);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (9,'',1,5);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (10,'',2,5);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,5);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (6,NULL,"V1.1.6","Verifique la implementación de controles de seguridad centralizados, simples (economía del diseño), comprobados, seguros y reutilizables para evitar controles duplicados, faltantes, ineficaces o inseguros. ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",6, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,6);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,6);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,6);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,6);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (11,'',1,6);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (12,'',2,6);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,6);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (7,NULL,"V1.1.7","Verifique la disponibilidad de una lista de comprobación de codificación segura, requisitos de seguridad, directriz o directiva para todos los desarrolladores y evaluadores.",7, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,7);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,7);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,7);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,7);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (13,'',1,7);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (14,'',2,7);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,7);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (2,"Arquitectura de Autenticación","V1.2", '',2, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (8,NULL,"V1.2.1","Verifique el uso de cuentas de sistema operativo únicas o especiales con privilegios bajos para todos los componentes, servicios y servidores de la aplicación. ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",8, _binary '',2);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,8);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,8);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,8);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,8);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (15,'',1,8);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (16,'',2,8);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,8);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (9,NULL,"V1.2.2","Verifique que las comunicaciones entre los componentes de la aplicación, incluidas las API, el middleware y las capas de datos, se autentican. Los componentes deben tener los mínimos privilegios necesarios. ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",9, _binary '',2);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,9);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,9);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,9);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,9);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (17,'',1,9);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (18,'',2,9);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,9);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (10,NULL,"V1.2.3","Verifique que la aplicación utiliza un único mecanismo de autenticación comprobado que se sabe que es seguro, se puede ampliar para incluir una autenticación segura y tiene suficiente logging y supervisión para detectar abuso de cuenta o brechas.",10, _binary '',2);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,10);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,10);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,10);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,10);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (19,'',1,10);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (20,'',2,10);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,10);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (11,NULL,"V1.2.4","Verifique que todas las vías de autenticación y las API de administración de identidades implementan una fortaleza coherente del control de seguridad de autenticación, de modo que no haya alternativas más débiles por el riesgo de la aplicación.",11, _binary '',2);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,11);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,11);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,11);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,11);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (21,'',1,11);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (22,'',2,11);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,11);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (3,"Arquitectura de Control de Acceso","V1.4", '',3, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (12,NULL,"V1.4.1","Verifique que los puntos de cumplimiento de confianza, tales como puertas de enlace de control de acceso, servidores y funciones serverless, exijan controles de acceso. Nunca aplique controles de acceso en el cliente.",12, _binary '',3);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,12);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,12);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,12);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,12);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (23,'',1,12);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (24,'',2,12);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,12);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (15,NULL,"V1.4.4","Verifique que la aplicación utilice un mecanismo de control de acceso único y bien comprobado para acceder a datos y recursos protegidos. Todas las solicitudes deben pasar por este único mecanismo para evitar copiar y pegar o rutas alternativas inseguras. ([C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",15, _binary '',3);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,15);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,15);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,15);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,15);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (25,'',1,15);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (26,'',2,15);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,15);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (16,NULL,"V1.4.5","Verifique que se utiliza el control de acceso basado en atributos o entidades mediante el cual el código comprueba la autorización del usuario para un elemento de característica o datos en lugar de solo su rol. Los permisos deben asignarse mediante roles. ([C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",16, _binary '',3);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,16);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,16);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,16);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,16);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (27,'',1,16);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (28,'',2,16);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,16);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (4,"Arquitectura de Entradas y Salidas","V1.5", '',4, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (17,NULL,"V1.5.1","Verifique que los requisitos de entrada y salida definan claramente cómo manejar y procesar datos en función del tipo, contenido y las leyes, regulaciones y otras leyes aplicables, reglamentos y otras normas de cumplimiento de políticas.",17, _binary '',4);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,17);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,17);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,17);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,17);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (29,'',1,17);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (30,'',2,17);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,17);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (18,NULL,"V1.5.2","Verifique que no se usa serialización al comunicarse con clientes que no son de confianza. Si esto no es posible, asegúrese de que se apliquen controles de integridad adecuados (y posiblemente cifrado si se envían datos confidenciales) para evitar ataques de deserialización, incluida la inyección de objetos.",18, _binary '',4);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,18);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,18);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,18);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,18);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (31,'',1,18);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (32,'',2,18);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,18);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (19,NULL,"V1.5.3","Verifique que la validación de datos de entrada (input) se aplica en una capa de servicio de confianza. ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",19, _binary '',4);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,19);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,19);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,19);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,19);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (33,'',1,19);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (34,'',2,19);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,19);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (20,NULL,"V1.5.4","Verifique que la codificación de salida (output encode) se produce cerca o en el intérprete para el que está destinada. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",20, _binary '',4);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,20);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,20);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,20);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,20);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (35,'',1,20);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (36,'',2,20);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,20);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (5,"Arquitectura Criptográfica","V1.6", '',5, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (21,NULL,"V1.6.1","Verifique que existe una política explícita para la administración de claves criptográficas y que un ciclo de vida de clave criptográfica sigue un estándar de administración de claves como NIST SP 800-57.",21, _binary '',5);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,21);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,21);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,21);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,21);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (37,'',1,21);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (38,'',2,21);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,21);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (22,NULL,"V1.6.2","Verifique que los consumidores de servicios criptográficos protegen el material clave y otros secretos mediante el uso de almacenes de claves o alternativas basadas en API.",22, _binary '',5);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,22);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,22);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,22);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,22);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (39,'',1,22);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (40,'',2,22);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,22);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (23,NULL,"V1.6.3","Verifique que todas las claves y contraseñas son reemplazables y forman parte de un proceso bien definido para volver a cifrar los datos confidenciales.",23, _binary '',5);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,23);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,23);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,23);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,23);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (41,'',1,23);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (42,'',2,23);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,23);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (24,NULL,"V1.6.4","Verifique que la arquitectura trata los secretos del lado cliente (como claves simétricas, contraseñas o tokens de API) como inseguros y nunca los usa para proteger o acceder a datos confidenciales.",24, _binary '',5);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,24);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,24);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,24);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,24);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (43,'',1,24);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (44,'',2,24);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,24);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (6,"Arquitectura de Errores, Logging y Auditoría","V1.7", '',6, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (25,NULL,"V1.7.1","Verifique que se utilice un formato común y un enfoque de logging en todo el sistema. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",25, _binary '',6);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,25);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,25);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,25);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,25);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (45,'',1,25);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (46,'',2,25);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,25);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (26,NULL,"V1.7.2","Verifique que los registros de log se transmitan de forma segura a un sistema preferentemente remoto para análisis, detección, alertas y escalamiento. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",26, _binary '',6);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,26);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,26);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,26);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (47,'',1,26);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (48,'',2,26);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,26);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (7,"Arquitectura de Protección de Datos y Privacidad","V1.8", '',7, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (27,NULL,"V1.8.1","Verifique que todos los datos confidenciales se identifiquen y clasifiquen en niveles de protección.",27, _binary '',7);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,27);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,27);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,27);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (49,'',1,27);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (50,'',2,27);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,27);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (28,NULL,"V1.8.2","Verifique que todos los niveles de protección tienen un conjunto asociado de requisitos de protección, como los requisitos de cifrado, los requisitos de integridad, la retención, la privacidad y otros requisitos de confidencialidad, y que estos se aplican en la arquitectura.",28, _binary '',7);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,28);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,28);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,28);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (51,'',1,28);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (52,'',2,28);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,28);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (8,"Arquitectura de Comunicaciones","V1.9", '',8, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (29,NULL,"V1.9.1","Verifique que la aplicación cifra las comunicaciones entre componentes, especialmente cuando estos componentes se encuentran en contenedores, sistemas, sitios o proveedores de nube diferentes. ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",29, _binary '',8);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,29);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,29);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,29);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,29);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (53,'',1,29);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (54,'',2,29);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,29);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (30,NULL,"V1.9.2","Verifique que los componentes de la aplicación verifiquen la autenticidad de cada lado en un vínculo de comunicación para evitar ataques de 'persona en el medio'. Por ejemplo, los componentes de la aplicación deben validar certificados y cadenas TLS.",30, _binary '',8);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,30);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,30);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,30);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,30);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (55,'',1,30);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (56,'',2,30);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,30);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (9,"Arquitectura de Software Malicioso","V1.10", '',9, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (31,NULL,"V1.10.1","Verifique que un sistema de control de código fuente está en uso, con procedimientos para garantizar que los check-ins están respaldados tickets de issues o solicitudes de cambio. El sistema de control de código fuente debe tener control de acceso y usuarios identificables para permitir la trazabilidad de cualquier cambio.",31, _binary '',9);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,31);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,31);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,31);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,31);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (57,'',1,31);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (58,'',2,31);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,31);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (10,"Arquitectura de la Lógica de Negocio","V1.11", '',10, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (32,NULL,"V1.11.1","Verifique la definición y documentación de todos los componentes de la aplicación en términos de las funciones de negocio o de seguridad que proporcionan.",32, _binary '',10);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,32);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,32);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,32);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,32);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (59,'',1,32);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (60,'',2,32);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,32);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (33,NULL,"V1.11.2","Verifique que todos los flujos de lógica de negocio de alto valor, incluida la autenticación, la administración de sesiones y el control de acceso, no compartan estados no sincronizados.",33, _binary '',10);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,33);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,33);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,33);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,33);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (61,'',1,33);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (62,'',2,33);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,33);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (34,NULL,"V1.11.3","Verifique que todos los flujos de lógica de negocio de alto valor, incluida la autenticación, la administración de sesiones y el control de acceso, sean seguros para subprocesos y resistentes a condiciones de carrera time-of-check y time-of-use (race conditions).",34, _binary '',10);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,34);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,34);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,34);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (63,'',1,34);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (64,'',2,34);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,34);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (11,"Arquitectura de Carga Segura de Archivos","V1.12", '',11, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (36,NULL,"V1.12.2","Verifique que los archivos subidos por el usuario, -si es necesario que se muestren o descarguen desde la aplicación-, se hace mediante descargas de secuencias de octetos o desde un dominio no relacionado, como un almacenamiento de archivos en la nube. Implemente una directiva de seguridad de contenido (CSP) adecuada para reducir el riesgo de vectores XSS u otros ataques desde el archivo cargado.",36, _binary '',11);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,36);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,36);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,36);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,36);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (65,'',1,36);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (66,'',2,36);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,36);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (12,"Arquitectura de Configuración","V1.14", '',12, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (37,NULL,"V1.14.1","Verifique la segregación de componentes de diferentes niveles de confianza a través de controles de seguridad bien definidos, reglas de corta fuego, pasarelas de API, proxies reversos, grupos de seguridad basados en nube, o mecanismos similares.",37, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,37);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,37);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,37);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,37);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (67,'',1,37);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (68,'',2,37);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,37);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (38,NULL,"V1.14.2","Verifique que las firmas binarias, las conexiones de confianza y los puntos de conexión verificados se usan para el despliegue de archivos binarios a dispositivos remotos.",38, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,38);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,38);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,38);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,38);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (69,'',1,38);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (70,'',2,38);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,38);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (39,NULL,"V1.14.3","Verifique que el canal de compilación advierte de componentes obsoletos o inseguros y realiza las acciones adecuadas.",39, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,39);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,39);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,39);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,39);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (71,'',1,39);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (72,'',2,39);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,39);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (40,NULL,"V1.14.4","Verifique que el canal de compilación contiene un paso para compilar y comprobar automáticamente el despliegue seguro de la aplicación, especialmente si la infraestructura de la aplicación está definida por software, como los scripts de compilación del entorno en la nube.",40, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,40);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,40);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,40);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (73,'',1,40);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (74,'',2,40);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,40);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (41,NULL,"V1.14.5","Verifique que los despliegues de aplicaciones sean en sandbox, contenedores y/o aislados a nivel de red para retrasar e impedir que los atacantes vulneren otras aplicaciones, especialmente cuando realizan acciones sensibles o peligrosas, como la deserialización. ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",41, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,41);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,41);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,41);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,41);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (75,'',1,41);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (76,'',2,41);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,41);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (42,NULL,"V1.14.6","Verifique que la aplicación no utiliza tecnologías del lado cliente no compatibles, inseguras o en desuso, como NSAPI plugins, Flash, Shockwave, ActiveX, Silverlight, NACL o client-side java applets.",42, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,42);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,42);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,42);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,42);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (77,'',1,42);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (78,'',2,42);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,42);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (13,"Seguridad de Contraseña","V2.1", '',13, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (5,"V2 - Autenticación","Autenticación",5,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (43,NULL,"V2.1.1","Verifique que las contraseñas del usuarios tienen al menos 12 caracteres de longitud (después de combinar varios espacios). ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",43, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,43);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,43);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,43);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,43);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (79,'521',1,43);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (80,'5.1.1.2',2,43);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,43);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (44,NULL,"V2.1.2","Verifique que se permitan contraseñas de al menos 64 caracteres y que se denieguen contraseñas de más de 128 caracteres. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",44, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,44);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,44);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,44);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,44);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (81,'521',1,44);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (82,'5.1.1.2',2,44);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,44);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (45,NULL,"V2.1.3","Verifique que no se realiza el truncamiento de contraseña. Sin embargo, varios espacios consecutivos pueden ser reemplazados por un solo espacio. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",45, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,45);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,45);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,45);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,45);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (83,'521',1,45);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (84,'5.1.1.2',2,45);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,45);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (46,NULL,"V2.1.4","Verifique que cualquier carácter Unicode imprimible, incluidos los caracteres neutros del idioma, como espacios y Emojis esté permitido en las contraseñas.",46, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,46);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,46);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,46);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,46);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (85,'521',1,46);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (86,'5.1.1.2',2,46);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,46);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (47,NULL,"V2.1.5","Verifique que los usuarios pueden cambiar su contraseña.",47, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,47);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,47);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,47);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,47);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (87,'620',1,47);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (88,'5.1.1.2',2,47);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,47);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (48,NULL,"V2.1.6","Verifique que la funcionalidad de cambio de contraseña requiere la contraseña actual y nueva del usuario.",48, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,48);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,48);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,48);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,48);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (89,'620',1,48);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (90,'5.1.1.2',2,48);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,48);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (49,NULL,"V2.1.7","Verifique que las contraseñas enviadas durante el registro de la cuenta, el inicio de sesión y el cambio de contraseña se comprueban localmente contra un conjunto de contraseñas filtradas (como las 1,000 o 10,000 contraseñas más comunes que coinciden con la directiva de contraseñas del sistema) o mediante una API externa. Si se utiliza una API, una prueba de zero knowledge u otro mecanismo, asegúrese que la contraseña en texto plano no se envía ni se utiliza para verificar el estado de filtración de la contraseña. Si la contraseña esta filtrada, la aplicación debe exigir al usuario que establezca una nueva contraseña no filtrada. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",49, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,49);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,49);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,49);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,49);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (91,'521',1,49);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (92,'5.1.1.2',2,49);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,49);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (50,NULL,"V2.1.8","Verifique que se proporciona un medidor de fortaleza de la contraseña para ayudar a los usuarios a establecer una contraseña más segura.",50, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,50);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,50);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,50);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,50);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (93,'521',1,50);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (94,'5.1.1.2',2,50);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,50);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (51,NULL,"V2.1.9","Verifique que no hay reglas de composición de contraseñas que limiten el tipo de caracteres permitidos. No debe haber ningún requisito para mayúsculas o minúsculas o números o caracteres especiales. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",51, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,51);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,51);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,51);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,51);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (95,'521',1,51);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (96,'5.1.1.2',2,51);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,51);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (52,NULL,"V2.1.10","Verifique que no haya rotación periódica de credenciales o solicitud del historial de contraseñas.",52, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,52);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,52);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,52);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,52);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (97,'263',1,52);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (98,'5.1.1.2',2,52);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,52);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (53,NULL,"V2.1.11","Verifique que se permite la funcionalidad 'pegar', las aplicaciones auxiliares de contraseñas del browser y los administradores externos de contraseñas.",53, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,53);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,53);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,53);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,53);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (99,'521',1,53);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (100,'5.1.1.2',2,53);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,53);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (54,NULL,"V2.1.12","Verifique que el usuario puede elegir entre ver temporalmente toda la contraseña enmascarada o ver temporalmente el último caracter escrito de la contraseña en plataformas que no tienen esto como funcionalidad integrada.",54, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,54);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,54);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,54);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,54);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (101,'521',1,54);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (102,'5.1.1.2',2,54);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,54);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (14,"Seguridad General del Autenticador","V2.2", '',14, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (55,NULL,"V2.2.1","Verifique que los controles anti-automatización son efectivos para mitigar las pruebas de credenciales filtradas, fuerza bruta y ataques de bloqueo de cuentas. Estos controles incluyen el bloqueo de las contraseñas filtradas más comunes, bloqueos suaves, limitación de velocidad, CAPTCHA, retrasos cada vez mayores entre intentos, restricciones de direcciones IP o restricciones basadas en riesgos, como la ubicación, el primer inicio de sesión en un dispositivo, los intentos recientes de desbloquear la cuenta o similares. Verifique que no sea posible realizar más de 100 intentos fallidos por hora en una sola cuenta.",55, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,55);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,55);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,55);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,55);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (103,'307',1,55);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (104,'5.2.2 / 5.1.1.2 / 5.1.4.2 / 5.1.5.2',2,55);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,55);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (56,NULL,"V2.2.2","Verifique que el uso de autenticadores débiles (como SMS y correo electrónico) se limita a la verificación secundaria y la aprobación de transacciones y no como un reemplazo para métodos de autenticación más seguros. Verifique que se ofrezcan métodos más fuertes y no métodos débiles, que los usuarios sean conscientes de los riesgos o que se tomen las medidas adecuadas para limitar los riesgos de compromiso de la cuenta.",56, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,56);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,56);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,56);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,56);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (105,'304',1,56);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (106,'5.2.10',2,56);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,56);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (57,NULL,"V2.2.3","Verifique que las notificaciones seguras se envían a los usuarios después de las actualizaciones de los detalles de autenticación, como restablecimientos de credenciales, cambios de correo electrónico o dirección, inicio de sesión desde ubicaciones desconocidas o de riesgo. Se prefiere el uso de notificaciones push - en lugar de SMS o correo electrónico - , pero en ausencia de notificaciones push, SMS o correo electrónico es aceptable siempre y cuando no se divulgue información confidencial en la notificación.",57, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,57);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,57);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,57);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,57);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (107,'620',1,57);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (108,'',2,57);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,57);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (58,NULL,"V2.2.4","Verifique la resistencia a la suplantación contra el phishing, como el uso de la autenticación multifactor, los dispositivos criptográficos con intención (como las claves conectadas con un push para autenticarse) o en niveles AAL más altos, certificados del lado cliente.",58, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,58);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,58);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,58);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,58);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (109,'',1,58);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (110,'',2,58);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,58);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (59,NULL,"V2.2.5","Verifique que donde se separan un proveedor de servicios de credenciales (CSP) y la aplicación que comprueba la autenticación, el TLS mutuamente autenticado está en su lugar entre los dos endpoints.",59, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,59);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,59);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,59);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,59);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (111,'',1,59);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (112,'',2,59);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,59);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (60,NULL,"V2.2.6","Verifique la resistencia a la reproducción mediante el uso obligatorio de dispositivos de one-time password (OTP), autenticadores criptográficos o códigos de búsqueda.",60, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,60);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,60);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,60);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,60);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (113,'',1,60);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (114,'',2,60);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,60);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (61,NULL,"V2.2.7","Verifique la intención de autenticarse exigiendo la entrada de un token de OTP o una acción iniciada por el usuario, como una pulsación de botón en un teclado de hardware FIDO.",61, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,61);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,61);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,61);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,61);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (115,'',1,61);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (116,'',2,61);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,61);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (15,"Ciclo de Vida del Autenticador","V2.3", '',15, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (62,NULL,"V2.3.1","Verifique que las contraseñas iniciales o los códigos de activación generados por el sistema DEBEN ser generados de forma aleatoreamente segura, DEBE tener al menos 6 caracteres de largo y PUEDE contener letras y números, y expirar después de un corto período de tiempo. Estos secretos iniciales no deben permitirse su re-utilización para convertirse en la contraseña a largo plazo.",62, _binary '',15);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,62);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,62);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,62);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,62);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (117,'330',1,62);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (118,'5.1.1.2 / A.3',2,62);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,62);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (63,NULL,"V2.3.2","Verifique que se admite la inscripción y el uso de dispositivos de autenticación proporcionados por el suscriptor, como tokens U2F o FIDO.",63, _binary '',15);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,63);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,63);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,63);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,63);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (119,'6.1.3',1,63);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (120,'',2,63);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,63);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (64,NULL,"V2.3.3","Verifique que las instrucciones de renovación se envían con tiempo suficiente para renovar los autenticadores con límite de tiempo.",64, _binary '',15);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,64);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,64);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,64);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,64);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (121,'6.1.4',1,64);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (122,'',2,64);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,64);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (16,"Almacenamiento de Credenciales","V2.4", '',16, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (65,NULL,"V2.4.1","Verifique que las contraseñas se almacenan en un forma tal que resisten ataques sin conexión. Las contraseñas DEBERÁN usar hash con salto mediante una derivación de llave de una sola vía aprobada o función de hash de contraseña. Las funciones derivación de llave y hash de contraseñas toman una contraseña, una salto y un factor de costo como entradas al generar un hash de contraseña. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",65, _binary '',16);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,65);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,65);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,65);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,65);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (123,'5.1.1.2',1,65);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (124,'',2,65);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,65);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (66,NULL,"V2.4.2","Verifique que el salto tiene al menos 32 bits de longitud y que se elige arbitrariamente para minimizar las colisiones de valor de salto entre los hashes almacenados. Para cada credencial, se DEBE almacenar un único valor de salto y el hash resultante. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",66, _binary '',16);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,66);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,66);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,66);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,66);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (125,'5.1.1.2',1,66);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (126,'',2,66);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,66);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (67,NULL,"V2.4.3","Verifique que si se utiliza PBKDF2, el recuento de iteraciones DEBE ser tan grande como el rendimiento del servidor de verificación lo permita, normalmente de al menos 100,000 iteraciones. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",67, _binary '',16);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,67);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,67);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,67);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,67);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (127,'5.1.1.2',1,67);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (128,'',2,67);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,67);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (68,NULL,"V2.4.4","Verifique que si se utiliza bcrypt, el factor de trabajo DEBE ser tan grande como lo permita el rendimiento del servidor de verificación, con un mínimo de 10. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",68, _binary '',16);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,68);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,68);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,68);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,68);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (129,'5.1.1.2',1,68);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (130,'',2,68);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,68);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (69,NULL,"V2.4.5","Verifique que se realiza una iteración adicional de una función de derivación de claves, utilizando un valor de salto que es secreto y que solo conoce el verificador. Genere el valor de salto utilizando un generador de bits aleatorios aprobado [SP 800-90Ar1] y proporcione al menos la fuerza de seguridad mínima especificada en la última revisión del SP 800-131A. El valor secreto del salto se almacenará por separado de las contraseñas hash (p. ej., en un dispositivo especializado como un módulo de seguridad de hardware).",69, _binary '',16);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,69);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,69);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,69);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,69);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (131,'5.1.1.2',1,69);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (132,'',2,69);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,69);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (17,"Recuperación de Credenciales","V2.5", '',17, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (70,NULL,"V2.5.1","Verifique que un secreto de activación o recuperación inicial generado por el sistema no se envíe en texto claro al usuario. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",70, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,70);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,70);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,70);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,70);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (133,'640',1,70);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (134,'5.1.1.2',2,70);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,70);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (71,NULL,"V2.5.2","Verificar sugerencias de contraseña o autenticación basada en conocimientos (las llamadas 'preguntas secretas') no están presentes.",71, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,71);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,71);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,71);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,71);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (135,'640',1,71);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (136,'5.1.1.2',2,71);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,71);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (72,NULL,"V2.5.3","Verificar la recuperación de credenciales de contraseña no revela la contraseña actual de ninguna manera. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",72, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,72);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,72);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,72);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,72);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (137,'640',1,72);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (138,'5.1.1.2',2,72);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,72);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (73,NULL,"V2.5.4","Verificar que las cuentas compartidas o predeterminadas no estén presentes (por ejemplo. 'root', 'admin', o 'sa').",73, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,73);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,73);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,73);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,73);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (139,'16',1,73);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (140,'5.1.1.2 / A.3',2,73);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,73);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (74,NULL,"V2.5.5","Verifique que si se cambia o reemplaza un factor de autenticación, se notifica al usuario de este evento.",74, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,74);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,74);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,74);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,74);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (141,'304',1,74);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (142,'6.1.2.3',2,74);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,74);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (75,NULL,"V2.5.6","Verifique la contraseña olvidada y otras rutas de recuperación utilizan un mecanismo de recuperación seguro, como OTP basado en el tiempo (TOTP) u otro token de software, mobile push u otro mecanismo de recuperación sin conexión. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",75, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,75);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,75);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,75);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,75);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (143,'640',1,75);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (144,'5.1.1.2',2,75);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,75);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (76,NULL,"V2.5.7","Verifique que si se pierden factores de autenticación OTP o multifactor, esa evidencia de prueba de identidad se realiza al mismo nivel que durante la inscripción.",76, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,76);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,76);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,76);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,76);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (145,'6.1.2.3',1,76);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (146,'',2,76);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,76);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (18,"Verificador de Secretos de Look-up","V2.6", '',18, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (77,NULL,"V2.6.1","Verifique que los secretos de búsqueda solo se pueden usar una vez.",77, _binary '',18);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,77);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,77);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,77);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,77);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (147,'5.1.2.2',1,77);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (148,'',2,77);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,77);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (78,NULL,"V2.6.2","Verifique que los secretos de búsqueda tengan suficiente aleatoriedad (112 bits de entropía), o si menos de 112 bits de entropía, saltados con un única y aleatoria salto de 32 bits y hasheado con un hash aprobado de una sola vía.",78, _binary '',18);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,78);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,78);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,78);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,78);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (149,'5.1.2.2',1,78);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (150,'',2,78);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,78);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (79,NULL,"V2.6.3","Verifique que los secretos de búsqueda son resistentes a los ataques sin conexión, como los valores predecibles.",79, _binary '',18);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,79);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,79);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,79);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,79);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (151,'5.1.2.2',1,79);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (152,'',2,79);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,79);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (19,"Verificador Fuera de Banda","V2.7", '',19, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (80,NULL,"V2.7.1","Verifique que los autenticadores de texto sin cifrar fuera de banda tales como PSTN o SMS ('restringido por NIST') no se ofrecen de forma predeterminada, y que en primer lugar se ofrecen alternativas más sólidas, como las notificaciones push.",80, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,80);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,80);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,80);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,80);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (153,'287',1,80);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (154,'5.1.3.2',2,80);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,80);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (81,NULL,"V2.7.2","Verifique que el verificador fuera de banda expira después de 10 minutos, fuera de las solicitudes de autenticación de banda, códigos o tokens.",81, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,81);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,81);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,81);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,81);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (155,'287',1,81);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (156,'5.1.3.2',2,81);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,81);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (82,NULL,"V2.7.3","Verifique que las solicitudes de autenticación, los códigos o los tokens de verificador fuera de banda solo se pueden usar una vez y solo para la solicitud de autenticación original.",82, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,82);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,82);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,82);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,82);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (157,'287',1,82);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (158,'5.1.3.2',2,82);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,82);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (83,NULL,"V2.7.4","Verifique que el autenticador y el verificador fuera de banda se comuniquen a través de un canal independiente seguro.",83, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,83);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,83);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,83);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,83);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (159,'523',1,83);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (160,'5.1.3.2',2,83);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,83);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (84,NULL,"V2.7.5","Verifique que el verificador fuera de banda conserva solo una versión hasheada del código de autenticación.",84, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,84);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,84);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,84);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,84);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (161,'5.1.3.2',1,84);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (162,'',2,84);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,84);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (85,NULL,"V2.7.6","Verifique que el código de autenticación inicial sea generado por un generador de números aleatorios seguro, que contiene al menos 20 bits de entropía (normalmente un número aleatorio digital de seis es suficiente).",85, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,85);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,85);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,85);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,85);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (163,'5.1.3.2',1,85);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (164,'',2,85);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,85);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (20,"Verificador de Una Sola Vez","V2.8", '',20, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (86,NULL,"V2.8.1","Verifique que los OTP basados en el tiempo tienen una duración definida antes de expirar.",86, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,86);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,86);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,86);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,86);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (165,'613',1,86);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (166,'5.1.4.2 / 5.1.5.2',2,86);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,86);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (87,NULL,"V2.8.2","Verifique que las claves simétricas utilizadas para comprobar los OTP enviados están altamente protegidas, por ejemplo, mediante el uso de un módulo de seguridad de hardware o almacenamiento seguro de claves basadas en el sistema operativo.",87, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,87);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,87);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,87);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,87);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (167,'5.1.4.2 / 5.1.5.2',1,87);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (168,'',2,87);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,87);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (88,NULL,"V2.8.3","Verifique que los algoritmos criptográficos aprobados se utilizan en la generación, siembra y verificación de OTP.",88, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,88);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,88);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,88);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,88);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (169,'5.1.4.2 / 5.1.5.2',1,88);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (170,'',2,88);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,88);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (89,NULL,"V2.8.4","Verifique que el OTP basado en el tiempo se pueda utilizar solamente una vez dentro del período de validez.",89, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,89);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,89);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,89);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,89);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (171,'5.1.4.2 / 5.1.5.2',1,89);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (172,'',2,89);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,89);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (90,NULL,"V2.8.5","Verifique que si se reutiliza un token OTP multifactor basado en el tiempo durante el período de validez, se registra en logs y se rechaza con notificación segura enviada al titular del dispositivo.",90, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,90);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,90);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,90);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,90);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (173,'5.1.5.2',1,90);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (174,'',2,90);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,90);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (91,NULL,"V2.8.6","Verifique que el generador OTP de un solo factor físico pueda ser revocado en caso de robo u otra pérdida. Asegúrese de que la revocación es efectiva inmediatamente en todas las sesiones iniciadas, independientemente de la ubicación.",91, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,91);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,91);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,91);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,91);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (175,'5.2.1',1,91);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (176,'',2,91);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,91);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (92,NULL,"V2.8.7","Verifique que los autenticadores biométricos se limitan a usarlos solo como factores secundarios junto con algo que Ud. tiene y algo que Ud. sabe. L1 > o;<br> L2 > ✓;<br> L3 > 308",92, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,92);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,92);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,92);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,92);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (177,'5.2.3',1,92);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (178,'',2,92);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,92);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (21,"Verificador Criptográfico","V2.9", '',21, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (93,NULL,"V2.9.1","Verifique que las claves criptográficas utilizadas en la verificación se almacenan de forma segura y protegidas contra la divulgación, como el uso de un módulo de plataforma segura (TPM) o un módulo de seguridad de hardware (HSM) o un servicio de sistema operativo que puede utilizar este almacenamiento seguro.",93, _binary '',21);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,93);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,93);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,93);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,93);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (179,'5.1.7.2',1,93);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (180,'',2,93);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,93);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (94,NULL,"V2.9.2","Verifique que el mensaje de desafío tenga al menos 64 bits de longitud y sea estadísticamente único o sea único a lo largo de la vida útil del dispositivo criptográfico.",94, _binary '',21);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,94);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,94);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,94);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,94);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (181,'5.1.7.2',1,94);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (182,'',2,94);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,94);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (95,NULL,"V2.9.3","Verifique que se utilizan algoritmos criptográficos aprobados en la generación, la semilla y la verificación.",95, _binary '',21);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,95);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,95);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,95);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,95);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (183,'5.1.7.2',1,95);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (184,'',2,95);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,95);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (22,"Autenticación de Servicio","V2.10", '',22, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (96,NULL,"V2.10.1","Verifique que los secretos dentro del servicio no se basan en credenciales invariables, como contraseñas, claves de API o cuentas compartidas con acceso con privilegios. L1 > OS assisted;<br> L2 > HSM;<br> L3 > 287",96, _binary '',22);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,96);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,96);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,96);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,96);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (185,'5.1.1.1',1,96);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (186,'',2,96);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,96);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (97,NULL,"V2.10.2","Verifique que si las contraseñas son necesarias para la autenticación de servicio, la cuenta de servicio utilizada no es una credencial predeterminada. (p. ej., root/root o admin/admin son predeterminados en algunos servicios durante la instalación). L1 > OS assisted;<br> L2 > HSM;<br> L3 > 255",97, _binary '',22);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,97);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,97);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,97);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,97);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (187,'5.1.1.1',1,97);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (188,'',2,97);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,97);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (98,NULL,"V2.10.3","Verifique que las contraseñas se almacenan con suficiente protección para evitar ataques de recuperación sin conexión, incluido el acceso al sistema local. L1 > OS assisted;<br> L2 > HSM;<br> L3 > 522",98, _binary '',22);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,98);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,98);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,98);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,98);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (189,'5.1.1.1',1,98);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (190,'',2,98);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,98);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (99,NULL,"V2.10.4","Verifique que las contraseñas, las integraciones con bases de datos y sistemas de terceros, las semillas y los secretos internos y las claves de API se administran de forma segura y no se incluyen en el código fuente ni se almacenan en los repositorios de código fuente. Dicho almacenamiento DEBE resistir ataques fuera de línea. Se recomienda el uso de un almacén de claves de software seguro (L1), TPM de hardware o un HSM (L3) para el almacenamiento de contraseñas. L1 > OS assisted;<br> L2 > HSM;<br> L3 > 798",99, _binary '',22);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,99);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,99);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,99);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,99);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (191,'',1,99);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (192,'',2,99);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,99);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (23,"Seguridad Fundamental en la Gestión de Sesiones","V3.1", '',23, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (6,"V3 - Gestión de sesiones","Gestión de sesiones",6,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (100,NULL,"V3.1.1","Verifique que la aplicación nunca revela tokens de sesión en parámetros de dirección URL.",100, _binary '',23);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,100);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,100);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,100);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,100);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (193,'598',1,100);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (194,'',2,100);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,100);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (24,"Binding de Sesión","V3.2", '',24, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (101,NULL,"V3.2.1","Verifique que la aplicación genera un nuevo token de sesión en la autenticación de usuario. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",101, _binary '',24);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,101);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,101);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,101);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,101);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (195,'384',1,101);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (196,'7.1',2,101);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,101);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (102,NULL,"V3.2.2","Verifique que los tokens de sesión posean al menos 64 bits de entropía. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",102, _binary '',24);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,102);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,102);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,102);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,102);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (197,'331',1,102);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (198,'7.1',2,102);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,102);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (103,NULL,"V3.2.3","Verifique que la aplicación solo almacena tokens de sesión en el navegador mediante métodos seguros, como proteger las cookies adecuadamente (consulte la sección 3.4) o el almacenamiento de sesión en HTML 5.",103, _binary '',24);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,103);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,103);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,103);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,103);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (199,'539',1,103);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (200,'7.1',2,103);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,103);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (104,NULL,"V3.2.4","Verifique que los tokens de sesión se generan mediante algoritmos criptográficos aprobados. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",104, _binary '',24);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,104);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,104);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,104);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,104);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (201,'7.1',1,104);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (202,'',2,104);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,104);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (25,"Terminación de Sesión","V3.3", '',25, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (105,NULL,"V3.3.1","Verifique que el cierre de sesión y la expiración invalidan el token de sesión, de modo que el botón 'Atrás' o un usuario de confianza posterior no reanude una sesión autenticada, incluso entre los usuarios de confianza. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",105, _binary '',25);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,105);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,105);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,105);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,105);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (203,'613',1,105);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (204,'7.1',2,105);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,105);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (106,NULL,"V3.3.2","Si los autenticadores permiten a los usuarios permanecer conectados, compruebe que la re-autenticación se produce periódicamente tanto cuando se utiliza activamente o después de un período de inactividad. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering)) L1 > 30 días;<br> L2 > 12 horas o 30 minutos de inactividad, 2FA opcional;<br> L3 > 12 horas o 15 minutos de inactividad, con 2FA",106, _binary '',25);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,106);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,106);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,106);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,106);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (205,'613',1,106);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (206,'7.2',2,106);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,106);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (107,NULL,"V3.3.3","Verifique que la aplicación ofrece la opción de terminar todas las demás sesiones activas después de un cambio de contraseña correcto (incluido el cambio mediante el restablecimiento/recuperación de contraseña), y que esto es efectivo en toda la aplicación, el inicio de sesión federado (si está presente) y cualquier usuario de confianza.",107, _binary '',25);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,107);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,107);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,107);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,107);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (207,'',1,107);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (208,'',2,107);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,107);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (108,NULL,"V3.3.4","Verifique que los usuarios pueden ver y (habiendo vuelto a introducir las credenciales de inicio de sesión) cerrar sesión en cualquiera o todas las sesiones y dispositivos activos actualmente.",108, _binary '',25);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,108);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,108);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,108);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,108);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (209,'7.1',1,108);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (210,'',2,108);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,108);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (26,"Gestión de Sesión Basada en Cookie","V3.4", '',26, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (109,NULL,"V3.4.1","Verifique que los tokens de sesión basados en cookies tengan el atributo 'Secure' establecido. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",109, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,109);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,109);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,109);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,109);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (211,'614',1,109);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (212,'7.1.1',2,109);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,109);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (110,NULL,"V3.4.2","Verifique que los tokens de sesión basados en cookies tienen el atributo 'HttpOnly' establecido. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",110, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,110);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,110);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,110);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,110);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (213,'1004',1,110);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (214,'7.1.1',2,110);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,110);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (111,NULL,"V3.4.3","Verifique que los tokens de sesión basados en cookies utilizan el atributo 'SameSite' para limitar la exposición a ataques de falsificación de solicitudes entre sitios. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",111, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,111);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,111);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,111);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,111);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (215,'16',1,111);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (216,'7.1.1',2,111);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,111);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (112,NULL,"V3.4.4","Verifique que los tokens de sesión basados en cookies utilizan el prefijo '__Host-' para que las cookies solo se envíen al host que configuró inicialmente la cookie.",112, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,112);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,112);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,112);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,112);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (217,'16',1,112);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (218,'7.1.1',2,112);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,112);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (113,NULL,"V3.4.5","Verifique que si la aplicación se publica bajo un nombre de dominio con otras aplicaciones que establecen o usan cookies de sesión que podrían revelar las cookies de sesión, establezca el atributo de ruta en tokens de sesión basados en cookies utilizando la ruta más precisa posible. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",113, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,113);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,113);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,113);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,113);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (219,'16',1,113);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (220,'7.1.1',2,113);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,113);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (27,"Administración de Sesiones Basada en Tokens","V3.5", '',27, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (114,NULL,"V3.5.1","Verifique que la aplicación permite a los usuarios revocar tokens de OAuth que forman relaciones de confianza con aplicaciones vinculadas.",114, _binary '',27);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,114);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,114);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,114);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,114);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (221,'7.1.2',1,114);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (222,'',2,114);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,114);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (115,NULL,"V3.5.2","Verifique que la aplicación utiliza tokens de sesión en lugar de claves y secretos de API estáticos, excepto con implementaciones heredadas.",115, _binary '',27);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,115);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,115);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,115);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,115);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (223,'',1,115);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (224,'',2,115);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,115);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (116,NULL,"V3.5.3","Verifique que los tokens de sesión sin estado utilizan firmas digitales, cifrado y otras contramedidas para protegerse contra ataques de manipulación, envolvente, reproducción, cifrado nulo y sustitución de claves.",116, _binary '',27);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,116);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,116);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,116);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,116);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (225,'',1,116);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (226,'',2,116);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,116);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (28,"Reautenticación Federada","V3.6", '',28, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (117,NULL,"V3.6.1","Verifique que las partes de confianza (RP) especifiquen el tiempo máximo de autenticación para los proveedores de servicios de credenciales (CSP) y que los CSP vuelvan a autenticar al usuario si no han utilizado una sesión dentro de ese período.",117, _binary '',28);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,117);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,117);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,117);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,117);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (227,'',1,117);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (228,'',2,117);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,117);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (118,NULL,"V3.6.2","Verifique que los proveedores de servicios de credenciales (CSP) informan a las partes de confianza (RP) del último evento de autenticación, para permitir que los RP determinen si necesitan volver a autenticar al usuario.",118, _binary '',28);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,118);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,118);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,118);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,118);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (229,'',1,118);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (230,'',2,118);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,118);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (29,"Defensas Contra las Vulnerabilidades de Gestión de Sesiones","V3.7", '',29, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (119,NULL,"V3.7.1","Verifique que la aplicación garantiza una sesión de inicio de sesión completa y válida o requiere una re-autenticación o verificación secundaria antes de permitir cualquier transacción confidencial o modificaciones de la cuenta.",119, _binary '',29);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,119);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,119);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,119);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,119);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (231,'306',1,119);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (232,'',2,119);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,119);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (30,"Diseño de Control de Acceso General","V4.1", '',30, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (7,"V4 - Control de Acceso","Control de Acceso",7,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (120,NULL,"V4.1.1","Verifique que la aplicación aplica las reglas de control de acceso en una capa de servicio de confianza, especialmente si el control de acceso del lado cliente está presente y podría ser bypaseado.",120, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,120);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,120);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,120);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,120);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (233,'602',1,120);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (234,'',2,120);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,120);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (121,NULL,"V4.1.2","Verifique que todos los atributos de usuario y datos y la información de directiva utilizada por los controles de acceso no pueden ser manipulados por los usuarios finales a menos que se autorice específicamente.",121, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,121);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,121);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,121);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,121);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (235,'639',1,121);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (236,'',2,121);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,121);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (122,NULL,"V4.1.3","Verifique que existe el principio de privilegios mínimos: los usuarios solo deben poder acceder a funciones, archivos de datos, direcciones URL, controladores, servicios y otros recursos, para los que poseen una autorización específica. Esto implica protección contra la suplantación y elevación de privilegios. ([C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",122, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,122);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,122);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,122);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,122);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (237,'285',1,122);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (238,'',2,122);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,122);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (124,NULL,"V4.1.5","Verifique que los controles de acceso fallan de forma segura, incluso cuando se produce una excepción. ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",124, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,124);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,124);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,124);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,124);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (239,'285',1,124);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (240,'',2,124);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,124);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (31,"Control de Acceso a Nivel de Operación","V4.2", '',31, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (125,NULL,"V4.2.1","Verifique que los datos confidenciales y las API están protegidos contra ataques de referencia insegura directa de objetos (IDOR; por sus siglas en inglés) dirigidos a la creación, lectura, actualización y eliminación de registros, como la creación o actualización del registro de otra persona, la visualización de los registros de todos o la eliminación de todos los registros.",125, _binary '',31);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,125);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,125);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,125);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,125);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (241,'639',1,125);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (242,'',2,125);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,125);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (126,NULL,"V4.2.2","Verifique que la aplicación o el framework aplica un mecanismo anti-CSRF seguro para proteger la funcionalidad autenticada, y eficaz anti-automatización o anti-CSRF protege la funcionalidad no autenticada.",126, _binary '',31);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,126);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,126);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,126);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,126);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (243,'352',1,126);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (244,'',2,126);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,126);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (32,"Otras Consideraciones de Control de Acceso","V4.3", '',32, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (127,NULL,"V4.3.1","Verifique que las interfaces administrativas utilicen la autenticación multifactor adecuada para evitar el uso no autorizado.",127, _binary '',32);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,127);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,127);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,127);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,127);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (245,'419',1,127);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (246,'',2,127);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,127);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (128,NULL,"V4.3.2","Verifique que la exploración de directorios está deshabilitada a menos que se desee deliberadamente. Además, las aplicaciones no deben permitir la detección o divulgación de metadatos de archivos o directorios, como Thumbs.db, .DS_Store, .git o .svn.",128, _binary '',32);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,128);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,128);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,128);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,128);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (247,'548',1,128);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (248,'',2,128);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,128);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (129,NULL,"V4.3.3","Verifique que la aplicación tiene autorización adicional (como la autenticación paso a paso o adaptativa) para sistemas de menor valor y/ o segregación de tareas para aplicaciones de alto valor para aplicar controles antifraude según el riesgo de aplicación y fraudes previos.",129, _binary '',32);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,129);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,129);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,129);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,129);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (249,'',1,129);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (250,'',2,129);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,129);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (33,"Validación de Entrada","V5.1", '',33, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (8,"V5 - Validación, Desinfección y Codificación","Validación, Desinfección y Codificación",8,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (130,NULL,"V5.1.1","Verifique que la aplicación tiene defensas contra los ataques de contaminación de parámetros HTTP, especialmente si el marco de la aplicación no hace ninguna distinción sobre el origen de los parámetros de solicitud (GET, POST, cookies, encabezados o variables de entorno).",130, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,130);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,130);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,130);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,130);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (251,'235',1,130);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (252,'',2,130);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,130);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (131,NULL,"V5.1.2","Verifique que los frameworks protegen contra ataques de asignación de parámetros masivos o que la aplicación tiene contramedidas para proteger contra la asignación de parámetros no seguros, como marcar campos privados o similares. ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",131, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,131);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,131);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,131);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,131);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (253,'915',1,131);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (254,'',2,131);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,131);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (132,NULL,"V5.1.3","Verifique que todas las entradas (campos de formulario HTML, solicitudes REST, parámetros de URL, encabezados HTTP, cookies, archivos por lotes, fuentes RSS, etc.) se validan mediante validación positiva (lista de permitidos). ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",132, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,132);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,132);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,132);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,132);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (255,'20',1,132);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (256,'',2,132);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,132);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (133,NULL,"V5.1.4","Verifique que las estructuras de datos están fuertemente tipados y validados con un esquema definido que incluya caracteres permitidos, longitud y patrón (p. ej., números de tarjeta de crédito, direcciones de correo electrónico, números de teléfono, o validar que dos campos relacionados son razonables, como comprobar que el suburbio y el código postal coinciden). ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",133, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,133);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,133);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,133);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,133);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (257,'20',1,133);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (258,'',2,133);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,133);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (134,NULL,"V5.1.5","Verifique que las redirecciones y reenvíos de URL solo permiten destinos que aparecen en una lista de permitidos, o muestra una advertencia al redirigir a contenido potencialmente no confiable.",134, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,134);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,134);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,134);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,134);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (259,'601',1,134);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (260,'',2,134);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,134);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (34,"Requisitos de Sanitización y Sandboxing","V5.2", '',34, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (135,NULL,"V5.2.1","Verifique que todas las entradas HTML que no son de confianza de los editores WYSIWYG o similares se sanitizan correctamente con una biblioteca de sanitización HTML o una función de marco de trabajo. ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",135, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,135);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,135);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,135);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,135);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (261,'116',1,135);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (262,'',2,135);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,135);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (136,NULL,"V5.2.2","Verifique que los datos no estructurados están sanitizados para aplicar medidas de seguridad, como caracteres permitidos y longitud.",136, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,136);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,136);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,136);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,136);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (263,'138',1,136);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (264,'',2,136);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,136);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (137,NULL,"V5.2.3","Verifique que la aplicación sanitiza la entrada del usuario antes de pasar a los sistemas de correo para protegerse contra la inyección SMTP o IMAP.",137, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,137);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,137);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,137);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,137);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (265,'147',1,137);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (266,'',2,137);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,137);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (138,NULL,"V5.2.4","Verifique que la aplicación evita el uso de eval() u otras características de ejecución de código dinámico. Cuando no hay alternativa, cualquier entrada de usuario debe sanitizarse, y ponerlo en sandbox antes de ejecutarse.",138, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,138);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,138);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,138);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,138);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (267,'95',1,138);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (268,'',2,138);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,138);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (139,NULL,"V5.2.5","Verifique que la aplicación protege contra ataques de inyección de plantilla asegurándose que cualquier entrada de usuario que se incluya está sanitizada o en un lugar controlado.",139, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,139);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,139);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,139);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,139);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (269,'94',1,139);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (270,'',2,139);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,139);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (140,NULL,"V5.2.6","Verifique que la aplicación protege contra ataques SSRF, validando o desinfectando datos que no son de confianza o metadatos de archivos HTTP, como nombres de archivo y campos de entrada de URL, y utiliza listas de protocolos permitidos, dominios, rutas de acceso y puertos.",140, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,140);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,140);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,140);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,140);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (271,'918',1,140);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (272,'',2,140);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,140);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (141,NULL,"V5.2.7","Verifique que la aplicación desinfecta, deshabilita o pone en sandbox el contenido proporcionado por el usuario, con scripts de gráficos vectoriales escalables (SVG; por sus siglas en inglés) especialmente en lo que se refiere a XSS resultante de scripts en línea y foreignObject.",141, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,141);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,141);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,141);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,141);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (273,'159',1,141);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (274,'',2,141);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,141);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (142,NULL,"V5.2.8","Verifique que la aplicación desinfecta, deshabilita o pone en sandbox el contenido proporcionado por el usuario, con expresiones en lenguaje de plantilla o script como Markdown, CSS o las hojas de estilo XSL, BBCode o similares.",142, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,142);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,142);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,142);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,142);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (275,'94',1,142);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (276,'',2,142);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,142);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (35,"Codificación de Salida y Prevención de Inyección","V5.3", '',35, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (143,NULL,"V5.3.1","Verifique que la codificación de salida es relevante para el intérprete y el contexto requerido. Por ejemplo, utilice codificadores específicamente para valores HTML, atributos HTML, JavaScript, parámetros de URL, encabezados HTTP, SMTP y otros según lo requiera el contexto, especialmente a partir de entradas que no sean de confianza (por ejemplo, nombres con Unicode o apóstrofes, como ねこ u O'Hara). ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",143, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,143);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,143);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,143);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,143);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (277,'116',1,143);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (278,'',2,143);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,143);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (144,NULL,"V5.3.2","Verifique que la codificación de salida conserva el juego de caracteres y la configuración regional elegidos por el usuario, de modo que cualquier punto de caracteres Unicode sea válido y se maneje de forma segura. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",144, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,144);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,144);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,144);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,144);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (279,'176',1,144);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (280,'',2,144);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,144);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (145,NULL,"V5.3.3","Verifique que el escape de salida basado en contexto, preferiblemente automatizado - o en el peor de los casos, manual - protege contra XSS reflejado, almacenado y basado en DOM. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",145, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,145);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,145);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,145);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,145);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (281,'79',1,145);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (282,'',2,145);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,145);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (146,NULL,"V5.3.4","Verifique que la selección de datos o las consultas de base de datos (por ejemplo, SQL, HQL, ORM, NoSQL) utilizan consultas parametrizadas, ORM, marcos de entidades o están protegidas de los ataques de inyección de base de datos. ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",146, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,146);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,146);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,146);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,146);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (283,'89',1,146);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (284,'',2,146);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,146);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (147,NULL,"V5.3.5","Verifique donde los mecanismos parametrizados o más seguros no están presentes, la codificación de la salida en el contexto específico se utiliza para proteger contra ataques de inyección, como el uso de escape SQL para proteger contra la inyección SQL. ([C3, C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",147, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,147);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,147);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,147);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,147);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (285,'89',1,147);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (286,'',2,147);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,147);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (148,NULL,"V5.3.6","Verifique que la aplicación protege contra ataques de inyección de JSON, ataques de 'eval' en JSON y evaluación de expresiones de JavaScript. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",148, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,148);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,148);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,148);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,148);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (287,'830',1,148);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (288,'',2,148);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,148);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (149,NULL,"V5.3.7","Verifique que la aplicación protege contra vulnerabilidades de inyección LDAP o que se han implementado controles de seguridad específicos para evitar la inyección LDAP. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",149, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,149);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,149);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,149);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,149);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (289,'90',1,149);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (290,'',2,149);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,149);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (150,NULL,"V5.3.8","Verifique que la aplicación protege contra la inyección de comandos del sistema operativo y que las llamadas al sistema operativo utilizan consultas de sistema operativo parametrizadas o utilicen codificación de salida de línea de comandos contextual. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",150, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,150);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,150);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,150);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,150);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (291,'78',1,150);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (292,'',2,150);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,150);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (151,NULL,"V5.3.9","Verifique que la aplicación protege contra ataques de inclusión de archivos locales (LFI) o de inclusión remota de archivos (RFI).",151, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,151);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,151);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,151);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,151);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (293,'829',1,151);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (294,'',2,151);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,151);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (152,NULL,"V5.3.10","Verifique que la aplicación protege contra ataques de inyección XPath o de inyección XML. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",152, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,152);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,152);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,152);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,152);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (295,'643',1,152);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (296,'',2,152);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,152);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (36,"Memoria, Cadena y Código No Administrado","V5.4", '',36, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (153,NULL,"V5.4.1","Verifique que la aplicación utiliza cadenas de memoria segura, copia de memoria más segura y aritmética de puntero para detectar o evitar desbordamientos de pila, búffer o heap.",153, _binary '',36);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,153);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,153);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,153);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,153);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (297,'',1,153);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (298,'',2,153);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,153);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (154,NULL,"V5.4.2","Verifique que las cadenas de formato no toman entradas potencialmente hostiles y son constantes.",154, _binary '',36);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,154);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,154);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,154);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,154);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (299,'',1,154);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (300,'',2,154);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,154);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (155,NULL,"V5.4.3","Verifique que se utilizan técnicas de validación de signos, intervalos y entradas para evitar desbordamientos de enteros.",155, _binary '',36);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,155);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,155);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,155);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,155);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (301,'',1,155);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (302,'',2,155);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,155);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (37,"Prevención de Deserialización","V5.5", '',37, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (156,NULL,"V5.5.1","Verifique que los objetos serializados utilizan comprobaciones de integridad o están cifrados para evitar la creación de objetos hostiles o la manipulación de datos. ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",156, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,156);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,156);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,156);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,156);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (303,'502',1,156);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (304,'',2,156);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,156);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (157,NULL,"V5.5.2","Verifique que la aplicación restringe correctamente los analizadores XML para que solo usen la configuración más restrictiva posible y para asegurarse de que las características no seguras, como la resolución de entidades externas, están deshabilitadas para evitar ataques XML eXternal Entity (XXE).",157, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,157);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,157);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,157);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,157);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (305,'611',1,157);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (306,'',2,157);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,157);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (158,NULL,"V5.5.3","Verifique que la deserialización de datos que no son de confianza se evita o está protegida tanto en código personalizado como en bibliotecas de terceros (como analizadores JSON, XML y YAML).",158, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,158);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,158);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,158);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,158);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (307,'502',1,158);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (308,'',2,158);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,158);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (159,NULL,"V5.5.4","Verifique que al analizar JSON en exploradores o backends basados en JavaScript, JSON.parse se utiliza para analizar el documento JSON. No utilice eval() para analizar JSON.",159, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,159);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,159);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,159);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,159);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (309,'95',1,159);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (310,'',2,159);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,159);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (38,"Clasificación de Datos","V6.1", '',38, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (9,"V6 - Criptografía almacenada","Criptografía almacenada",9,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (160,NULL,"V6.1.1","Verifique que los datos privados regulados se almacenan cifrados mientras están en reposo, como información de identificación personal (PII), información personal confidencial o datos evaluados que puedan estar sujetos al RGPD de la UE.",160, _binary '',38);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,160);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,160);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,160);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,160);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (311,'',1,160);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (312,'',2,160);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,160);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (161,NULL,"V6.1.2","Verifique que los datos de salud regulados se almacenen cifrados mientras están en reposo, como registros médicos, detalles de dispositivos médicos o registros de investigación anonimizados.",161, _binary '',38);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,161);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,161);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,161);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,161);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (313,'',1,161);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (314,'',2,161);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,161);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (162,NULL,"V6.1.3","Verifique que los datos financieros regulados se almacenen cifrados mientras están en reposo, como cuentas financieras, impagos o historial de crédito, registros fiscales, historial de pagos, beneficiarios o registros de mercado o de investigación anonimizados.",162, _binary '',38);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,162);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,162);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,162);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,162);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (315,'',1,162);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (316,'',2,162);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,162);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (39,"Algoritmos","V6.2", '',39, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (163,NULL,"V6.2.1","Verifique que todos los módulos criptográficos fallan de forma segura y que los errores se gestionan de forma que no se habiliten los ataques 'Padding Oracle'.",163, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,163);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,163);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,163);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,163);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (317,'310',1,163);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (318,'',2,163);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,163);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (164,NULL,"V6.2.2","Verifique que se utilicen algoritmos, modos y bibliotecas criptográficas probados por la industria o aprobados por el gobierno, en lugar de criptografía codificada personalizada. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",164, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,164);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,164);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,164);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,164);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (319,'',1,164);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (320,'',2,164);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,164);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (165,NULL,"V6.2.3","Verifique que los modos de vector de inicialización de cifrado, configuración de cifrado y bloque están configurados de forma segura mediante los últimos consejos vigentes.",165, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,165);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,165);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,165);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,165);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (321,'',1,165);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (322,'',2,165);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,165);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (166,NULL,"V6.2.4","Verifique que los algoritmos de número aleatorio, cifrado o hash, longitudes de clave, rondas, cifrados o modos, se puedan reconfigurar, actualizar o intercambiar en cualquier momento, para protegerse contra ruptura criptográficas. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",166, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,166);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,166);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,166);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,166);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (323,'',1,166);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (324,'',2,166);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,166);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (167,NULL,"V6.2.5","Verifique que los modos de bloque inseguros conocidos (i.e., ECB, etc.), los modos de relleno (i.e. PKCS#1 v1.5, etc.), los cifrados con tamaños de bloque pequeños (i.e. Triple-DES, Blowfish, etc.), y los algoritmos de hashing débiles (i.e. MD5, SHA1, etc.) no se utilizan a menos que sea necesario para la compatibilidad con versiones anteriores.",167, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,167);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,167);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,167);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,167);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (325,'',1,167);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (326,'',2,167);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,167);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (168,NULL,"V6.2.6","Verifique que los 'nonces', los vectores de inicialización y otros números de uso único no se deben usar más de una vez con una clave de cifrado determinada. El método de generación debe ser adecuado para el algoritmo que se está utilizando.",168, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,168);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,168);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,168);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,168);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (327,'',1,168);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (328,'',2,168);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,168);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (169,NULL,"V6.2.7","Verifique que los datos cifrados se autentiquen a través de firmas, modos de cifrado autenticados, o HMAC para asegurarse de que el texto cifrado no sea alterado por una parte no autorizada.",169, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,169);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,169);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,169);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (329,'',1,169);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (330,'',2,169);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,169);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (170,NULL,"V6.2.8","Verifique que todas las operaciones criptográficas son de tiempo constante, sin operaciones de 'cortocircuito' en comparaciones, cálculos o devoluciones, para evitar fugas de información.",170, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,170);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,170);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,170);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (331,'',1,170);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (332,'',2,170);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,170);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (40,"Valores Aleatorios","V6.3", '',40, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (171,NULL,"V6.3.1","Verifique que todos los números aleatorios, nombres de archivo aleatorios, GUID aleatorios y cadenas aleatorias se generan utilizando el generador de números aleatorios criptográficamente seguro aprobado por el módulo criptográfico cuando estos valores aleatorios están destinados a no ser adivinables por un atacante.",171, _binary '',40);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,171);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,171);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,171);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,171);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (333,'',1,171);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (334,'',2,171);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,171);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (172,NULL,"V6.3.2","Verifique que los GUID aleatorios se crean mediante el algoritmo GUID v4 y un generador de números pseudoaleatorio (CSPRNG) criptográficamente seguro. Los GUID creados con otros generadores de números pseudoaleatorios pueden ser predecibles.",172, _binary '',40);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,172);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,172);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,172);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,172);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (335,'',1,172);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (336,'',2,172);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,172);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (173,NULL,"V6.3.3","Verifique que los números aleatorios se crean con la entropía adecuada incluso cuando la aplicación está bajo carga pesada, o que la aplicación se degrada correctamente en tales circunstancias.",173, _binary '',40);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,173);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,173);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,173);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (337,'',1,173);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (338,'',2,173);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,173);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (41,"Gestión de Secretos","V6.4", '',41, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (174,NULL,"V6.4.1","Verifique que una solución de gestión de secretos, como un almacén de claves, se utiliza para crear, almacenar, controlar el acceso y destruir secretos de forma segura. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",174, _binary '',41);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,174);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,174);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,174);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,174);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (339,'',1,174);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (340,'',2,174);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,174);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (175,NULL,"V6.4.2","Verifique que el material de claves no está expuesto a la aplicación, sino que utiliza un módulo de seguridad aislado como un almacén para operaciones criptográficas. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",175, _binary '',41);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,175);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,175);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,175);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,175);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (341,'',1,175);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (342,'',2,175);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,175);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (42,"Contenido de Registro de Log","V7.1", '',42, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (10,"V7 - Manejo y Registro de Errores","Manejo y Registro de Errores",10,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (176,NULL,"V7.1.1","Verifique que la aplicación no registra las credenciales ni los detalles de pago. Los tokens de sesión solo deben almacenarse en registros de forma irreversible y hasheados. ([C9, C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",176, _binary '',42);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,176);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,176);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,176);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,176);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (343,'532',1,176);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (344,'',2,176);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,176);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (177,NULL,"V7.1.2","Verifique que la aplicación no registra otros datos confidenciales tal como se definen en las leyes de privacidad locales o la política de seguridad pertinente. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",177, _binary '',42);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,177);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,177);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,177);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,177);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (345,'532',1,177);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (346,'',2,177);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,177);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (178,NULL,"V7.1.3","Verifique que la aplicación registra eventos relevantes para la seguridad, incluidos los eventos de autenticación correctos y con errores, los errores de control de acceso, los errores de deserialización y los errores de validación de entrada. ([C5, C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",178, _binary '',42);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,178);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,178);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,178);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,178);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (347,'',1,178);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (348,'',2,178);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,178);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (179,NULL,"V7.1.4","Verifique que cada evento de registro incluye la información necesaria que permitiría una investigación detallada de la escala de tiempo cuando se produce un evento. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",179, _binary '',42);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,179);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,179);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,179);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,179);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (349,'',1,179);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (350,'',2,179);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,179);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (43,"Procesamiento del Log","V7.2", '',43, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (180,NULL,"V7.2.1","Verifique que se registran todas las decisiones de autenticación, sin almacenar tokens o contraseñas de sesión confidenciales. Esto debe incluir solicitudes con los metadatos relevantes necesarios para las investigaciones de seguridad.",180, _binary '',43);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,180);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,180);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,180);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,180);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (351,'',1,180);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (352,'',2,180);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,180);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (181,NULL,"V7.2.2","Verifique que se pueden registrar todas las decisiones de control de acceso y que se registran todas las decisiones erróneas. Esto debe incluir solicitudes con los metadatos pertinentes necesarios para las investigaciones de seguridad.",181, _binary '',43);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,181);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,181);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,181);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,181);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (353,'',1,181);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (354,'',2,181);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,181);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (44,"Protección de Logs","V7.3", '',44, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (182,NULL,"V7.3.1","Verifique que todos los componentes de registro codifiquen adecuadamente los datos para evitar la inyección de registros. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",182, _binary '',44);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,182);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,182);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,182);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,182);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (355,'',1,182);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (356,'',2,182);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,182);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (184,NULL,"V7.3.3","Verifique que los registros de seguridad están protegidos contra el acceso y la modificación no autorizados. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",184, _binary '',44);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,184);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,184);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,184);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,184);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (357,'',1,184);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (358,'',2,184);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,184);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (185,NULL,"V7.3.4","Verifique que la fuente donde se lee el tiempo están sincronizados con la hora y la zona horaria correctas. Considere firmemente el registro solo en UTC si los sistemas son globales para ayudar con el análisis forense posterior al incidente. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",185, _binary '',44);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,185);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,185);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,185);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (359,'',1,185);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (360,'',2,185);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,185);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (45,"Control de Errores","V7.4", '',45, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (186,NULL,"V7.4.1","Verifique que se muestra un mensaje genérico cuando se produce un error inesperado o sensible a la seguridad, potencialmente con un identificador único que el personal de soporte técnico puede usar para investigar. ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",186, _binary '',45);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,186);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,186);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,186);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,186);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (361,'210',1,186);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (362,'',2,186);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,186);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (187,NULL,"V7.4.2","Verifique que el control de excepciones (o un equivalente funcional) se utiliza en todo el código base para tener en cuenta las condiciones de error esperadas e inesperadas. ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",187, _binary '',45);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,187);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,187);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,187);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,187);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (363,'',1,187);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (364,'',2,187);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,187);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (188,NULL,"V7.4.3","Verifique que se define un controlador de errores de 'último recurso' que detectará todas las excepciones no controladas. ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",188, _binary '',45);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,188);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,188);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,188);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,188);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (365,'',1,188);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (366,'',2,188);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,188);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (46,"Protección General de Datos","V8.1", '',46, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (11,"V8 - Protección de Datos","Protección de Datos",11,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (189,NULL,"V8.1.1","Verifique que la aplicación protege los datos confidenciales de la caché en componentes del servidor, como balanceadores de carga y cachés de aplicaciones.",189, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,189);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,189);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,189);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,189);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (367,'',1,189);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (368,'',2,189);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,189);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (190,NULL,"V8.1.2","Verifique que todas las copias almacenadas en caché o temporales de datos confidenciales almacenados en el servidor están protegidas contra el acceso no autorizado o purgadas/invalidadas después de que el usuario autorizado acceda a los datos confidenciales.",190, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,190);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,190);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,190);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,190);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (369,'',1,190);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (370,'',2,190);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,190);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (191,NULL,"V8.1.3","Verifique que la aplicación minimiza el número de parámetros de una solicitud, como campos ocultos, variables Ajax, cookies y valores de encabezado.",191, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,191);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,191);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,191);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,191);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (371,'',1,191);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (372,'',2,191);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,191);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (192,NULL,"V8.1.4","Verifique que la aplicación puede detectar y alertar sobre números anormales de solicitudes, como por IP, usuario, total por hora o día, o lo que tenga sentido para la aplicación.",192, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,192);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,192);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,192);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,192);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (373,'',1,192);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (374,'',2,192);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,192);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (193,NULL,"V8.1.5","Verifique que se realizan copias de seguridad periódicas de datos importantes y que se realizan pruebas de la restauración de datos.",193, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,193);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,193);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,193);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (375,'',1,193);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (376,'',2,193);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,193);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (194,NULL,"V8.1.6","Verifique que las copias de seguridad se almacenan de forma segura para evitar que los datos sean robados o se dañen.",194, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,194);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,194);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,194);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (377,'',1,194);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (378,'',2,194);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,194);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (47,"Protección de datos del lado del cliente","V8.2", '',47, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (195,NULL,"V8.2.1","Verifique que la aplicación establece suficientes encabezados anti-almacenamiento en caché para que los datos confidenciales no se almacenen en caché en los navegadores modernos.",195, _binary '',47);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,195);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,195);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,195);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,195);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (379,'525',1,195);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (380,'',2,195);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,195);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (196,NULL,"V8.2.2","Verifique que los datos almacenados en el almacenamiento del navegador (como localStorage, sessionStorage, IndexedDB o cookies) no contengan datos confidenciales.",196, _binary '',47);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,196);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,196);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,196);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,196);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (381,'922',1,196);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (382,'',2,196);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,196);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (197,NULL,"V8.2.3","Verifique que los datos autenticados se borran del almacenamiento del cliente, como el DOM del explorador, después de que se termine el cliente o la sesión.",197, _binary '',47);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,197);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,197);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,197);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,197);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (383,'922',1,197);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (384,'',2,197);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,197);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (48,"Datos Privados Confidenciales","V8.3", '',48, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (198,NULL,"V8.3.1","Verifique que los datos confidenciales se envían al servidor en el cuerpo o encabezados del mensaje HTTP y que los parámetros de cadena de consulta de cualquier verbo HTTP no contienen datos confidenciales.",198, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,198);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,198);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,198);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,198);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (385,'319',1,198);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (386,'',2,198);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,198);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (199,NULL,"V8.3.2","Verifique que los usuarios tienen un método para eliminar o exportar sus datos sobre demanda (on demand).",199, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,199);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,199);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,199);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,199);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (387,'212',1,199);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (388,'',2,199);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,199);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (200,NULL,"V8.3.3","Verifique que se proporciona a los usuarios un lenguaje claro con respecto a la recopilación y el uso de la información personal suministrada y que los usuarios han proporcionado el consentimiento de aceptación para el uso de esos datos antes de que se utilicen de alguna manera.",200, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,200);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,200);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,200);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,200);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (389,'285',1,200);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (390,'',2,200);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,200);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (201,NULL,"V8.3.4","Verifique que se han identificado todos los datos confidenciales creados y procesados por la aplicación, y asegúrese de que existe una política sobre cómo tratar los datos confidenciales. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",201, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,201);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,201);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,201);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,201);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (391,'200',1,201);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (392,'',2,201);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,201);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (202,NULL,"V8.3.5","Verifique que el acceso a los datos confidenciales se audita (sin registrar los datos confidenciales en sí), si los datos se recopilan en las directivas de protección de datos pertinentes o donde se requiere el registro del acceso.",202, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,202);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,202);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,202);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,202);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (393,'',1,202);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (394,'',2,202);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,202);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (203,NULL,"V8.3.6","Verifique que la información confidencial contenida en la memoria se sobrescribe tan pronto como ya no sea necesaria para mitigar los ataques de volcado de memoria, utilizando ceros o datos aleatorios.",203, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,203);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,203);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,203);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,203);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (395,'',1,203);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (396,'',2,203);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,203);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (204,NULL,"V8.3.7","Verifique que la información confidencial o privada que se requiere que se cifre, se cifra mediante algoritmos aprobados que proporcionan confidencialidad e integridad. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",204, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,204);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,204);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,204);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,204);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (397,'',1,204);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (398,'',2,204);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,204);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (205,NULL,"V8.3.8","Verifique que la información personal confidencial está sujeta a la clasificación de retención de datos, de forma que los datos antiguos o desactualizados se eliminen automáticamente, según una programación o según la situación lo requiera.",205, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,205);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,205);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,205);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,205);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (399,'',1,205);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (400,'',2,205);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,205);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (49,"Seguridad de la Comunicación del Cliente","V9.1", '',49, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (12,"V9 - Comunicación","Comunicación",12,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (206,NULL,"V9.1.1","Verifique que TLS se utilice para toda la conectividad del cliente y que no recurra a comunicaciones inseguras o no cifradas. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",206, _binary '',49);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,206);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,206);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,206);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,206);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (401,'319',1,206);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (402,'',2,206);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,206);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (207,NULL,"V9.1.2","Verifique con herramientas de prueba TLS actualizadas que solo estén habilitados los conjuntos de cifrado fuertes, con los conjuntos de cifrado más fuertes configurados como preferidos.",207, _binary '',49);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,207);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,207);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,207);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,207);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (403,'326',1,207);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (404,'',2,207);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,207);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (208,NULL,"V9.1.3","Verifique que solo estén habilitadas las últimas versiones recomendadas del protocolo TLS, como TLS 1.2 y TLS 1.3. La última versión del protocolo TLS debería ser la opción preferida.",208, _binary '',49);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,208);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,208);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,208);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,208);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (405,'326',1,208);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (406,'',2,208);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,208);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (50,"Seguridad de la Comunicación del Servidor","V9.2", '',50, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (209,NULL,"V9.2.1","Verifique que las conexiones hacia y desde el servidor utilizan certificados TLS de confianza. Cuando se utilizan certificados generados internamente o autofirmados, el servidor debe configurarse para que solo confíe en las CA internas específicas y en los certificados autofirmados específicos. Todos los demás deben ser rechazados.",209, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,209);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,209);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,209);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,209);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (407,'',1,209);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (408,'',2,209);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,209);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (210,NULL,"V9.2.2","Verifique que las comunicaciones cifradas, como TLS, se utilizan para todas las conexiones entrantes y salientes, incluidos los puertos de administración, monitoreo, la autenticación, la API o las llamadas a servicios web, la base de datos, la nube, el serverless, el mainframe, ya sean externos o de conexiones de asociados. El servidor no debe volver a protocolos inseguros o no cifrados.",210, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,210);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,210);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,210);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,210);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (409,'',1,210);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (410,'',2,210);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,210);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (211,NULL,"V9.2.3","Verifique que se autentican todas las conexiones cifradas a sistemas externos que implican información o funciones confidenciales.",211, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,211);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,211);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,211);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,211);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (411,'',1,211);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (412,'',2,211);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,211);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (212,NULL,"V9.2.4","Verifique que la adecuada revocación de certificación, como la comprobación de Online Certificate Status Protocol (OCSP), esté habilitada y configurada.",212, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,212);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,212);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,212);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,212);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (413,'',1,212);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (414,'',2,212);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,212);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (213,NULL,"V9.2.5","Verifique que se hace logging de errores de conexión TLS de back-end.",213, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,213);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,213);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,213);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (415,'',1,213);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (416,'',2,213);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,213);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (51,"Integridad de Código","V10.1", '',51, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (13,"V10 - Código Malicioso","Código Malicioso",13,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (214,NULL,"V10.1.1","Verifique que se está utilizando una herramienta de análisis de código que puede detectar código potencialmente malintencionado, como funciones de tiempo, operaciones de archivos no seguras y conexiones de red.",214, _binary '',51);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,214);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,214);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,214);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (417,'',1,214);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (418,'',2,214);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,214);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (52,"Búsqueda de Código Malicioso","V10.2", '',52, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (215,NULL,"V10.2.1","Verifique que el código fuente de la aplicación y las bibliotecas de terceros no contienen capacidades no autorizadas de recopilación de datos o de 'llamadas a casa'. Cuando detecte dicha funcionalidad, obtenga el permiso explicito del usuario para que sea operado así, antes de recopilar cualquier dato.",215, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,215);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,215);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,215);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,215);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (419,'',1,215);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (420,'',2,215);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,215);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (216,NULL,"V10.2.2","Verifique que la aplicación no solicite permisos innecesarios o excesivos para funciones o sensores relacionados con la privacidad, como contactos, cámaras, micrófonos o ubicación.",216, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,216);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,216);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,216);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,216);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (421,'',1,216);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (422,'',2,216);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,216);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (217,NULL,"V10.2.3","Verifique que el código fuente de la aplicación y las bibliotecas de terceros no contienen puertas traseras, como cuentas, claves o código ofuscado, blobs binarios no documentados, rootkits o anti-depuración, características de depuración inseguras o de otro modo funcionalidades desactualizadas, inseguras u ocultas que podrían usarse maliciosamente si se descubren.",217, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,217);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,217);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,217);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (423,'',1,217);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (424,'',2,217);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,217);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (218,NULL,"V10.2.4","Verifique que el código fuente de la aplicación y las bibliotecas de terceros no contienen bombas de tiempo mediante la búsqueda de funciones relacionadas con la fecha y la hora.",218, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,218);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,218);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,218);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (425,'',1,218);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (426,'',2,218);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,218);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (219,NULL,"V10.2.5","Verifique que el código fuente de la aplicación y las bibliotecas de terceros no contienen código malintencionado, como salami attacks, logic bypasses o bombas lógicas.",219, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,219);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,219);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,219);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (427,'',1,219);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (428,'',2,219);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,219);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (220,NULL,"V10.2.6","Verifique que el código fuente de la aplicación y las bibliotecas de terceros no contienen huevos de pascua ni ninguna otra funcionalidad potencialmente no deseada.",220, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,220);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,220);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,220);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (429,'',1,220);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (430,'',2,220);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,220);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (53,"Integridad de Aplicación","V10.3", '',53, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (221,NULL,"V10.3.1","Verifique si la aplicación tiene una característica de actualización automática de cliente o servidor, las actualizaciones deben obtenerse a través de canales seguros y firmados digitalmente. El código de actualización debe validar la firma digital de la actualización antes de instalar o ejecutar la actualización.",221, _binary '',53);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,221);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,221);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,221);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,221);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (431,'16',1,221);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (432,'',2,221);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,221);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (222,NULL,"V10.3.2","Verifique que la aplicación emplea protecciones de integridad, como la firma de código o la integridad de subrecursos. La aplicación no debe cargar ni ejecutar código de fuentes que no sean de confianza, como la carga de includes, plugins, módulos, código o bibliotecas de fuentes que no sean de confianza o de Internet.",222, _binary '',53);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,222);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,222);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,222);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,222);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (433,'353',1,222);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (434,'',2,222);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,222);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (223,NULL,"V10.3.3","Verifique que la aplicación tiene protección contra takeovers de subdominios si la aplicación se basa en entradas DNS o subdominios DNS, como nombres de dominio expirados, punteros DNS obsoletos o CNAME, proyectos expirados en repositorios de código fuente públicos o API de nube transitorias, funciones serverless o buckets de almacenamiento (*autogen-bucket-id*.cloud.example.com) o similares. Las protecciones pueden incluir asegurarse de que los nombres DNS utilizados por las aplicaciones se comprueban regularmente para comprobar su caducidad o cambio.",223, _binary '',53);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,223);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,223);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,223);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,223);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (435,'350',1,223);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (436,'',2,223);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,223);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (54,"Seguridad de la Lógica de Negocio","V11.1", '',54, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (14,"V11 - Lógica de Negocio","Lógica de Negocio",14,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (224,NULL,"V11.1.1","Verificar que la aplicación solo procesará flujos de la lógica de negocio para el mismo usuario en orden de pasos secuenciales y sin omitir pasos.",224, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,224);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,224);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,224);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,224);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (437,'841',1,224);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (438,'',2,224);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,224);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (225,NULL,"V11.1.2","Verificar que la aplicación solo procesará flujos de lógica de negocios con todos los pasos que se procesan en tiempo humano realista, es decir, las transacciones no se envían demasiado rápido.",225, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,225);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,225);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,225);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,225);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (439,'799',1,225);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (440,'',2,225);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,225);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (226,NULL,"V11.1.3","Verificar que la aplicación tiene límites adecuados para acciones o transacciones de negocio específicas, y que se aplican correctamente con base en los usuarios.",226, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,226);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,226);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,226);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,226);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (441,'770',1,226);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (442,'',2,226);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,226);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (227,NULL,"V11.1.4","Verifique que la aplicación tenga controles anti-automatización para proteger contra llamadas excesivas, como exfiltración masiva de datos, solicitudes de lógica empresarial, carga de archivos o ataques de denegación de servicio.",227, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,227);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,227);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,227);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,227);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (443,'770',1,227);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (444,'',2,227);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,227);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (228,NULL,"V11.1.5","Verificar que la aplicación tiene límites de lógica empresarial o validación para protegerse contra riesgos o amenazas empresariales probables, identificados mediante el modelado de amenazas o metodologías similares.",228, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,228);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,228);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,228);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,228);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (445,'841',1,228);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (446,'',2,228);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,228);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (229,NULL,"V11.1.6","Verifique que la aplicación no tenga problemas de 'Time Of Check to Time Of Use' (TOCTOU) u otras race conditions para operaciones sensibles.",229, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,229);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,229);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,229);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,229);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (447,'',1,229);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (448,'',2,229);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,229);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (230,NULL,"V11.1.7","Verificar que la aplicación supervisa eventos o actividades inusuales desde una perspectiva de lógica de negocios. Por ejemplo, los intentos de realizar acciones fuera de servicio o acciones que un usuario normal nunca intentaría. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",230, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,230);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,230);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,230);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,230);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (449,'',1,230);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (450,'',2,230);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,230);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (231,NULL,"V11.1.8","Verificar que la aplicación tiene alertas configurables cuando se detectan ataques automatizados o actividad inusual.",231, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,231);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,231);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,231);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,231);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (451,'',1,231);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (452,'',2,231);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,231);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (55,"Carga de Archivos","V12.1", '',55, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (15,"V12 - Archivos y Recursos","Archivos y Recursos",15,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (232,NULL,"V12.1.1","Verifique que la aplicación no aceptará archivos grandes que puedan llenar el almacenamiento o provocar una denegación de servicio.",232, _binary '',55);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,232);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,232);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,232);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,232);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (453,'400',1,232);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (454,'',2,232);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,232);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (233,NULL,"V12.1.2","Verifique que la aplicación compruebe los archivos comprimidos (p. ej. zip, gz, docx, odt) contra el tamaño máximo sin comprimir permitido y con el número máximo de archivos antes de descomprimir el archivo.",233, _binary '',55);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,233);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,233);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,233);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,233);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (455,'',1,233);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (456,'',2,233);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,233);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (234,NULL,"V12.1.3","Verifique que se aplica una cuota de tamaño de archivo y un número máximo de archivos por usuario para asegurarse de que un solo usuario no puede llenar el almacenamiento con demasiados archivos o archivos excesivamente grandes.",234, _binary '',55);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,234);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,234);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,234);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,234);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (457,'',1,234);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (458,'',2,234);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,234);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (56,"Integridad de Archivos","V12.2", '',56, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (235,NULL,"V12.2.1","Verifique que los archivos obtenidos de orígenes que no son de confianza se validan para que sean del tipo esperado en función del contenido del archivo.",235, _binary '',56);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,235);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,235);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,235);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,235);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (459,'',1,235);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (460,'',2,235);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,235);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (57,"Ejecución de Archivos","V12.3", '',57, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (236,NULL,"V12.3.1","Verifique que los metadatos del nombre de archivo enviados por el usuario no se utilizan directamente por los sistemas de archivos del sistema o del marco de trabajo y que se utiliza una API de dirección URL para proteger contra el recorrido de ruta de acceso.",236, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,236);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,236);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,236);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,236);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (461,'22',1,236);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (462,'',2,236);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,236);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (237,NULL,"V12.3.2","Verifique que los metadatos del nombre de archivo enviados por el usuario se validan o ignoran para evitar la divulgación, creación, actualización o eliminación de archivos locales (LFI).",237, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,237);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,237);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,237);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,237);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (463,'73',1,237);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (464,'',2,237);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,237);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (238,NULL,"V12.3.3","Verifique que los metadatos del nombre de archivo enviados por el usuario se validan o omiten para evitar la divulgación o ejecución de archivos remotos a través de ataques de inclusión remota de archivos (RFI) o falsificación de solicitudes del lado del servidor (SSRF).",238, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,238);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,238);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,238);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,238);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (465,'98',1,238);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (466,'',2,238);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,238);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (239,NULL,"V12.3.4","Verifique que la aplicación protege contra la descarga de archivos reflectantes (RFD) validando o ignorando los nombres de archivo enviados por el usuario en un parámetro JSON, JSONP o URL, el encabezado Content-Type de respuesta debe establecerse en text/plain y el encabezado Content-Disposition debe tener un nombre de archivo fijo.",239, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,239);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,239);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,239);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,239);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (467,'641',1,239);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (468,'',2,239);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,239);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (240,NULL,"V12.3.5","Verifique que los metadatos de archivos que no son de confianza no se utilizan directamente con la API del sistema o las bibliotecas, para proteger contra la inyección de comandos del sistema operativo.",240, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,240);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,240);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,240);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,240);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (469,'78',1,240);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (470,'',2,240);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,240);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (241,NULL,"V12.3.6","Verifique que la aplicación no incluye ni ejecuta funcionalidad desde orígenes que no son de confianza, como redes de distribución de contenido no verificadas, bibliotecas de JavaScript, bibliotecas node npm o archivos DLL server-side.",241, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,241);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,241);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,241);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,241);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (471,'',1,241);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (472,'',2,241);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,241);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (58,"Almacenamiento de Archivos","V12.4", '',58, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (242,NULL,"V12.4.1","Verifique que los archivos obtenidos de fuentes no confiables se almacenen fuera de la raíz web, con permisos limitados.",242, _binary '',58);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,242);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,242);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,242);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,242);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (473,'552',1,242);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (474,'',2,242);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,242);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (243,NULL,"V12.4.2","Verifique que los escáneres antivirus analicen los archivos obtenidos de fuentes no confiables para evitar la carga y el servicio de contenido malicioso conocido.",243, _binary '',58);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,243);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,243);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,243);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,243);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (475,'509',1,243);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (476,'',2,243);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,243);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (59,"Descarga de Archivos","V12.5", '',59, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (244,NULL,"V12.5.1","Verifique que la capa web está configurado para transmitir solo archivos con extensiones específicas, para evitar la filtración accidental de información o código fuente. Por ejemplo, los archivos de copia de seguridad (p. ej. .bak), los archivos de trabajo temporales (p. ej. .swp), los archivos comprimidos (.zip, .tar.gz, etc.) y otras extensiones utilizadas comúnmente por los editores deben bloquearse a menos que sea necesario.",244, _binary '',59);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,244);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,244);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,244);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,244);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (477,'552',1,244);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (478,'',2,244);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,244);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (245,NULL,"V12.5.2","Verifique que las solicitudes directas a los archivos cargados nunca se ejecutarán como contenido HTML/JavaScript.",245, _binary '',59);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,245);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,245);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,245);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,245);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (479,'434',1,245);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (480,'',2,245);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,245);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (60,"Protección SSRF","V12.6", '',60, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (246,NULL,"V12.6.1","Verifique que el servidor web o de aplicaciones está configurado con una lista de permisos de recursos o sistemas a los que el servidor puede enviar solicitudes o cargar datos o archivos.",246, _binary '',60);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,246);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,246);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,246);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,246);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (481,'918',1,246);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (482,'',2,246);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,246);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (61,"Seguridad Genérica de Servicios Web","V13.1", '',61, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (16,"V13 - API y Servicios Web","API y Servicios Web",16,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (247,NULL,"V13.1.1","Verifique que todos los componentes de la aplicación utilizan las mismas codificaciones y analizadores para evitar el análisis de ataques que explotan un comportamiento de análisis de archivos o URI diferente que se podría usar en ataques SSRF y RFI.",247, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,247);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,247);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,247);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,247);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (483,'116',1,247);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (484,'',2,247);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,247);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (249,NULL,"V13.1.3","Verifique que las direcciones URL de la API no exponen información confidencial, como API keys, los tokens de sesión, etc.",249, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,249);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,249);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,249);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,249);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (485,'598',1,249);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (486,'',2,249);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,249);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (250,NULL,"V13.1.4","Verifique que las decisiones de autorización se toman en el URI, se aplican mediante seguridad programática o declarativa en el controlador o enrutador, y en el nivel de recursos, se aplican mediante permisos basados en modelos.",250, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,250);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,250);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,250);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,250);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (487,'',1,250);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (488,'',2,250);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,250);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (251,NULL,"V13.1.5","Verifique que las solicitudes que contienen tipos de contenido inesperados o contenido que falta se rechazan con encabezados adecuados (estado de respuesta HTTP 406 Inaceptable o 415 Tipo de medio no compatible).",251, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,251);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,251);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,251);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,251);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (489,'',1,251);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (490,'',2,251);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,251);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (62,"Servicio Web RESTful","V13.2", '',62, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (252,NULL,"V13.2.1","Verifique que los métodos HTTP RESTful habilitados son una opción válida para el usuario o la acción, como impedir que los usuarios normales usen DELETE o PUT en recursos o API protegidos.",252, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,252);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,252);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,252);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,252);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (491,'650',1,252);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (492,'',2,252);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,252);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (253,NULL,"V13.2.2","Verifique que la validación del esquema JSON está en su lugar y se comprueba antes de aceptar la entrada.",253, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,253);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,253);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,253);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,253);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (493,'20',1,253);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (494,'',2,253);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,253);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (254,NULL,"V13.2.3","Verifique que los servicios web RESTful que utilizan cookies están protegidos contra la falsificación de solicitudes entre sitios, mediante el uso de una o más de las siguientes formas: patrón de cookies de doble envío, 'nonces' CSRF o comprobaciones de encabezado de solicitud de origen.",254, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,254);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,254);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,254);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,254);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (495,'352',1,254);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (496,'',2,254);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,254);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (256,NULL,"V13.2.5","Verifique que los servicios REST comprueben explícitamente que el tipo de contenido entrante sea el esperado, como application/xml o application/json.",256, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,256);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,256);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,256);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,256);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (497,'',1,256);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (498,'',2,256);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,256);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (257,NULL,"V13.2.6","Verifique que los encabezados de mensaje y la carga útil (payload) son confiables y no se modifican en tránsito. Requerir un cifrado seguro para el transporte (solo TLS) puede ser suficiente en muchos casos, ya que proporciona confidencialidad y protección de integridad. Las firmas digitales por cada mensaje pueden proporcionar una garantía adicional sobre las protecciones de transporte para aplicaciones de alta seguridad, pero conllevan complejidad y riesgos adicionales para compensar los beneficios.",257, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,257);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,257);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,257);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,257);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (499,'',1,257);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (500,'',2,257);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,257);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (63,"Servicio Web SOAP","V13.3", '',63, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (258,NULL,"V13.3.1","Verifique que la validación del esquema XSD tiene lugar para garantizar un documento XML formado correctamente, seguido de la validación de cada campo de entrada antes de que se realice cualquier procesamiento de esos datos.",258, _binary '',63);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,258);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,258);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,258);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,258);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (501,'20',1,258);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (502,'',2,258);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,258);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (259,NULL,"V13.3.2","Verifique que el payload del mensaje está firmada mediante WS-Security para garantizar un transporte fiable entre el cliente y el servicio.",259, _binary '',63);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,259);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,259);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,259);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,259);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (503,'',1,259);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (504,'',2,259);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,259);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (64,"GraphQL","V13.4", '',64, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (260,NULL,"V13.4.1","Verifique que se utiliza una lista de permisos de consulta o una combinación de limitación de profundidad y limitación de cantidad para evitar que GraphQL o la expresión de la capa de datos provoque una denegación de servicio (DoS) como resultado de costosas consultas anidadas. Para escenarios más avanzados, se debe usar el análisis de costos de consulta.",260, _binary '',64);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,260);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,260);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,260);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,260);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (505,'',1,260);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (506,'',2,260);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,260);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (261,NULL,"V13.4.2","Verifique que GraphQL u otra lógica de autorización de capa de datos podría implementarse en la capa de lógica de negocio en lugar de la capa GraphQL.",261, _binary '',64);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,261);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,261);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,261);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,261);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (507,'',1,261);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (508,'',2,261);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,261);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (65,"Compilación y Despliegue","V14.1", '',65, _binary '');
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (17,"V14 - Configuración","Configuración",17,_binary '', 1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (262,NULL,"V14.1.1","Verifique que los procesos de compilación y despliegue de aplicaciones se realizan de forma segura y repetible, como la automatización de CI/CD, la administración de configuración automatizada y los scripts de despliegue automatizado.",262, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,262);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,262);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,262);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (509,'',1,262);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (510,'',2,262);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,262);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (263,NULL,"V14.1.2","Verifique que los indicadores del compilador están configurados para habilitar todas las protecciones y advertencias de desbordamiento de búfer disponibles, incluida la aleatorización de la pila, la prevención de la ejecución de datos y para interrumpir la compilación si se encuentra un puntero no seguro, memoria, cadena de formato, entero u operaciones de cadena.",263, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,263);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,263);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,263);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,263);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (511,'',1,263);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (512,'',2,263);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,263);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (264,NULL,"V14.1.3","Verifique que la configuración del servidor está hardenizada según las recomendaciones del servidor de aplicaciones y los framewors en uso.",264, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,264);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,264);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,264);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,264);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (513,'',1,264);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (514,'',2,264);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,264);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (265,NULL,"V14.1.4","Verifique que la aplicación, la configuración y todas las dependencias se pueden volver a implementar mediante scripts de implementación automatizada, crearse a partir de un runbook documentado y probado en un tiempo razonable o restaurarse a partir de copias de seguridad de forma oportuna.",265, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,265);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,265);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,265);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (515,'',1,265);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (516,'',2,265);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,265);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (266,NULL,"V14.1.5","Verifique que los administradores autorizados pueden verificar la integridad de todas las configuraciones relevantes para la seguridad para detectar una posible manipulación.",266, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,266);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,266);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (517,'',1,266);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (518,'',2,266);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,266);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (66,"Dependencias","V14.2", '',66, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (267,NULL,"V14.2.1","Verifique que todos los componentes estén actualizados, preferiblemente utilizando un comprobador de dependencias durante el tiempo de compilación. ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",267, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,267);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,267);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,267);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,267);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (519,'1026',1,267);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (520,'',2,267);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,267);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (268,NULL,"V14.2.2","Verifique que se eliminen todas las funciones, documentación, aplicaciones de muestra y configuraciones innecesarias.",268, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,268);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,268);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,268);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,268);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (521,'1002',1,268);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (522,'',2,268);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,268);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (269,NULL,"V14.2.3","Verifique que si los activos de la aplicación, como bibliotecas JavaScript, fuentes CSS o web, se hospedan externamente en una red de entrega de contenido (CDN) o un proveedor externo, se usa la integridad de subrecursos (SRI) para validar la integridad del activo.",269, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,269);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,269);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,269);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,269);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (523,'829',1,269);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (524,'',2,269);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,269);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (270,NULL,"V14.2.4","Verifique que los componentes de terceros provienen de repositorios predefinidos, de confianza y mantenidos continuamente. ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",270, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,270);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,270);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,270);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,270);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (525,'',1,270);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (526,'',2,270);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,270);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (271,NULL,"V14.2.5","Verifique que se mantenga una Lista de materiales de software (SBOM; por sus siglas en inglés) de todas las bibliotecas de terceros en uso. ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",271, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,271);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,271);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,271);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (527,'',1,271);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (528,'',2,271);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,271);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (272,NULL,"V14.2.6","Verifique que la superficie de ataque se reduce mediante sandboxing o encapsular bibliotecas de terceros para exponer solo el comportamiento necesario en la aplicación. ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",272, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,272);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,272);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,272);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,272);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (529,'',1,272);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (530,'',2,272);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,272);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (67,"Divulgación de Seguridad Involuntaria","V14.3", '',67, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (274,NULL,"V14.3.2","Verifique que los modos de depuración del servidor web o de aplicaciones y del framework de aplicaciones están deshabilitados en producción para eliminar las características de depuración, las consolas de desarrollador y las divulgaciones de seguridad no deseadas.",274, _binary '',67);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,274);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,274);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,274);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,274);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (531,'497',1,274);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (532,'',2,274);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,274);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (275,NULL,"V14.3.3","Verifique que los encabezados HTTP o cualquier parte de la respuesta HTTP no exponen información detallada de la versión de los componentes del sistema.",275, _binary '',67);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,275);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,275);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,275);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,275);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (533,'200',1,275);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (534,'',2,275);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,275);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (68,"Encabezados de Seguridad HTTP","V14.4", '',68, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (276,NULL,"V14.4.1","Verifique que cada respuesta HTTP contenga un encabezado de tipo de contenido. También especifique un conjunto de caracteres seguro (p. ej., UTF-8, ISO-8859-1) si los tipos de contenido son texto/*, /+xml y aplicación/xml. El contenido debe coincidir con el encabezado de tipo de contenido proporcionado.",276, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,276);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,276);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,276);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,276);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (535,'173',1,276);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (536,'',2,276);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,276);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (277,NULL,"V14.4.2","Verifique que todas las respuestas de API contienen un encabezado Content-Disposition: attachment; filename='api.json' (u otro nombre de archivo apropiado para el tipo de contenido).",277, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,277);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,277);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,277);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,277);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (537,'116',1,277);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (538,'',2,277);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,277);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (278,NULL,"V14.4.3","Verifique que existe un encabezado de respuesta de Directiva de Seguridad de Contenido (CSP) que ayuda a mitigar el impacto de los ataques XSS como vulnerabilidades de inyección de HTML, DOM, JSON y JavaScript.",278, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,278);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,278);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,278);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,278);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (539,'1021',1,278);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (540,'',2,278);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,278);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (279,NULL,"V14.4.4","Verifique que todas las respuestas contienen un encabezado X-Content-Type-Options: nosniff.",279, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,279);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,279);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,279);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,279);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (541,'116',1,279);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (542,'',2,279);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,279);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (280,NULL,"V14.4.5","Verifique que se incluye un encabezado Strict-Transport-Security en todas las respuestas y para todos los subdominios, como Strict-Transport-Security: max-age-15724800; includeSubdomains.",280, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,280);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,280);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,280);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,280);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (543,'523',1,280);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (544,'',2,280);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,280);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (281,NULL,"V14.4.6","Verifique que se incluya adecuadamente un encabezado de Referrer-Policy para evitar exponer información confidencial en la URL a través del encabezado de referencia a partes que no son de confianza.",281, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,281);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,281);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,281);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,281);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (545,'116',1,281);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (546,'',2,281);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,281);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (282,NULL,"V14.4.7","Verifique que el contenido de una aplicación web no se puede incrustar en un sitio de terceros de forma predeterminada y que la inserción de los recursos exactos solo se permite cuando sea necesario mediante el uso adecuado de Content-Security-Polic: frame-ancestors y encabezados de respuesta X-Frame-Options.",282, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,282);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,282);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,282);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,282);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (547,'1021',1,282);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (548,'',2,282);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,282);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (69,"Validación de Encabezado de Solicitud HTTP","V14.5", '',69, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (283,NULL,"V14.5.1","Verifique que el servidor de aplicaciones solo acepta los métodos HTTP que utiliza la aplicación/API, incluidas las pre-flight OPTIONS, y los Logs/alertas en cualquier solicitud que no sea válida para el contexto de la aplicación.",283, _binary '',69);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,283);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,283);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,283);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,283);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (549,'749',1,283);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (550,'',2,283);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,283);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (284,NULL,"V14.5.2","Verifique que el encabezado Origin proporcionado no se utiliza para las decisiones de autenticación o control de acceso, ya que un atacante puede cambiar fácilmente el encabezado Origin.",284, _binary '',69);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,284);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,284);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,284);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,284);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (551,'346',1,284);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (552,'',2,284);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,284);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (285,NULL,"V14.5.3","Verifique que el encabezado Cross-Origin Resource Sharing (CORS) Access-Control-Allow-Origin utiliza una estricta lista de permisos de dominios y subdominios de confianza para que coincidan entre si, y no se permita el origen 'nulo'.",285, _binary '',69);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,285);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,285);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,285);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,285);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (553,'346',1,285);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (554,'',2,285);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,285);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (286,NULL,"V14.5.4","Verifique que la aplicación autentica los encabezados HTTP agregados por un proxy de confianza o dispositivos SSO, como un token de portador.",286, _binary '',69);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,286);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,286);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,286);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,286);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (555,'',1,286);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (556,'',2,286);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,286);

SET FOREIGN_KEY_CHECKS=1;
-- EOF
