# 🍕 Pizzaro - Chatbot de Pedidos con n8n + Groq + Google Sheets

Chatbot conversacional para pizzeria construido con n8n, modelo LLaMA 3.3 via Groq, y Google Sheets como base de datos.

## Arquitectura

```
[Usuario] → [n8n Chat Trigger] → [AI Agent + Groq] → [Google Sheets]
                                      ↓
                              [Lectura/Escritura de pedidos]
```

## Workflows

| Workflow | Descripcion | ID |
|----------|-------------|-----|
| `main-chatbot.json` | Flujo principal con agente conversacional | - |
| `get-products.json` | Lee menu desde Google Sheets | plI5xlrSdsYdi9JX |
| `save-order.json` | Guarda pedidos en Google Sheets | j1bXm3gOVn1POMoC |

## Tecnologias

- **n8n** - Automatizacion y orquestacion
- **Groq** - Inferencia LLaMA 3.3 70B
- **Google Sheets API** - Base de datos ligera
- **OAuth2** - Autenticacion con Google

## Setup

1. Importar los 3 workflows en n8n
2. Configurar credenciales: Groq API + Google Sheets OAuth2
3. Crear hoja de Google Sheets con pestanas: Menu, Extras, Bebidas, Pedidos
4. Compartir hoja con cuenta de servicio OAuth
5. Activar workflows

## Estado

✅ Funcional en local. Pendiente migracion a n8n Cloud para produccion.

## Autor

Camilo - Practica de automatizacion con IA
