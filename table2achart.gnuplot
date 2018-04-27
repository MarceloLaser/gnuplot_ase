set terminal pngcairo size 2048,512
set key outside
set border 10 front ls 11
set tmargin at screen 0.95
set output "table2a_plot.png"
set ytics 100 nomirror tc lt 1
set yrange [0:300]
set style fill solid border -1
set auto x
set xtics 1
set ytics textcolor rgb "#cc3300"
set xtics textcolor rgb "#cc3300"
set border lw 3 lc rgb "#cc3300"
set tics scale 0

set boxwidth 1

plot "table2a.dat" using 3 with boxes lt "Max \#",\
 "" using 4 ps 2 pt 7 lt "Avg \#",\
 "" using 2 with boxes lt "Min \#"
