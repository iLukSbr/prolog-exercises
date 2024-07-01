% ex190-00-coloracao-mapa.pl
%
% Dado um mapa com quatro regioes sendo
% que somente 3 delas podem ser adjacentes
% fazer um programa que escolha a cor para
% as regioes de forma que duas regioes
% que tenham fronteira nao tenham a mesma cor.
%
% A presente solucao eh a mais simples, porem,
% nao atende a todos os requisitos do enunciado.
% Se mudarmos as fronteiras entre as quatro regioes
% teremos que mudar o corpo do predicado colorir
% que trata das desigualdades: A\==B, A\==C, ...
%
% A versao ex190-10-... melhora este programa.

cor(azul).
cor(vermelho).
cor(amarelo).
colorir(A, B, C, D) :- cor(A), cor(B), cor(C), cor(D), A\==B, A\==C, B\==C, B\==D, C\==D, write('\n*** SOLUCAO ***').

