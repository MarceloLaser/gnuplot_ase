set terminal pngcairo size 900,400
set output "table3d_candlesticks.png"
set title "Table 3D - Number of cacheControl headers"
unset key
#set border 10 front ls 11
set tmargin at screen 0.95

set boxwidth 0.4 absolute
set tics scale 0
set xtics auto

set ytics 5 nomirror tc lt 1
set yrange [0:30]
set y2tics 5 nomirror tc lt 1
set y2range [0:30]
set xtics 2
set xrange [0:34]
set label at 3.5,30.8 '96'
set label at 6.3,29 '96'
set label at 8.5,30.8 '49'
set label at 10.3,29 '96'
set label at 12.3,29 '62'
set label at 16.3,29 '115'
set label at 18.3,29 '40'
set label at 22.3,29 '767'
set label at 24.3,29 '97'
set label at 25.4,30.8 '112'
set label at 27.1,30.8 '105'
set label at 28.6,30.8 '91'
set label at 29.7,30.8 '31'
set label at 31.3,29 '41'

plot "table3d.dat" using 1:2:3:2:3 with candlesticks lt 3 lw 2 notitle, \
"" using 1:4:4:4:4 with candlesticks lt -1 lw 2 notitle
