set terminal pngcairo size 900,400
set output "table3g_candlesticks.png"
set title "Table 3G - (10,30,60) headers"
unset key
#set border 10 front ls 11
set tmargin at screen 0.95

set boxwidth 0.2 absolute
set tics scale 0
set xtics auto

set ytics 20 nomirror tc lt 1
set yrange [10:60]

plot "table3g.dat" using 1:3:2:3:2 with candlesticks lt 3 lw 2 notitle, \
"" using 1:4:4:4:4 with candlesticks lt -1 lw 2 notitle
