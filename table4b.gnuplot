set terminal pngcairo size 900,400
set output "table4b_candlesticks.png"
set title "Table 4B - (10,30,60) headers"
unset key
#set border 10 front ls 11
set tmargin at screen 0.95

set boxwidth 0.4 absolute
set tics scale 0
set xtics auto

set ytics 10 nomirror tc lt 1
set yrange [0:60]
set y2tics 10 nomirror tc lt 1
set y2range [0:60]
set xtics 2
set xrange [0:34]

plot "table4b.dat" using 1:3:2:3:2 with candlesticks lt 3 lw 2 notitle, \
"" using 1:4:4:4:4 with candlesticks lt -1 lw 2 notitle
