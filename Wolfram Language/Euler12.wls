nDivisors[n_Integer] := Module[{factors, choices},
    factors = FactorInteger[n];
    choices = (#[[2]] + 1)& /@ factors;
    Times@@choices
];

For[
    i = 2; tri = 3,
    nDivisors[tri] <= 500,
    i++; tri+=i,
    Null
];

Print[tri];