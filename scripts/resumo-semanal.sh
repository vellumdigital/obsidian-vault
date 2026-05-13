#!/bin/bash
# Resumo semanal — toda sexta às 21h07 (America/Sao_Paulo)
cd /root/vault
/usr/bin/claude --print "É sexta-feira. Gera o resumo semanal do Rafael: lê as daily notes da semana em /root/vault/Daily/ (últimos 7 dias), consolida conquistas, aprendizados e prioridades cumpridas, e cria uma nota de revisão semanal em /root/vault/Resources/Weekly/$(date +%Y-W%V).md com o resumo estruturado e plano para a próxima semana."
