set terminal pngcairo size 2048,512
set key outside
set border 10 front ls 11
set tmargin at screen 0.95
set output "table2b_plot.png"
set ytics 10 nomirror tc lt 1
set yrange [0:100]
set style fill solid border -1
set auto x
set xtics 1
set ytics textcolor rgb "#cc3300"
set xtics textcolor rgb "#cc3300"
set border lw 3 lc rgb "#cc3300"

set boxwidth 1

plot "table2b.dat" using 3 with boxes lt rgb "#3333ff" t "Max \%",\
 "" using 4 ps 2 pt 5 lt rgb "#000000" t "Avg \%",\
 "" using 2 with boxes lt rgb "#663300" t "Min \%"
