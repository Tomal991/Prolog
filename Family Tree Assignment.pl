parent(a,d).
parent(a,w).
parent(a,v).

parent(z,d).
parent(z,w).
parent(z,v).

parent(b,e).
parent(b,f).
parent(b,u).

parent(y,e).
parent(y,f).
parent(y,u).

parent(c,g).
parent(c,t).
parent(c,s).

parent(x,g).
parent(x,t).
parent(x,s).

parent(d,h).
parent(u,h).

parent(h,k).
parent(h,w2).
parent(h,v2).

parent(q,k).
parent(q,w2).
parent(q,v2).

parent(v,q).
parent(e,q).

parent(v,i).
parent(e,i).

parent(i,l).
parent(i,m).
parent(i,u2).

parent(p,l).
parent(p,m).
parent(p,u2).

parent(f,p).
parent(t,p).

parent(j,n).
parent(j,t2).
parent(j,s2).

parent(o,n).
parent(o,t2).
parent(o,s2).

parent(t,o).
parent(f,o).

parent(g,j).
parent(u,j).


male(a).
male(b).
male(c).
male(d).
male(e).
male(f).
male(g).
male(h).
male(i).
male(j).
male(k).
male(l).
male(m).
male(n).

female(z).
female(y).
female(x).
female(w).
female(v).
female(u).
female(t).
female(s).
female(q).
female(p).
female(o).
female(w2).
female(v2).
female(u2).
female(t2).
female(s2).


child(A,B):- parent(B,A).

siblings(A,B):- parent(C,A),parent(C,B),parent(D,A),parent(D,B),A\=B,C @< D.

spouse(A,B):-parent(A,C),parent(B,C),A\=B.

cousin(A,B):-parent(C,A),parent(D,B),siblings(C,D),A\=B,C @< D.

child_in_law(A,B):-parent(B,C),spouse(A,C).
