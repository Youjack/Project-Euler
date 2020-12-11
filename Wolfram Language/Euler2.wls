F = List[];
AppendTo[F, 1];
AppendTo[F, 2];

For[
    i = 2,
    temp = F[[i-1]] + F[[i]]; temp <= 4000000,
    i++,
    AppendTo[F, temp]
];

Print@Total@Select[F, EvenQ];