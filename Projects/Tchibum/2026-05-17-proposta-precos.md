---
created: 2026-05-17
tags: [tchibum, proposta, pricing]
type: proposta
client: Tchibum
status: rascunho
---

# Proposta de Precos — Tchibum

**Premissas:** setup R$ 20k + mensalidade R$ 6.500 (padrao Vellum). Sistema de Cobranca Anderson **incluido** no escopo. Aplicando o insight do Alfredo Soares: 3 opcoes de compromisso, desconto crescente conforme o cliente se trava por mais tempo.

## 1. Setup (fixo, independente da opcao)

- **R$ 20.000** — implementacao + estruturacao do projeto

Sugestao de cobranca:
- **A vista:** R$ 20k cheio
- **Parcelado:** 2x R$ 10k OU 3x R$ 7.333

## 2. Mensalidade — 3 opcoes

Inclui no escopo: gestao + Sistema de Cobranca Anderson (replicando o que ja roda na Centauro).

| Opcao | Compromisso | Mensalidade | Desconto | Total no periodo | Economia vs mes-a-mes |
|---|---|---|---|---|---|
| **Mes-a-mes** | sem fidelidade | R$ 6.500 | — | — | base |
| **6 meses** | 6 meses | R$ 6.175 | 5% | R$ 37.050 | −R$ 1.950 |
| **12 meses** | 12 meses | R$ 5.850 | 10% | R$ 70.200 | −R$ 7.800 |

## 3. Modelos sugeridos pra apresentar

### Opcao A — Conservador (cliente cauteloso)
- Setup parcelado 3x + mensalidade mes-a-mes
- **Total ano 1:** R$ 20k + R$ 78k = **R$ 98.000**

### Opcao B — Equilibrado (renova a cada 6m) ⭐
- Setup parcelado 2x + plano 6 meses
- **Total ano 1:** R$ 20k + R$ 37.05k + R$ 37.05k = **R$ 94.100**
- Economia vs A: R$ 3.900

### Opcao C — Cliente comprometido
- Setup a vista + plano 12 meses
- **Total ano 1:** R$ 20k + R$ 70.2k = **R$ 90.200**
- Economia vs A: R$ 7.800

## 4. Clausula de fidelidade (quebra antecipada)

Aplicada nas opcoes **6 meses** e **12 meses**:

- **Multa:** 50% do valor das parcelas restantes do periodo contratado
- **Aviso previo:** 30 dias

**Exemplo:** cliente fecha 12m por R$ 5.850/mes e cancela apos o 4o mes.
- Restantes: 8 parcelas × R$ 5.850 = R$ 46.800
- Multa: R$ 23.400

> Posicionamento na conversa: a multa nao eh punicao — eh contrapartida do desconto. Quem nao quer travar usa mes-a-mes sem multa.

## 5. Por que oferecer assim

- **Travamento de LTV** — 6/12 meses garantem receita previsivel
- **Reduz churn inicial** — primeiros 3-6 meses sao os mais arriscados
- **Cliente sente que ganha** (desconto), nao que esta preso
- **Posicionamento de estrategista** — compromisso mais longo reforca relacao continua, nao venda pontual
- **Cobranca Anderson incluida** — entrega de valor imediata, justifica o ticket

## 6. Pendencias antes de apresentar

- [ ] Decidir se mensalidade comeca junto com setup ou so apos go-live
- [ ] Validar redacao da clausula de fidelidade com referencia juridica
- [ ] Definir se renovacao apos 6m/12m eh automatica ou requer novo aceite

## Notas relacionadas
- [[Projects/Tchibum/_index]]
- [[Inbox/2026-05-17-insight-alfredo-soares-contrato-anual]]
- [[Inbox/2026-05-16-tchibum-cobranca-anderson]]
