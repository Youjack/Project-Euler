Euler9[] := Module[{a, b, c},
    For[a = 1, a <= 1000-2, a++,
        For[b = a, b <= 1000-1-a, b++,
            c = 1000 - a - b;
            If[a^2 + b^2 == c^2, 
                Return@(a*b*c);
            ];
        ];
    ]
];

Print@Euler9[];