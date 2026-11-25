# Assistente Lógico Pessoal

> Atividade da disciplina Linguagem de Programação e Paradigmas · UNIDAVI · 2026/2

**Aluno(a):** Leonardo Ávila
**Linguagem do sistema:** Python

## O que é

Uma base de conhecimento em Prolog (`meus_dados.pl`) com fatos e regras sobre mim e um assistente em linha de comando que consulta essa base pela ponte (`prolog.py`).

## Como executar

Requisitos: SWI-Prolog no PATH e Python 3.

```bash
# testar a ponte
python teste_ponte.py

# executar o assistente
python assistente.py
```

## Minha base

- Fatos: `eu/1`, `cursa/3`, `compromisso/3`, `sabe/2`, `gosta/2`
- Regras: `ocupado/2`, `livre/2`, `o_que_faco/3`, `pode_ensinar/1`, `dia_cheio/1` e a minha regra abaixo

## Minha regra (R6)

```prolog
posso_assistir_ou_jogar(Dia, Turno, Atividade) :-
    livre(Dia, Turno),
    (gosta(filme, Atividade); gosta(jogo, Atividade)).
```

**O que ela significa:** Verifica se posso assistir a um filme ou jogar um jogo em determinado dia e turno. O subobjetivo `livre(Dia, Turno)` confirma que não tenho aula nem compromisso nesse horário, e `(gosta(filme, Atividade); gosta(jogo, Atividade))` verifica se a atividade é um filme ou jogo da minha lista de gostos.

## Saída real do assistente

```text
=== Assistente pessoal de leonardo_avila ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Posso assistir ou jogar
0. Sair
> 1

== Minhas disciplinas ==
  - lpp (quarta, noite)
  - redes (segunda, noite)
  - desenvolvimento_para_plataformas_moveis (terca, noite)
  - gerencia_de_projetos (quinta, noite)
  - temas_emergencias_na_questao_ambiental_do_vale_do_itajai (sexta, noite)

=== Assistente pessoal de leonardo_avila ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Posso assistir ou jogar
0. Sair
> 5

== Linguagens que posso ensinar ==
  - PHP
  - SQL

=== Assistente pessoal de leonardo_avila ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Posso assistir ou jogar
0. Sair
> 8
Dia: sabado
Turno (manha, tarde, noite): noite

== Posso assistir ou jogar (sabado de noite) ==
  - godzilla
  - pacific rim
  - interestelar
  - kpop demon hunters
  - nope
  - angry birds
  - transformers
  - piratas do caribe
  - shrek
  - noiva cadaver
  - estranho mundo de jack
  - monstros vs alienigenas
  - he man
  - armored core
  - destroy all humans
  - detroit become human
  - dragons dogma 2
  - skyrim
  - lego batman
  - lego marvel
  - lego jurassic park
  - lego indiana jones
  - monster hunter
  - red dead 2
  - gta 5
  - tekken 8
  - mad max
  - nier automata
  - brutal legend
  - fallout
  - cyberpunk
  - doom
  - dragons dogma 2
  - risk of rain 2
  - baldur s gate 3
  - left for dead 1
  - left for dead 2
  - ace combat 7
  - deadlock
  - dota
  - ghost of tsushima
  - tomb raider
  - the sims
  - the witcher 3
  - sleeping dogs
  - warhammer 40k
  - qualquer jogo de lego

=== Assistente pessoal de leonardo_avila ===
1. Minhas disciplinas
2. Agenda de um dia
3. Horários livres
4. Estou livre em...?
5. Linguagens que posso ensinar
6. Meus gostos por categoria
7. Dias cheios
8. Posso assistir ou jogar
0. Sair
> 0
Até mais!
```
