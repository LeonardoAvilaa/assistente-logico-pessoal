:- encoding(utf8).
:- discontiguous gosta/2.
% =====================================================================
%  meus_dados.pl · Assistente Lógico Pessoal · LPP
%  Base de conhecimento pessoal. Troque os dados de exemplo (da "alex")
%  pelos SEUS dados. Use só letras minúsculas, sem acento e sem espaço
%  nos átomos (ex.: banco_de_dados, the_office).
%  NÃO coloque dados sensíveis: CPF, endereço, telefone, saúde, etc.
% =====================================================================

% ---------- ETAPA 2 · FATOS ----------

% Quem sou eu
eu(leonardo_avila).
fase(6).
cidade(rio_do_sul).

% Dias e turnos da semana (não altere)
dia(segunda).  dia(terca).  dia(quarta).  dia(quinta).  dia(sexta).  dia(sabado).
turno(manha).  turno(tarde).  turno(noite).

% Disciplinas que curso neste semestre: cursa(Disciplina, Dia, Turno)
cursa(lpp, quarta, noite).
cursa(redes, segunda, noite).
cursa(desenvolvimento_para_plataformas_moveis, terca, noite).
cursa(gerencia_de_projetos, quinta, noite).
cursa(temas_emergencias_na_questao_ambiental_do_vale_do_itajai, sexta, noite).

% Outros compromissos: compromisso(Dia, Turno, Atividade)
compromisso(segunda, manha, trabalho).
compromisso(segunda, tarde, trabalho).
compromisso(terca, manha, trabalho).
compromisso(terca, tarde, trabalho).
compromisso(quarta, manha, trabalho).
compromisso(quarta, tarde, trabalho).
compromisso(quinta, manha, trabalho).
compromisso(quinta, tarde, trabalho).
compromisso(sexta, manha, trabalho).
compromisso(sexta, tarde, trabalho).
compromisso(sabado, manha, descanso).
compromisso(domingo, manha, descanso).

% Linguagens que sei: sabe(Linguagem, Nivel)   Nivel: basico | intermediario | avancado
sabe(python, basico).
sabe(php, avancado).
sabe(javascript, basico).
sabe(dart, basico).
sabe(sql, intermediario).

% FILMES
gosta(filme, godzilla).
gosta(filme, pacific_rim).
gosta(filme, interestelar).
gosta(filme, kpop_demon_hunters).
gosta(filme, nope).
gosta(filme, angry_birds).
gosta(filme, transformers).
gosta(filme, piratas_do_caribe).
gosta(filme, shrek).
gosta(filme, noiva_cadaver).
gosta(filme, estranho_mundo_de_jack).
gosta(filme, monstros_vs_alienigenas).
gosta(filme, he_man).

% JOGOS
gosta(jogo, armored_core).
gosta(jogo, destroy_all_humans).
gosta(jogo, detroit_become_human).
gosta(jogo, dragons_dogma_2).
gosta(jogo, skyrim).
gosta(jogo, lego_batman).
gosta(jogo, lego_marvel).
gosta(jogo, lego_jurassic_park).
gosta(jogo, lego_indiana_jones).
gosta(jogo, monster_hunter).
gosta(jogo, red_dead_2).
gosta(jogo, gta_5).
gosta(jogo, tekken_8).
gosta(jogo, mad_max).
gosta(jogo, nier_automata).
gosta(jogo, brutal_legend).
gosta(jogo, fallout).
gosta(jogo, cyberpunk).
gosta(jogo, doom).
gosta(jogo, dragons_dogma_2).
gosta(jogo, risk_of_rain_2).
gosta(jogo, baldur_s_gate_3).
gosta(jogo, left_for_dead_1).
gosta(jogo, left_for_dead_2).
gosta(jogo, ace_combat_7).
gosta(jogo, deadlock).
gosta(jogo, dota).
gosta(jogo, ghost_of_tsushima).
gosta(jogo, tomb_raider).
gosta(jogo, the_sims).
gosta(jogo, the_witcher_3).
gosta(jogo, sleeping_dogs).
gosta(jogo, warhammer_40k).
gosta(jogo, qualquer_jogo_de_lego).

% ANIMES E MANGAS
gosta(anime_manga, frieren).
gosta(anime_manga, gachiakuta).
gosta(anime_manga, hells_paradise).
gosta(anime_manga, cyberpunk).
gosta(anime_manga, kengan_ashura).
gosta(anime_manga, one_punch_man).
gosta(anime_manga, dungeon_meshi).
gosta(anime_manga, sakamoto_days).
gosta(anime_manga, jojo).
gosta(anime_manga, jujutsu_kaisen).
gosta(anime_manga, dorohedoro).
gosta(anime_manga, dororo).
gosta(anime_manga, dandadan).
gosta(anime_manga, attack_on_titan).
gosta(anime_manga, berserk).
gosta(anime_manga, chainsaw_man).
gosta(anime_manga, mononoke_kenji_nakamura).
gosta(anime_manga, kaiju_n_8).
gosta(anime_manga, mob_psycho_100).
gosta(anime_manga, dr_stone).
gosta(anime_manga, parasyte).
gosta(anime_manga, devilman).

% MUSICA
gosta(musica, pinkpantheress).
gosta(musica, suicideboys).
gosta(musica, oliver_tree).
gosta(musica, michael_jackson).
gosta(musica, lady_gaga).
gosta(musica, katy_perry).
gosta(musica, rihanna).
gosta(musica, nujabes).
gosta(musica, black_eyed_peas).
gosta(musica, lmfao).

% SERIE
gosta(serie, my_little_pony).
gosta(serie, monster_high).
gosta(serie, pantheon).
gosta(serie, problema_dos_3_corpos).
gosta(serie, breaking_bad).
gosta(serie, avatar).
gosta(serie, love_death_and_robots).
gosta(serie, black_mirror).
gosta(serie, scooby_doo).
gosta(serie, ninjago).


% ---------- ETAPA 3 · REGRAS ----------
% (cole aqui as regras R1 a R6 da Etapa 3)

% R1 · Estou ocupado se tenho aula OU compromisso (duas cláusulas = OU)
ocupado(Dia, Turno) :- cursa(_, Dia, Turno).
ocupado(Dia, Turno) :- compromisso(Dia, Turno, _).

% R2 · Estou livre se NÃO for possível provar que estou ocupado
livre(Dia, Turno) :- dia(Dia), turno(Turno), \+ ocupado(Dia, Turno).

% R3 · O que faço em um dia e turno (aula ou compromisso)
o_que_faco(Dia, Turno, Atividade) :- cursa(Atividade, Dia, Turno).
o_que_faco(Dia, Turno, Atividade) :- compromisso(Dia, Turno, Atividade).

% R4 · Posso ensinar uma linguagem se sei em nível intermediário ou avançado
pode_ensinar(Linguagem) :- sabe(Linguagem, Nivel), member(Nivel, [intermediario, avancado]).

% R5 · Dia cheio: dois turnos ou mais ocupados
dia_cheio(Dia) :- dia(Dia), findall(T, ocupado(Dia, T), Ts), sort(Ts, Unicos), length(Unicos, N), N >= 2.

% R6 · Minha Regra: assistir um filme ou jogar um jogo se estiver livre no dia e turno
posso_assistir_ou_jogar(Dia, Turno, Atividade) :-   
    livre(Dia, Turno),
    (gosta(filme, Atividade); gosta(jogo, Atividade)).
