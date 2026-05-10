---
description: Brief matinal com agenda real (Google Calendar) e e-mails nao lidos (Gmail)
---

Gera o brief matinal do Rafael usando dados reais.

Passos:
1. Pega data de hoje em PT-BR (timezone Sao Paulo).
2. Roda `cal-today today` para listar eventos de hoje.
3. Roda `gmail-recent 'in:inbox is:unread' 5` para listar 5 e-mails nao lidos.
4. Le `Daily/YYYY-MM-DD.md` se existir, pra pegar tarefas registradas.
5. Cria/atualiza `Daily/YYYY-MM-DD.md` com o template diario se nao existir.
6. Monta resposta no formato:

```
🌅 Bom dia, Rafael!

📅 *AGENDA HOJE* (data extenso PT-BR)
[lista de eventos com horarios, ou "Nada agendado"]

📧 *E-MAILS NAO LIDOS* (X total)
[ate 5 mais recentes - so remetente + assunto, 1 linha cada]
[Se >5, mencionar "...e mais N"]

✅ *TAREFAS*
[tarefas do daily note ou "Nenhuma tarefa registrada - me manda no Telegram que eu adiciono"]

💡 _[lembrete contextual: tom motivacional, considerar dia da semana, clima do dia, etc]_
```

Use o subagent productivity-manager.
