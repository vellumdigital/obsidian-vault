---
description: Brief matinal completo (saudacao + agenda + e-mails + pipeline + projetos + rascunhos + top 3)
allowed-tools: Bash(cal-today:*), Bash(gmail-recent:*), Bash(gmail-thread:*), Bash(gmail-send:*), Bash(proj-list:*), Bash(pipeline:*), Bash(date:*), Bash(ls:*), Read, Write, Edit
---

⚠️ Use APENAS comandos bash. NAO existem ferramentas MCP nesta sessao.

## Comandos
- `date '+%H'` — pra escolher saudacao (Bom dia 5-12, Boa tarde 12-18, Boa noite 18-5)
- `date '+%A, %d de %B de %Y'` — data PT-BR
- `cal-today today` — agenda hoje
- `gmail-recent 'is:important is:unread -category:promotions -category:social -category:updates -category:forums' 5` — e-mails importantes
- `gmail-thread <id>` — ler thread
- `gmail-send --reply-to-thread ID --body B --dry-run` — rascunhar resposta
- `pipeline` — status do funil de clientes
- `proj-list` — projetos com tarefas

## Passos

1. Hora atual pra saudacao.
2. Data formatada.
3. Agenda do dia.
4. E-mails importantes - filtra ruidos mentalmente.
5. Pipeline (saida do comando `pipeline`).
6. Pra cada e-mail acionavel, le com `gmail-thread` e compoe rascunho em `/root/agente/email-drafts/<N>.md`.
7. Cria/atualiza `Daily/YYYY-MM-DD.md`.
8. Top 3 acoes do dia (das proximas acoes dos projetos + e-mails prioritarios).

## Formato

```
{saudacao} Rafael!

📅 *AGENDA HOJE* (data PT-BR)
[eventos com hora ou "Nada agendado"]

📧 *E-MAILS IMPORTANTES*
[2-5 acionaveis, ou "Nenhum acionavel"]

🎯 *PIPELINE*
[saida resumida de `pipeline` - so etapas com projetos]

⚡ *TOP 3 ACOES HOJE*
1. ...
2. ...
3. ...

✍️ *RASCUNHOS DE RESPOSTA* (se houver)
[lista numerada com primeiro paragrafo]
Pra enviar: 'envia 1' / 'envia todos' / 'edita 2: ...' / 'cancela 1'

💡 _[lembrete contextual em 1 linha]_
```

Omite secao se nao se aplica (sem e-mails, sem rascunhos, sem agenda).
