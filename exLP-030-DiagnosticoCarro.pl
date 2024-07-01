%%
%% EXEMPLO DE DIAGNOSTICO
%%

% Dadas as proposicoes abaixo (fatos) que descrevem os sintomas, qual o problema do motor?
% Query: problema
% 
% Ao final de cada resposta, dê ; (ou next) para saber se existe outro problema.
%

%% Sintomas do problema
tem_comb.
motor_gira.
luzes_acendem.
barulho_agudo.

prob_bateria :- \+ motor_gira, \+ luzes_acendem, tem_comb.
prob_bomba_comb :- motor_gira, luzes_acendem, tem_comb.
prob_correia :- motor_gira, luzes_acendem, tem_comb, barulho_agudo.

problema :- prob_bateria, write('bateria!'), nl.
problema :- prob_bomba_comb, write('bomba combustivel'), nl.
problema :- prob_correia, write('correia').
