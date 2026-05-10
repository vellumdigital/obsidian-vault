---
description: Brief matinal completo (agenda + e-mails importantes + rascunhos de resposta)
allowed-tools: Bash(cal-today:*), Bash(gmail-recent:*), Bash(gmail-thread:*), Bash(gmail-send:*), Bash(date:*), Bash(ls:*), Read, Write, Edit
---

⚠️ Use APENAS comandos bash. NAO existem ferramentas MCP nesta sessao.

## Comandos
- `cal-today today` — agenda hoje
- `gmail-recent 'is:important is:unread -category:promotions -category:social -category:updates -category:forums' 5` — e-mails importantes
- `gmail-thread <thread_id>` — ler thread completa
- `gmail-send --reply-to-thread ID --body B --dry-run` — preview de resposta
- `ls /root/agente/email-drafts/` — listar rascunhos pendentes

## Passos do brief

1. Roda `date '+%A, %d de %B de %Y'`.
2. Roda `cal-today today` pra agenda.
3. Roda `gmail-recent 'is:important is:unread -category:promotions -category:social -category:updates -category:forums' 5`.
4. Filtra mentalmente os e-mails realmente acionaveis (descarta marketing disfarcado).
5. **Para cada e-mail acionavel que precisa de resposta**:
   - Le o thread completo com `gmail-thread <thread_id>`
   - Compoe um rascunho de resposta no tom apropriado
   - Salva em `/root/agente/email-drafts/<numero-incremental>.md` no formato:
     ```markdown
     ---
     thread_id: ID
     to: destinatario
     subject: Re: ...
     status: pending
     ---

     [corpo do rascunho aqui]
     ```
6. Cria/atualiza `Daily/YYYY-MM-DD.md`.

## Formato da resposta (Telegram)

```
🌅 Bom dia, Rafael!

📅 *AGENDA HOJE* (data PT-BR)
[eventos]

📧 *E-MAILS IMPORTANTES*
[lista 1 linha cada]

✍️ *RASCUNHOS DE RESPOSTA PRONTOS*
1. Para X (sobre Y):
   _"primeiro paragrafo do rascunho..."_

2. Para Z (sobre W):
   _"primeiro paragrafo..."_

Pra enviar:
- 'envia 1' / 'envia todos' / 'envia 1 e 3'
- 'edita 2: muda Z pra W' (eu refaco e mostro)
- 'cancela 1' / 'cancela todos'

✅ *TAREFAS*
[do daily note]

💡 _[lembrete contextual]_
```

Se nao houver e-mails acionaveis, omitir secao de rascunhos.
