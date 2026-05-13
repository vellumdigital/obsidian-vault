#!/bin/bash
# Revisão noturna diária — 22h (America/Sao_Paulo)
cd /root/vault
/usr/bin/claude --print "É 22h (horário de Brasília). Inicia a revisão noturna com o Rafael: conduz as 5 perguntas (nota do dia de 1 a 10, maior conquista do dia, o que poderia ter sido melhor, aprendizado do dia, prioridades de amanhã) e salva as respostas na daily note de hoje em /root/vault/Daily/$(date +%Y-%m-%d).md na seção Revisão Noturna."
