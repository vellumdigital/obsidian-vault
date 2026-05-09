---
description: Cria ou atualiza daily note de hoje, conduz revisao noturna se chamado a noite
---

Cria/atualiza a daily note de hoje no vault.

Passos:
1. Determinar data de hoje (America/Sao_Paulo)
2. Caminho: `/root/vault/Daily/YYYY-MM-DD.md`
3. Se nao existe — criar com template (productivity-manager tem o template)
4. Se existe — abrir e mostrar conteudo atual
5. Se for noite (apos 20h) — conduzir revisao noturna fazendo as 5 perguntas e salvando respostas
6. Se for outro horario — perguntar ao usuario o que ele quer registrar

Use o subagent productivity-manager para executar.
