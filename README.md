# Web Service 

**Web service Registro de cliente** 

* Request POST (Crear Usuario):
```
{
"user": {
		"username": "Gabriel",
		"email": "ej1234@gmail.com",
		"password": "12345678",
		"password_confirmation": "12345678"
}
}
```
* Request GET (Mostrar): 
```
localhost:3000/api/users/1
```
 Response: 
```
{
	"id": 1,
	"email": "ejemplo@gmail.com",
	"created_at": "2018-12-24T04:17:45.030Z",
	"updated_at": "2018-12-24T04:17:45.030Z",
	"username": Gabriel
}
```
* Request DELETE (Eliminar Usuario) :
```
	localhost:3000/api/users/1
```
* Request PUT (Actualizar Usuario):
```
{
	"id": 1,
	"email": "ejemplo@gmail.com",
	"created_at": "2018-12-24T04:17:45.030Z",
	"updated_at": "2018-12-24T04:17:45.030Z",
	"username": GabrielD
}
```
  Response: 
	
```
{
	"id": 1,
	"email": "ejemplo@gmail.com",
	"created_at": "2018-12-24T04:17:45.030Z",
	"updated_at": "Fecha de modificacion",
	"username": GabrielD
}
```

**Web service Registro de Transaccion**

* Request POST (Creacion de la transaccion): 
```
{
    "transaction": {
        "user_id": "1",
        "price": "122,34"
    }
}
```
 Response: 
 ```
 {
    "id": 1,
    "price": 122,34
    "user": {
        "id": 1,
        "email": "ejemplo@gmail.com",
        "created_at": "2018-12-24T04:59:45.748Z",
        "updated_at": "2018-12-24T05:06:04.960Z",
        "username": GabrielD
    }
}
```
* Request GET (Mostrar): 
```
localhost:3000/api/transactions/1

```
 Response: 
```
{
    "id": 1,
    "price": 122,34
    "user": {
        "id": 1,
        "email": "ejemplo@gmail.com",
        "created_at": "2018-12-24T04:59:45.748Z",
        "updated_at": "2018-12-24T05:06:04.960Z",
        "username": GabrielD
    }
}
```
* Request DELETE (Eliminar Transaccion): 
```
localhost:3000/api/transactions/1
```

* Resquest PUT (Actualizar Transaccion): 
```
{
    "transaction": {
        "user_id": "2",
        "price": "14,30"
    }
}
```
Response: 
```
{
    "id": 3,
    "price": 14,
    "user": {
        "id": 2,
        "email": "ejemplo@gmail.com",
        "created_at": "2018-12-24T04:59:45.748Z",
        "updated_at": "2018-12-24T05:06:04.960Z",
        "username": null
    }
}
```

 
