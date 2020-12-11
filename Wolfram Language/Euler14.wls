nIterations[n_Integer] := Module[{temp = n, nIterations = 0},
    While[
        temp != 1,
        If[EvenQ@temp,
            temp = temp / 2,
            temp = 3 temp + 1
        ];
        nIterations++
    ];
    nIterations
];

maxIterations = {0, 0};
For[i = 1, i < 1000000, i++,
    nIterations[i] = nIterations[i];
    If[nIterations[i] > maxIterations[[2]],
        maxIterations[[1]] = i;
        maxIterations[[2]] = nIterations[i];
    ];
];
Print@maxIterations;