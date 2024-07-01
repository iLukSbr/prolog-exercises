%% RECURSIVIDADE
%
%  A recursividade em PROLOG exige dois predicados:
%  a) um para expressar o caso base, para parar a recursão
%  b) um predicado que apresenta a recursão. Este predicado
%     deve vir apos o caso base.
%
%  EXERCICIO
%  1. desenhe a arvore de busca para a query
%     antepassado(X, lisa)

% Caso base
antepassado(X, Y) :- progenitor(X, Y).

% Passo de reducao ao caso base
antepassado(X, Y) :- progenitor(X, Z), antepassado(Z, Y).


% abraham Simpson eh progenitor de homerSimpson
progenitor(abraham, homer).
progenitor(homer,  bart).
progenitor(homer,  lisa).
progenitor(homer,  maggie).
progenitor(marge,  bart).
progenitor(marge,  lisa).
progenitor(marge,  maggie).
progenitor(mrBouvier, marge).
progenitor(jackieBouvier, marge).

% homerSimpson eh do sexo masculino
masc(homer).
masc(bart).
masc(abraham).        %pai homer
masc(mrBouvier).      %pai da marge

%jackieBouvier eh do sexo feminino
fem(jackieBouvier).   %mae da marge
fem(penelope).        %mae homer
fem(maggie).          %filha
fem(lisa).            %filha
fem(marge).           %mae
fem(selmaBouvier).    %irma da marge
fem(pattyBouvier).    %irma da marge

% SOLUCAO EXERCICIO 1
mae(X) :- progenitor(X, _), fem(X).

% SOLUCAO EXERCICIO 2
irma(X, Y) :- progenitor(Z, X), progenitor(Z, Y), fem(X), fem(Y), X\==Y.


















