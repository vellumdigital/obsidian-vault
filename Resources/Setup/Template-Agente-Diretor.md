---
created: 2026-05-12
tags:
- template
- setup
- vellum
- produto
type: template
permalink: main/resources/setup/template-agente-diretor
---

# 🤖 Template: Criar Agente Pessoal pra Diretor

Guia completo pra replicar o setup do agente do Rafael pra outros diretores (Nair, Marcio, futuros clientes Vellum).

## 📋 Pre-requisitos (do diretor)

Pra cada diretor que vai ter agente, voce precisa coletar:

| Item | Onde pegar |
|---|---|
| **Nome completo** | dele |
| **E-mail principal** | dele (preferir Gmail/Workspace pra OAuth) |
| **Conta Anthropic Claude Pro/Max** | criar em claude.ai com cartao dele |
| **Telegram instalado** no celular dele | App Store / Play Store |
| **Bot Telegram dedicado** | criar via @BotFather (1 bot por diretor) |
| **User ID Telegram** | obter via /id no bot |

## 🏗️ Stack tecnologica (a mesma do Rafael)

### Infraestrutura
- **VPS Linux** (Ubuntu 22.04, 2 vCPU, 4GB+ RAM)
- **Node.js 20 LTS** (pra Claude Code)
- **Python 3.10+** (pra bridge Python)
- **Git** (versionamento)
- **systemd** (servicos auto-restart)
- **cron** (automacoes proativas)

### Software
- **Claude Code 2.x** (agente principal)
- **python-telegram-bot 21+** (bot Telegram)
- **OpenAI Whisper API** (STT pra audio)
- **Google API Python Client** (Gmail + Calendar)
- **asana** lib (sync 2-via)
- **Basic Memory** (MCP de memoria estruturada)
- **Obsidian** (knowledge base visual)
- **GitHub privado** (sync de vault)

### Custos por agente
- **Claude Pro**: $20/mes (~45 mensagens / 5h, da pra dia inteiro)
- **Claude Max 5x**: $100/mes (5x mais, uso intenso)
- **OpenAI Whisper**: ~$5 dura meses
- **VPS compartilhada**: ~R$ 40/mes dividido entre todos
- **APIs Google**: gratis (cota generosa)
- **Asana**: gratis ate 15 usuarios
- **Fireflies**: $10/mes (opcional)

## 🗂️ Estrutura de pastas (replicar)

```
/root/agente-NOMEDIRETOR/
├── vault/                       ← Obsidian vault
│   ├── CLAUDE.md               ← personalidade
│   ├── .claude/
│   │   ├── settings.json       ← permissoes
│   │   ├── agents/             ← subagents (markdown)
│   │   └── commands/           ← slash commands
│   ├── Daily/                  ← daily notes
│   ├── Inbox/                  ← entrada rapida
│   ├── Projects/               ← projetos ativos
│   ├── Areas/                  ← areas continuas
│   ├── Resources/              ← clippings/estudos
│   └── Archive/                ← arquivado
├── telegram-bridge/
│   ├── bridge.py               ← codigo do bot
│   ├── venv/                   ← virtualenv Python
│   └── .env                    ← TELEGRAM_BOT_TOKEN, ALLOWED_USER_ID, OPENAI_API_KEY
├── google/
│   ├── credentials.json        ← OAuth Google
│   ├── token.json              ← refresh token
│   └── helpers Python (cal-today, gmail-recent, etc)
├── asana/
│   ├── .env                    ← ASANA_PAT
│   └── sync.py, push.py
├── scripts/
│   ├── proactive-brief.sh
│   ├── proactive-night-review.sh
│   ├── proactive-weekly-review.sh
│   └── send-telegram.sh
└── fireflies/                  ← opcional
    └── process.sh
```

## 📝 Estrutura PARA do vault (mesma)

