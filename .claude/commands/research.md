---
description: Pesquisa profunda na web sobre um tema e salva clipping estruturado em Resources/
argument-hint: <tema da pesquisa>
---

Pesquisa profunda sobre o tema fornecido como argumento.

Use o subagent **researcher** com a instrucao:

> Pesquisar profundamente sobre: $ARGUMENTS
>
> 1. Buscar 3+ fontes confiaveis na web
> 2. Cruzar com notas existentes no vault (buscar com Grep)
> 3. Criar nota estruturada em `/root/vault/Resources/<topico>/<titulo>.md` seguindo o template padrao do researcher
> 4. Apresentar TL;DR no chat e indicar caminho da nota completa
