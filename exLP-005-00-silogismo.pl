%% EXEMPLO 05 - LOGICA PROPOSICIONAL
%%
%  query: as proposicoes da KB permitem inferir
%  que Socrates eh mortal?
%  ?- mortal.
%
%  As proposicoes que aparecem em vermelho nao
%  foram definidas (ao menos de forma explicita).

socrates.
homem :- socrates.
mortal :- homem.











