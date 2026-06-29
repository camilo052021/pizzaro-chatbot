# Arquitectura

## Decisiones tecnicas

### Por que n8n local?
- Capa gratuita de n8n Cloud expiró
- Pruebas sin costo de tokens
- Control total del entorno

### Por que Google Sheets?
- Base de datos gratis
- Facil de editar manualmente
- No requiere SQL
- Ideal para MVP

### Por que Groq?
- LLaMA 3.3 70B rapido y barato
- API key gratuita con creditos
- Mejor latencia que OpenAI

### Limitaciones conocidas
- Execute Workflow como ai_tool tiene bug en n8n local 1.86
- Solucion: HTTP Request o todo en un workflow
- En n8n Cloud funciona nativamente

## Escalabilidad futura

| Nivel | Cambio |
|-------|--------|
| 1 | Migrar a n8n Cloud |
| 2 | Reemplazar Sheets por PostgreSQL |
| 3 | Agregar WhatsApp/Telegram como triggers |
| 4 | Multi-tenant (varios restaurantes) |
