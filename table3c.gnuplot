set terminal pngcairo size 900,400
set output "table3c_candlesticks.png"
set title "Table 3C - Percentage of Trusty Expires headers"
unset key
#set border 10 front ls 11
set tmargin at screen 0.95

set boxwidth 0.4 absolute
set tics scale 0
set xtics auto

set ytics 25 nomirror tc lt 1
set yrange [0:100]
set y2tics 25 nomirror tc lt 1
set y2range [0:100]
set xtics 2
set xrange [0:34]

plot "table3c.dat" using 1:2:3:2:3 with candlesticks lt 3 lw 2 notitle, \
"" using 1:4:4:4:4 with candlesticks lt -1 lw 2 notitle
