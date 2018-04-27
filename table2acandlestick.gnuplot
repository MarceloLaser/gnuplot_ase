set terminal pngcairo size 900,400
set output "table2a_candlesticks.png"
set title "Table 2A - Candlesticks"
unset key
#set border 10 front ls 11
set tmargin at screen 0.95

set boxwidth 0.4 absolute
set tics scale 0

set ytics 25 nomirror tc lt 1
set y2tics 25 nomirror tc lt 1
set xtics 2
set yrange [0:150]
set y2range [0:150]
set xrange [0:34]
set label at 3.3,146 '1243'
set label at 6.3,146 '263'
set label at 19.3,146 '182'
set label at 22.3,146 '802'
set label at 24.3,146 '286'
set label at 27.3,146 '174'
set label at 31.3,146 '166'

plot "table2a.dat" using 1:2:3:2:3 with candlesticks lt 3 lw 2 notitle, \
"" using 1:4:4:4:4 with candlesticks lt -1 lw 2 notitle
