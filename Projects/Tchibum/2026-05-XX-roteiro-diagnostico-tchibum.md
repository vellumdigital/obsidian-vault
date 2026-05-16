---
title: 2026-05-XX-roteiro-diagnostico-tchibum
type: guide
permalink: main/projects/tchibum/2026-05-xx-roteiro-diagnostico-tchibum
tags:
- tchibum
- vellum/cliente
- diagnostico
- reuniao
---

# Roteiro de Diagnóstico — Tchibum

> Objetivo: sair da reunião com o máximo de dores documentadas. Não vender ainda — só escutar e registrar.

**Contatos:** Erli (dona) · Marina (filha, envolvida nas decisões)

---

## Dores já mapeadas

- [ ] Conciliação de PIX
- [ ] Falta de informações de SKUs de troca/venda

---

## Perguntas por área

### 💰 Financeiro / Operacional

- Como sabem se o dia fechou no azul? (fluxo de caixa, visibilidade)
- Tem inadimplência? Como controlam?
- Quantos PIX entram por dia/semana?
- Quem faz a conciliação de PIX hoje e quanto tempo gasta?
- Já teve pagamento perdido ou aplicado no cliente errado?

### 🚚 Campo / Vendedores

- Os vendedores reportam o quê, como e quando?
- Como sabem o que foi vendido vs. entregue vs. devolvido?
- Como registram as trocas hoje? (planilha, papel, nada?)
- Quem decide o que trocar no campo?
- Sabem qual SKU tem mais troca?

### 📦 Produto / Estoque

- Qual SKU dá mais dor de cabeça? Por quê?
- Tem produto parado? Produto que sempre falta?
- Já perderam venda por não saber o que tinha em estoque no cliente?

### 📊 Decisão / Gestão

- Quando precisam tomar uma decisão rápida, onde buscam a informação?
- Já perderam cliente ou venda por falta de dado?
- Hoje tem algum relatório ou painel que usam? Funciona bem?

---

## Como conduzir

1. Abre validando as dores já mapeadas: *"Ficamos de conversar mais — deixa eu confirmar o que entendi..."*
2. Usa as perguntas pra aprofundar, não pra interrogar — deixa fluir
3. Pra cada dor nova: anota e pergunta *"isso acontece com que frequência?"* e *"quem sofre mais com isso?"*
4. Não propõe solução ainda — só escuta e registra
5. Fecha combinando próximo passo com data: *"Posso mandar a proposta até X e a gente fala na Y?"*

---

## Registro de dores (preencher durante/após a reunião)

| # | Dor | Frequência | Quem sofre | Impacto estimado |
|---|-----|-----------|------------|-----------------|
| 1 | Conciliação de PIX | | | |
| 2 | Falta de info SKU troca/venda | | | |
| 3 | | | | |
| 4 | | | | |
| 5 | | | | |

---

## Winthor (TOTVS) — contexto e perguntas específicas

> O Winthor é ERP de distribuição/atacado. O dado quase sempre existe lá dentro — o problema é extração e visibilidade. Use esse conhecimento pra fazer perguntas mais precisas.

### O que o Winthor faz bem
- Pedidos, faturamento, NF-e
- Controle de estoque por filial/depósito
- Gestão de força de vendas (romaneio, visita, rota)
- Contas a receber e títulos
- Devolução e bonificação (quando bem configurado)

### Onde o Winthor costuma falhar na prática
- Relatórios nativos são travados, difíceis de customizar
- PIX não é nativo — integração depende da versão e do banco, muitas vezes é manual
- Troca/bonificação no campo: registrada no papel ou no app do vendedor, mas nem sempre bate com o ERP
- Visibilidade em tempo real é ruim — relatório fecha em D+1 ou D+2
- Dashboard/BI nativo (Winthor Analytics) existe mas raramente está configurado

### Perguntas certeiras pra fazer na reunião

**Sobre PIX:**
- Vocês recebem PIX direto na conta ou tem gateway/Pix cobrança?
- O banco manda extrato automático ou alguém baixa manualmente?
- Como registram o PIX no Winthor — baixa manual no título ou tem integração automática?
- Quem faz isso e quanto tempo por dia/semana?

**Sobre trocas e SKUs:**
- Quando o vendedor faz uma troca no campo, ele registra onde? (app, papel, WhatsApp pro gestor?)
- Essa troca entra no Winthor como NF de devolução ou vai direto pro estoque sem nota?
- Vocês conseguem ver hoje, por SKU, quantas caixas foram trocadas no mês?
- O relatório de troca que vocês consultam — vem do Winthor ou de planilha separada?

**Sobre versão e configuração:**
- Qual versão do Winthor vocês usam? (P10/P12 é legado; versões mais novas têm API)
- Vocês têm suporte/parceiro TOTVS ativo ou estão sozinhos com o sistema?
- Já tentaram extrair algum relatório do Winthor e não conseguiram? O que faltou?

### O que isso revela para a proposta
| Situação | O que indica |
|----------|-------------|
| PIX manual + Winthor sem integração | Automação de conciliação via API bancária + baixa automática de título |
| Troca registrada no papel/WhatsApp | App de campo ou formulário → integração com Winthor via API/SQL |
| Relatório vem de planilha paralela | Dashboard BI conectado direto no banco do Winthor (SQL/API) |
| Winthor desconfigurado/sem suporte | Diagnóstico mais profundo necessário — escopo pode crescer |
| Winthor versão nova com API | Integração mais barata e rápida — aumenta margem da proposta |
