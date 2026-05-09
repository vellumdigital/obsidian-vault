---
description: Gera brief matinal com agenda, tarefas prioritarias e e-mails importantes
---

Gera um brief matinal para o Rafael. Use o subagent productivity-manager.

Passos:
1. Pegar a data de hoje (timezone America/Sao_Paulo)
2. Verificar se ja existe `Daily/YYYY-MM-DD.md` — se nao, criar usando o template
3. Listar agenda do dia (quando integracao Calendar estiver disponivel; por enquanto, ler da daily note)
4. Listar tarefas marcadas com prioridade alta no vault (buscar por `#priority/high` ou similar)
5. Listar e-mails importantes (quando integracao Gmail estiver disponivel; por enquanto pular)
6. Apresentar no formato:

```
🌅 Bom dia, Rafael!

📅 AGENDA HOJE
[lista]

✅ TAREFAS PRIORITARIAS
[lista]

💡 LEMBRETES
[mensagens motivacionais ou lembretes registrados]
```
