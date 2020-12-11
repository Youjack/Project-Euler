sum = 0;
For[
    i = 1,
    p = Prime[i]; p < 2000000,
    i++,
    sum+=p;
];
Print[sum];