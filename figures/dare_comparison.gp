set terminal postscript eps enhanced "NimbusSanL-Regu, 20" fontfile "/usr/share/fonts/type1/texlive-fonts-recommended/uhvr8a.pfb"

set style line 1 lt 1 lw 2 pt 2 ps 3 linecolor rgb "#d61818"
set style line 2 lt 2 lw 2 pt 12 ps 3 lc rgb "#072c76"

#set size 3.0,2.7

set key font ",20"
set key spacing 3

set xrange [0:105]
#set for [i=0:5] xtics (0,3**i)
set xtics ("3" 0,"5" 17,"7" 34, "9" 51, "33" 67, "66" 83, "105" 100)

set ylabel "latency (us)" offset 1,3 font ",20"
set xlabel "number of nodes" offset 0,0.5 font ",20"
set key right top
set xrange [0:100]
set yrange [1:110]
#set origin 0.0,1.85
set ytics 10

# plot upper
plot 'dare_comparison.dat' using 1:2 with linespoints title "DARE" ls 2, 'dare_comparison.dat' using 1:3 with linespoints title "Falcon" ls 3,'dare_comparison.dat' using 1:4 with linespoints title "DARE(90%Read)" ls 4

unset yrange
unset ytics
