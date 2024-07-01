%% EXEMPLO 010 - LOGICA PROPOSICIONAL
%%
%  query: as proposicoes da KB permitem inferir
%  que estah se falando de uma crianca?
%  ?- crianca.
%
%  E de uma menina?
%  ?- menina.
%
%  As proposicoes que aparecem em vermelho nao
%  foram definidas (ao menos de forma explicita).

% fatos conhecidos sobre a pessoa
estudaNoPrimeiroGrau.
sexoFeminino.

% regras da teoria
crianca :- estudaNoPrimeiroGrau.
menina :- sexoFeminino, crianca.












