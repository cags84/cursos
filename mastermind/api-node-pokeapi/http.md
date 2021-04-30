Acciones que podemos definir:

- Segura -> si se puede realizar sin que modifiquen alguna información del servidor, por ejemplo las acciones de `lecturas`.
- Idempotentes -> Realizar la misma accion varias veces seguidas y espera que el servidor se quede en el mismo estado.
- Cacheables -> El cliente se pueda guardar el resultado.

Las url's definen la dirección donde estan estos datos.

GET -> Una lectura de un recurso. {seguro, cacheable y idempotente}
VERBO ENTIDAD
GET https://pokeapi.co/api/v2/pokemon/ditto

Con query params.
GET https://pokeapi.co/api/v2/pokemon?limit=10&offset=0

HEAD -> Igual que el GET pero no te da respuestas, se utiliza para cosas internas de HTTP.

POST -> Crear nuevos recursos. {}

VERBO ENTIDAD
POST https://pokeapi.co/api/v2/pokemon/ditto

Enviamos datos a traves de un body o cuerpo del mensaje, en el header del mensaje puedo enviar información (metadata) para añadir contexto de nuestras peticiones, por ejemplo:

Content-Type: "application/json",

Tambien se usa para enviar las credenciales para acceso.

token: "asdsdggfgdfgqw4f221gfdg" ....

PUT -> Reemplazar los datos que hay en un recurso, update {}

DELETE -> Sirve para eliminar el recurso, delete {}

CONNECT -> Conectarse con el servidor

OPTIONS -> Para que el servidor informe que capacidades tiene el servidor.

TRACE -> Realizar un envio de un mensaje para ver donde pasa el mensaje por un recurso completo.

PATCH -> Hacer moficicaciones parciales, a diferencia de PUT, solo podemos modificar una parte del recurso.
