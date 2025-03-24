anak(liza, david).
anak(liza, amy).
anak(john, david).
anak(john, amy).
anak(susan, jack).
anak(susan, karen).
anak(ray, jack).
anak(peter, john).
anak(peter, susan).
anak(mary, john).
anak(mary, susan).

gender(david, laki_laki).
gender(jack, laki_laki).
gender(john, laki_laki).
gender(ray, laki_laki).
gender(peter, laki_laki).

gender(amy, perempuan).
gender(karen, perempuan).
gender(liza, perempuan).
gender(susan, perempuan).
gender(mary, perempuan).


is_ayah(X,Y) :- anak(Y,X),gender(X, laki_laki).
is_ibu(X,Y) :- anak(Y,X),gender(X, perempuan).
is_anak(X,Y) :- anak(Y,X).

is_saudara(Y,Z) :- anak(Y,X), anak(Z,X), Y\=Z.

is_kakek(X, Z) :- is_ayah(X, Y), is_ayah(Y, Z).
is_nenek(X, Z) :- is_ibu(X, Y), is_ayah(Y, Z).
is_cucu(X, Y) :- is_anak(X, Z), is_anak(Z, Y).

is_paman(X, Y) :- is_saudara(X, Z), is_ayah(Z, Y), gender(X, laki_laki).
is_bibi(X, Y) :- is_saudara(X, Z), is_ayah(Z, Y), gender(X, perempuan).

is_pasangan(X, Y) :- anak(A, X), anak(A, Y), X \= Y.
is_suami(X, Y) :- is_pasangan(X, Y), gender(X, laki_laki).
is_istri(X, Y) :- is_pasangan(X, Y), gender(X, perempuan).













