---
description: Salva URL como clipping estruturado em Resources/, com resumo gerado
argument-hint: <url>
---

Salva a URL fornecida como clipping no vault.

Passos:
1. WebFetch da URL: $ARGUMENTS
2. Extrair: titulo, autor (se houver), data, conteudo principal
3. Gerar resumo de 3-5 paragrafos preservando ideias-chave
4. Identificar topico para escolher subpasta de Resources/
5. Criar nota em `/root/vault/Resources/<topico>/<titulo-slug>.md` com:

```markdown
---
created: YYYY-MM-DD
tags: [clipping, area/subtopico]
type: clipping
source: <url>
author: <autor se houver>
date_published: <data se houver>
---

# Titulo

> Fonte: [<dominio>](<url>)

## TL;DR
2-3 linhas.

## Resumo
3-5 paragrafos preservando ideias-chave.

## Citacoes notaveis
- "..." (paragrafo X)

## Notas relacionadas
[[NotaY]] (se houver)

## Por que salvei
1-2 linhas — relevancia para o Rafael.
```

6. Confirmar com o caminho do arquivo criado