- **Daily/** — daily notes (YYYY-MM-DD.md)
- **Inbox/** — entrada rapida nao-classificada
- **Projects/** — projetos com prazo
- **Areas/** — areas continuas
- **Resources/** — clippings/estudos
- **Archive/** — concluidos/inativos

## ⏰ Cron jobs proativos (copiar)

```
*/2  *  *  *  *   /root/agente-X/scripts/vault-sync.sh
0    7  *  *  *   /root/agente-X/scripts/proactive-brief.sh
0   22  *  *  *   /root/agente-X/scripts/proactive-night-review.sh
0   19 *  *  0   /root/agente-X/scripts/proactive-weekly-review.sh
*/15 *  *  *  *   /root/agente-X/scripts/pre-meeting-check.sh
*/30 *  *  *  *   /root/agente-X/asana/sync-all.sh
0    *  *  *  *   /root/agente-X/fireflies/process.sh
```

## 🎭 Subagents (4 padroes)

1. **pkm-curator** — cura/conexoes do vault
2. **researcher** — pesquisa web profunda
3. **writer** — escrita estruturada
4. **productivity-manager** — daily, brief, revisao

## ⚡ Slash commands (basicos)

- `/brief` — brief matinal
- `/daily` — daily note + revisao
- `/research <tema>`
- `/clip <url>`
- `/projetos` — pipeline visual
- `/pipeline` — funil
- `/weekly-review` — review semanal
- `/process-fireflies` — processar reunioes
- `/reset` — zera contexto da conversa

## 🛠️ Comandos shell (Python wrappers)

```
cal-today today|tomorrow|week
cal-event <gid>
cal-add --title T --start "YYYY-MM-DD HH:MM"
gmail-recent 'query' N
gmail-thread <id>
gmail-send --to/--reply-to-thread --body
asana-create-project --name X
asana-add-task --project X --name Y --due DATE
proj-list
pipeline
```

## 🚀 Roteiro de implantacao (passo a passo)

### Fase 1: Infra (30 min)
1. Acessar VPS via SSH
2. Criar pasta `/root/agente-NOMEDIRETOR/`
3. Copiar estrutura base do `/root/agente-rafael/` (Rafael)
4. Personalizar caminhos nos scripts

### Fase 2: Claude Code (15 min)
1. Logar com conta Claude Pro/Max do diretor (`claude` interativo)
2. OAuth via URL no navegador
3. Verificar `claude --version`

### Fase 3: Bot Telegram (10 min)
1. Diretor cria bot via @BotFather
2. Pega token
3. Configura .env: TELEGRAM_BOT_TOKEN, ALLOWED_USER_ID
4. Diretor manda /id no bot pra pegar user_id dele
5. Systemd service: `telegram-bridge-NOMEDIRETOR.service`

### Fase 4: Google (Gmail + Calendar) (20 min)
1. Diretor adicionado como test_user no Google Cloud Console (projeto compartilhado OU dele proprio)
2. Gerar URL OAuth com login_hint do e-mail dele
3. Ele autoriza no navegador
4. Cola callback URL → trocar por refresh_token
5. Testar com `cal-today today` e `gmail-recent`

### Fase 5: Asana (15 min)
1. Diretor cria conta Asana
2. Gera Personal Access Token (Settings → Developer → Tokens)
3. Configura `/root/agente-X/asana/.env`
4. Roda sync inicial

### Fase 6: Vault e CLAUDE.md (30-60 min)
1. Personalizar CLAUDE.md com:
   - Quem ele eh (nome, papel, empresa)
   - Estilo de comunicacao
   - Pessoas importantes
   - Objetivos
   - Rotina
   - Areas de foco
2. Criar pastas PARA
3. Templates (Daily, Projeto, Cliente, etc)
4. Subagents personalizados

### Fase 7: Cron jobs (10 min)
1. Copiar 6 scripts de cron
2. Ajustar paths pra `/root/agente-X/`
3. Adicionar ao crontab

### Fase 8: Obsidian app (cliente final)
1. Diretor instala Obsidian no Mac/PC dele
2. Clona repo GitHub privado (eou usa Self-Sync)
3. Configura plugin Obsidian Git
4. Pronto pra usar

## 🎯 Personalizacao por diretor

### Nair (exemplo)
- **Papel**: dona Grupo Margutti
- **E-mail**: (a pegar com ela)
- **Foco**: gestao Grupo Margutti, expansao
- **Familia**: marido Marcio, sobrinho Rafael
- **Empresas**: Centauro, Amam, outras
- **Tom**: mais formal? Casual? Ainda a definir
- **Pessoas importantes**: Marcio, Rafael, time Centauro/Amam
- **Reunioes fixas**: a mapear

### Customizacoes do CLAUDE.md pra Nair
```
## Sobre a Nair Margutti
- Dona Grupo Margutti (Centauro, Amam, ...)
- Marcio Margutti (marido, co-dono)
- Rafael Margutti (sobrinho, dono Vellum Digital — agencia IA)

## Foco
- Gestao Grupo Margutti
- Expansao operacao
- Relacionamento com sobrinho/Vellum como parceria potencial
```

## 💰 Modelo de cobranca (se virar produto Vellum)

### Tier basico — R$ X/mes
- Texto + audio Telegram
- Agenda + e-mail
- Daily notes + revisao
- 1 cron proativo

### Tier completo — R$ Y/mes
- + Fireflies (reunioes auto)
- + Asana sync 2-via
- + Brief automatico
- + Pre-meeting briefing
- + Weekly review

### Setup unico — R$ Z (uma vez)
- Configuracao completa
- Personalizacao do CLAUDE.md
- Treinamento de uso

## 🔒 Seguranca e privacidade

1. **Cada agente isolado em pasta propria** (sem cross-contamination)
2. **Permissoes restritas** no settings.json (deny rm -rf, sudo, curl|sh)
3. **.env com chmod 600** (so root le)
4. **Vault no GitHub privado** (cada diretor com seu repo)
5. **Telegram bot user_id whitelist** (so o diretor acessa)
6. **API keys rotacionaveis** (revogar e regerar quando necessario)

## ⚠️ Avisos importantes

- **Cada agente consome tokens do plano Claude pessoal** — bom isolar custos
- **Brief 7h consome cota** — ajustar se diretor nao usar muito (ou desligar)
- **Asana PAT eh pessoal** — diretor tem que confiar em compartilhar
- **OAuth Google** funciona melhor que IMAP/SMTP (sem senha em texto)

## 📅 Tempo total estimado

Por diretor (Nair, por exemplo):
- Setup tecnico: **2-3 horas** (clonar + adaptar + testar)
- Personalizacao CLAUDE.md: **1-2 horas** (entender contexto dele)
- Onboarding do diretor: **30 min** (mostrar como usar)

**Total**: meio dia por diretor.

## 🎁 Bonus: shared workspace

Pra Marcio + Nair (donos do Grupo Margutti) — pode ter um vault compartilhado:

```
/root/shared/grupo-margutti/
├── empresas/
│   ├── Centauro/
│   ├── Amam/
│   └── ...
├── financeiro/
└── decisoes/
```

Cada agente le esse shared (somente leitura) + tem seu vault privado.
Atualizacoes ali sao instantaneas pra todos.

## 🔗 Notas relacionadas
- [[CLAUDE]] — exemplo de personalizacao
- [[Projects/Centauro/_index]] — projeto operacional Grupo Margutti