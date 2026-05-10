---
description: Briefing antes de uma reuniao - contexto do cliente/pessoa, e-mails recentes, ultima reuniao
allowed-tools: Bash(cal-event:*), Bash(gmail-recent:*), Bash(gmail-thread:*), Read, Glob, Grep, mcp__basic-memory__*
argument-hint: <event_id>
---

⚠️ Use APENAS comandos bash listados.

Argumento: $ARGUMENTS = event_id do Calendar

## Passos

1. `cal-event $ARGUMENTS` — detalhes do evento (titulo, hora, atendees, link, descricao)
2. Identificar pessoa/cliente principal (atendee diferente do contato@vellumdigital.com.br)
3. Buscar contexto no vault:
   - search_notes (Basic Memory) com nome da pessoa OU empresa
   - Glob `Projects/<cliente>/**` se cliente conhecido
4. Buscar e-mails recentes com essa pessoa:
   - `gmail-recent 'from:<email> OR to:<email> newer_than:14d' 5`
5. Identificar ultima reuniao similar:
   - search_notes com titulo do evento
6. Sintetizar briefing.

## Formato de saida (Telegram)

```
🔔 *REUNIAO EM ~1H*

📅 *<titulo>*
🕐 <hora> — <duracao>
🔗 <link Meet/Zoom se houver>

👤 *Com:* <nome/empresa>

🧠 *Contexto rapido*
- [3-4 bullets do que voce sabe sobre eles, status do projeto, etc]

📜 *Ultima vez que falaram*
- DD/MM: assunto / decisoes principais

📧 *E-mails recentes (ultimos 14d)*
- assuntos relevantes

✅ *Ja foi feito*
- entregas, decisoes anteriores

⚠️ *Pontos abertos / pendencias*
- o que ficou em aberto da ultima vez

🎯 *Sugestao de pauta pra hoje*
1. ...
2. ...
3. ...
```

Se nao houver historico (primeira reuniao), explica que eh primeiro contato e sugere pauta de descoberta.
