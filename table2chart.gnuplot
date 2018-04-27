    set terminal pngcairo size 2048,512
    set key outside
    set border 10 front ls 11
    set tmargin at screen 0.95
    set output "table2_plot.png"
    set ytics 10 nomirror tc lt 1
    set y2tics 100 nomirror tc lt 2
    set yrange [0:100]
    set y2range [0:1300]
    set style fill solid border -1
    set auto x
    set xtics 1
    set y2tics textcolor rgb "#cc3300"
    set ytics textcolor rgb "#cc3300"
    set xtics textcolor rgb "#cc3300"
    set border lw 3 lc rgb "#cc3300"

    num_of_categories=2
    set boxwidth 0.41
    dx=0.86/num_of_categories
    offset=-0.1

    plot "table2b.dat" using ($1+offset):3 with boxes lt rgb "#3333ff" t "Max \%" axes x1y1,\
     "" using ($1+offset):4 ps 2 pt 5 lt rgb "#000000" t "Avg \%" axes x1y1,\
     "" using ($1+offset):2 with boxes lt rgb "#663300" t "Min \%" axes x1y1,\
     "table2a.dat" using ($1+offset+dx):3 with boxes lt rgb "#336600" t "Max \#" axes x1y2,\
     "" using ($1+offset+dx):4 ps 2 pt 7 lt rgb "#000000" t "Avg \#" axes x1y2,\
     "" using ($1+offset+dx):2 with boxes lt rgb "#999966" t "Min \#" axes x1y2
