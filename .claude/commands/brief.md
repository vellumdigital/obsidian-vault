---
description: Brief matinal completo (agenda + e-mails importantes + tarefas Asana + rascunhos de resposta)
allowed-tools: Bash(cal-today:*), Bash(gmail-recent:*), Bash(gmail-thread:*), Bash(gmail-send:*), Bash(proj-list:*), Bash(date:*), Bash(ls:*), Read, Write, Edit
---

⚠️ Use APENAS comandos bash. NAO existem ferramentas MCP nesta sessao.

## Comandos
- `cal-today today` — agenda hoje
- `gmail-recent 'is:important is:unread -category:promotions -category:social -category:updates -category:forums' 5` — e-mails importantes
- `gmail-thread <id>` — ler thread
- `proj-list` — projetos com status visual e tarefas
- `date '+%A, %d de %B de %Y'`

## Passos

1. `date '+%A, %d de %B de %Y'` pra data.
2. `cal-today today` pra agenda.
3. `gmail-recent ...` pra e-mails. Filtra mentalmente ruidos.
4. `proj-list` pra status dos projetos e tarefas pendentes.
5. Pra cada e-mail acionavel, le com `gmail-thread` e compoe rascunho em `/root/agente/email-drafts/<N>.md`.
6. Cria/atualiza `Daily/YYYY-MM-DD.md`.

## Formato

```
🌅 Bom dia, Rafael!

📅 *AGENDA HOJE* (data PT-BR)
[eventos com hora ou "Nada agendado"]

📧 *E-MAILS IMPORTANTES*
[2-5 acionaveis, ou "Nenhum acionavel"]

🚀 *PROJETOS* (do proj-list)
[copiar saida resumida - so projetos ativos com tarefas]

⚡ *TOP 3 ACOES HOJE*
1. ...
2. ...
3. ...
(Pegar das proximas acoes dos projetos + e-mails prioritarios)

✍️ *RASCUNHOS DE RESPOSTA*
[se houver - lista numerada com primeiro paragrafo]

Pra enviar: 'envia 1' / 'envia todos' / 'edita 2: ...' / 'cancela 1'

💡 _[lembrete contextual]_
```

Se algo nao se aplica (sem e-mails, sem rascunhos), omite secao.
