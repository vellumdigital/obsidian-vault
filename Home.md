---
created: 2026-05-10
tags:
- dashboard
- home
type: dashboard
cssclasses:
- dashboard
permalink: main/home
---

# 🏠 Home — Rafael Margutti

> Dashboard pessoal. Atualizado em tempo real.

## 📅 Hoje

`= dateformat(date(today), "EEEE, dd 'de' MMMM 'de' yyyy")`

[[Daily/2026-05-10|Abrir daily de hoje]]

---

## 🚀 Projetos ativos

```dataview
TABLE WITHOUT ID
  file.link AS "Projeto",
  status AS "Status",
  client AS "Cliente"
FROM "Projects"
WHERE type = "project" AND status != "concluido"
SORT file.mtime DESC
```

---

## ✅ Tarefas pendentes

```tasks
not done
limit 10
sort by priority
```

---

## 📊 Atividade recente

```dataview
LIST file.mtime
FROM "Daily" OR "Inbox" OR "Projects" OR "Resources"
WHERE file.mtime > date(today) - dur(7 days)
SORT file.mtime DESC
LIMIT 10
```

---

## 🧭 Atalhos rápidos

- [[CLAUDE|🧠 Cérebro do agente]]
- [[Daily|📅 Daily Notes]]
- [[Projects|🚀 Projetos]]
- [[Areas|📂 Áreas]]
- [[Resources|📚 Resources]]
- [[Resources/Reviews|📊 Weekly Reviews]]

---

## ⚡ Comandos úteis

| Atalho | Ação |
|---|---|
| `Cmd+Shift+D` | Daily note de hoje |
| `Cmd+P` | Paleta de comandos |
| `Cmd+O` | Buscar nota |
| `Cmd+Shift+L` | Pull do GitHub |
| `Cmd+Shift+T` | Inserir template |