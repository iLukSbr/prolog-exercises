pais(X,Y,Z) :- pro(X,Z), pro(Y,Z), X\=Y.    % pais(X,Y,Z) X e Y são pais de Z
                                            % \= significa diferente
pro(X,Y) :- pai(X,Y).  % X é pai de Y       % pro(X,Y) X é progenitor de Y
pro(X,Y) :- mae(X,Y).  % X é mãe de Y
%avos(X,Y,W) :- pais(X,Y,Z), pro(Z,W).

pai(joao, jose).
pai(jose, ana).
pai(jose, igor).
pai(rubens, carla).
mae(maria, jose).
mae(carla, ana).
mae(carla, igor).
mae(ivone, carla).

avos(X,Y,Z) :- (pais(X,Y,B);pais(X,Y,A)),pais(B,A,Z),B\=A,X\=Y.
