Euler1 :=
Module[
    {list, f},
    list = Range[999999]; (* 999 *)

    SetAttributes[f, Listable];
    f[x_] := If[Mod[x,3] == 0 || Mod[x,5] == 0, x, 0];

    Total@f@list
]

Print@Timing@Euler1;
(* {1.59375, 233333166668} *)