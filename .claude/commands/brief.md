---
description: Brief matinal com agenda real (Google Calendar) e e-mails nao lidos (Gmail)
allowed-tools: Bash(cal-today:*), Bash(gmail-recent:*), Bash(date:*), Read, Write, Edit
---

⚠️ IMPORTANTE: Use APENAS comandos bash listados abaixo. NAO existem ferramentas MCP do Gmail/Calendar nesta sessao. Os dados sao acessados pelos comandos bash.

Gera o brief matinal do Rafael com dados reais.

## Comandos disponiveis (use ESSES, nao tente MCP)

- `cal-today today` — eventos de hoje
- `cal-today tomorrow` — eventos de amanha
- `cal-today week` — eventos da semana
- `gmail-recent 'in:inbox is:unread' 5` — 5 e-mails nao lidos
- `gmail-recent 'in:inbox is:starred' 5` — 5 e-mails marcados estrela
- `date '+%A, %d de %B de %Y'` — data atual em PT-BR

## Passos

1. Roda `date '+%A, %d de %B de %Y'` para data formatada.
2. Roda `cal-today today` para listar eventos.
3. Roda `gmail-recent 'in:inbox is:unread' 5` para e-mails.
4. Verifica se `Daily/YYYY-MM-DD.md` existe; se nao, cria com template.
5. Le tarefas de `Daily/YYYY-MM-DD.md`.

## Formato da resposta

```
🌅 Bom dia, Rafael!

📅 *AGENDA HOJE* (data extenso PT-BR)
[lista de eventos com horarios, ou "Nada agendado"]

📧 *E-MAILS NAO LIDOS*
[ate 5 mais recentes - so remetente + assunto]

✅ *TAREFAS*
[tarefas do daily note ou "Nenhuma tarefa registrada"]

💡 _[lembrete contextual em uma linha]_
```
