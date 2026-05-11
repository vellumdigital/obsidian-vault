---
description: Processa transcricoes novas do Fireflies, cria notas no vault e extrai acoes
allowed-tools: mcp__claude_ai_Fireflies__*, Read, Write, Edit, Bash(ls:*), Bash(date:*), Bash(grep:*), Bash(echo:*), Bash(asana-add-task:*)
---

⚠️ REGRAS:
1. NUNCA processar reunioes da RD Station/Wladna (arquivado em 10/05/2026 - ver Archive/rd-station-cancelado.md). Ignorar e pular.
2. Use fireflies_get_transcripts pra listar
3. Para identificar quais ja foram processadas, leia `/root/agente/fireflies/processed.txt` (uma transcript_id por linha)

## Passos

1. Lista 10 transcripts mais recentes (fireflies_get_transcripts)
2. Para cada uma:
   a. Pula se contem RD Station, RD CRM, RD Marketing, Wladna no titulo
   b. Pula se ID ja esta em `/root/agente/fireflies/processed.txt`
   c. Pega resumo (fireflies_get_summary) e transcript (fireflies_get_transcript)
   d. Identifica cliente: matcha titulo/participantes com pastas em Projects/. Se ambiguo, usa Inbox/.
   e. Cria nota em `Projects/<cliente>/YYYY-MM-DD-reuniao-<slug>.md` (ou Inbox/) com:
      - frontmatter (tags: meeting, type: meeting, fireflies_id, date, attendees)
      - # Titulo
      - ## TL;DR (do summary)
      - ## Participantes
      - ## Decisoes principais (do summary action_items / overview)
      - ## Proximas acoes (extrair como `- [ ]`)
      - ## Notas brutas (transcript resumido se muito longo)
      - Link da gravacao
   f. Para cada acao em "Proximas acoes", se houver projeto Asana, criar tarefa via asana-add-task
   g. Adiciona o ID em /root/agente/fireflies/processed.txt
3. Reporta no formato:

```
🎙️ FIREFLIES — N novas reunioes processadas

1. [Cliente] Reuniao X (DD/MM HH:MM, Y min)
   📝 TL;DR: ...
   ✅ N acoes extraidas
   📂 Salvo em: Projects/<X>/<file>.md

[etc]
```

Se nada novo (ou tudo eh RD), responde apenas "Nenhuma reuniao nova processada."
