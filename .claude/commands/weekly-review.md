---
description: Weekly review - analisa a semana e cria nota com aprendizados, conquistas e plano da proxima
allowed-tools: Bash(cal-today:*), Bash(gmail-recent:*), Bash(date:*), Read, Write, Glob, Grep
---

⚠️ Use APENAS comandos bash listados. NAO existem ferramentas MCP do Gmail/Calendar nesta sessao.

## Objetivo

Analisa os ultimos 7 dias (semana que passou) e gera weekly review estilo Tiago Forte.

## Comandos

- `date '+%A, %d de %B de %Y'` — data de hoje
- `date -d 'last monday' '+%Y-%m-%d'` — segunda passada
- `cal-today week` — eventos da semana
- `gmail-recent 'in:sent newer_than:7d' 20` — e-mails enviados
- `gmail-recent 'is:important newer_than:7d' 20` — e-mails importantes recebidos
- Glob/Grep no vault para Daily/YYYY-MM-DD.md dos ultimos 7 dias
- Glob/Grep em Projects/ para mudancas

## Passos

1. Determina periodo: segunda passada ate hoje (domingo).
2. Le todas as daily notes do periodo (`Daily/YYYY-MM-DD.md`).
3. Le mudancas em Projects/ (commits do git nos ultimos 7 dias).
4. Lista reunioes da semana (`cal-today week` retroativo).
5. Conta e-mails enviados (proxy de atividade).
6. Sintetiza:
   - **Conquistas** (o que foi entregue/concluido)
   - **Reunioes** (quem encontrou e principais decisoes)
   - **Aprendizados** (do que registrou nas dailies)
   - **Pendencias** (tarefas em aberto)
   - **Padroes/insights** (ex: foco em cliente X, falta de Y)
   - **Plano da proxima semana** (o que priorizar)

## Onde salvar

Cria nota em `/root/vault/Resources/Reviews/YYYY-MM-DD-weekly.md` com data de hoje.

Template:

```markdown
---
created: YYYY-MM-DD
tags: [review, weekly]
type: weekly-review
period_start: YYYY-MM-DD
period_end: YYYY-MM-DD
---

# Weekly Review — Semana de DD/MM a DD/MM

## TL;DR
2-3 linhas com a essencia da semana.

## 🏆 Conquistas
- O que foi entregue
- Decisoes importantes

## 🤝 Reunioes
- Lista de pessoas e contexto

## 💡 Aprendizados
- Insights da semana

## 📋 Pendencias
- Tarefas em aberto

## 🔍 Padroes / observacoes
- Tendencias percebidas

## 🎯 Foco da proxima semana
1. Prioridade 1
2. Prioridade 2
3. Prioridade 3

## Notas relacionadas
- Links pra projetos/areas
```

## Formato no Telegram

Apos salvar, envia uma versao MAIS RESUMIDA pro Telegram:

```
📊 *Weekly Review — Semana de DD/MM a DD/MM*

🏆 *Conquistas*
- ...

🤝 *Reunioes principais*
- ...

💡 *Top aprendizado*
- ...

🎯 *Foco da proxima semana*
1. ...
2. ...
3. ...

Review completa em `Resources/Reviews/YYYY-MM-DD-weekly.md`
```
