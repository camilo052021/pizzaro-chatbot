# Setup paso a paso

## 1. Google Cloud Console

- Crear proyecto
- Habilitar Google Sheets API
- Crear OAuth2 credentials
- Agregar redirect URI: `http://localhost:5678/rest/oauth2-credential/callback`
- Descargar client secret

## 2. Google Sheets

Crear hoja con 4 pestanas:

### Menu
| id | name | description | price | size | category | active |

### Extras
| name | price |

### Bebidas
| id | name | description | price |

### Pedidos
| id_pedido | Cliente | Fecha | productos | precio_unitario | total |

## 3. n8n

- Importar workflows desde `/workflows/`
- Configurar credenciales en Settings → Credentials
- Activar workflows
- Probar en el chat

## 4. Prueba

Mensaje: "Muéstrame el menu"
→ Debe listar pizzas, extras y bebidas

Mensaje: "Soy Camilo, quiero 1 Margarita y 1 Agua de la Casa, confirmo"
→ Debe guardar en pestana Pedidos
