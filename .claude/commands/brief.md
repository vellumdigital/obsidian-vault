---
description: Brief matinal com agenda real (Calendar) e e-mails IMPORTANTES (Gmail filtrado)
allowed-tools: Bash(cal-today:*), Bash(gmail-recent:*), Bash(date:*), Read, Write, Edit
---

⚠️ IMPORTANTE: Use APENAS comandos bash listados. NAO existem ferramentas MCP do Gmail/Calendar nesta sessao.

## Comandos

- `cal-today today` — eventos de hoje
- `gmail-recent 'is:important is:unread -category:promotions -category:social -category:updates -category:forums' 5` — e-mails realmente importantes
- `gmail-recent 'is:starred' 3` — e-mails que ele estrelou (acompanhamento)
- `date '+%A, %d de %B de %Y'` — data PT-BR

## Passos

1. Pega a data formatada.
2. Roda `cal-today today` para agenda.
3. Roda `gmail-recent 'is:important is:unread -category:promotions -category:social -category:updates -category:forums' 5` para e-mails importantes.
4. Cria/atualiza Daily/YYYY-MM-DD.md.
5. Le tarefas do daily note.

## Filtragem inteligente dos e-mails

Apos ler os e-mails, filtra MENTALMENTE os que sao realmente acionaveis:
- ✅ INCLUI: pessoas reais pedindo resposta, alertas de seguranca, avisos importantes (banco, governo), confirmacoes pendentes, prazos
- ❌ EXCLUI mesmo se vier: newsletters automaticas, marketing disfarcado, notificacoes de redes sociais
- Se TODOS forem ruido, escreve "Nenhum e-mail acionavel"

## Formato

```
🌅 Bom dia, Rafael!

📅 *AGENDA HOJE* (data PT-BR)
[eventos com hora ou "Nada agendado"]

📧 *E-MAILS IMPORTANTES*
[2-5 acionaveis com remetente + assunto + 1 linha do que pede, ou "Nenhum e-mail acionavel"]

✅ *TAREFAS*
[tarefas do daily note ou "Nenhuma registrada"]

💡 _[lembrete contextual em 1 linha]_
```
