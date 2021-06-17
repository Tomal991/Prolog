parent(pam,bob).
parent(tom,bob).

parent(tom,liz).

parent(bob,ann).
parent(bob,pat).

parent(pat,jim).

female(pam).
female(liz).
female(pat).
female(ann).

male(tom).
male(bob).
male(jim).

grandparent(P,R):-parent(P,Q),parent(Q,R).
grandchildren(P,R):-parent(R,Q),parent(Q,P).
sibling(P,R):-parent(Q,P),parent(Q,R).

mother(P,Q):-parent(P,Q),female(P).
father(P,Q):-parent(P,Q),male(P).

spouse(A,B):-parent(A,C),parent(B,C).
sister(X,Y):-sibling(X,Y),female(X).

granddaughter(X,Y):-grandchildren(X,Y),female(X).
grandson(X,Y):-grandchildren(X,Y),male(X).



