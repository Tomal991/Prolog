score(germany,7).
score(brazil,5).
score(france,3).
score(portugal,3).
score(italy,4).
score(england,1).
score(spain,2).
score(netherlands,6).

mainprogram:-

    write("write 1st team name : "), %Germany
    read(G),nl,
    score(G,X),
    write(X),nl,

    write("write 2nd team name : "), %Brazil
    read(B),nl,
    score(B,Y),
    write(Y),nl,

    write("write 3rd team name : "), %France
    read(F),nl,
    score(F,Z),
    write(Z),nl,

    write("write 4th team name : "), %Portugal
    read(P),nl,
    score(P,U),
    write(U),nl,


    write("write 5th team name : "),  %Italy
    read(I),nl,
    score(I,V),
    write(V),nl,


    write("write 6th team name : "),  %England
    read(E),nl,
    score(E,W),
    write(W),nl,

    write("write 7th team name : "),  %Spain
    read(S),nl,
    score(S,T),
    write(T),nl,


    write("write 8th team name : "), %Netherlands
    read(N),nl,
    score(N,L),
    write(L),nl,


    match1(X,Y),nl, /*Germany vs Brazil*/
    match2(Z,U),nl, /*France vs Portugal*/
    match3(V,W),nl, /*Italy vs England*/
    match4(T,L),nl. /*Spain vs Netherlands*/


match1(X,Y):-
    X>Y,
    write("GERMANY won");
    X<Y,
    write("BRAZIL won");
    X=:=Y,
    write("match drawn").

match2(Z,U):-
    Z>U,
    write("FRANCE won");
    Z<U,
    write("PORTUGAL won");
    Z=:=U,
    write("match drawn").

match3(V,W):-
    V>W,
    write("England lost");
    V<W,
    write("England won");
    V=:=W,
    write("match drawn").

match4(T,L):-
    T>L,
    write("SPAIN won");
    T<L,
    write("NETHERLANDS won");
    T=:=L,
    write("match drawn").

