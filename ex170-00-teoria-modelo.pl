% CODIFICACAO DO EXERCICIO SOBRE MODELOS
% EM LOGICA DE PRIMEIRA ORDEM
%
% Identificar onde estao a teoria e o
% modelo no codigo

% O mais proximo do que fazemos na definicao de
% MODELOS corresponde aos fatos em PROLOG que
% definem a extensao dos predicados
pessoa(maria).
pessoa(joao).
pessoa(ana).

cachorro(catita).
cachorro(toto).
cachorro(scooby).

melhorAmigoDe(joao, maria).
melhorAmigoDe(maria, ana).
melhorAmigoDe(toto, toto).
melhorAmigoDe(ana, ana).
melhorAmigoDe(catita, catita).
melhorAmigoDe(scooby, scooby).

donoDe(maria, scooby).
donoDe(maria, catita).

%
% TEORIA (regras em Prolog)
%

% todo cachorro tem um dono
% Para todo cachorro(X) -> Existe y donoDe(Y, X)
donoDe(X, Y) :- cachorro(Y).

% ha alguem cujo melhor amigo eh um cao
temPorMelhorAmigoUmCao(X) :- melhorAmigoDe(X, Y), cachorro(Y).

% o melhor amigo de joao eh um cao
joaoTemPorMelhorAmigoUmCao(X) :- melhorAmigoDe(joao, X), cachorro(X).
