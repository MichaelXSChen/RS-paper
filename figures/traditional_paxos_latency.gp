set terminal postscript eps enhanced "NimbusSanL-Regu, 20" fontfile "/usr/share/fonts/type1/texlive-fonts-recommended/uhvr8a.pfb"

set style line 1 lt 1 lw 2 pt 2 ps 3 linecolor rgb "#d61818"
set style line 2 lt 2 lw 2 pt 12 ps 3 lc rgb "#072c76"
set style line 3 lt 3 lw 2 pt 9 ps 3 lc rgb "#072c76"
set style line 4 lt 4 lw 2 pt 7 ps 3 lc rgb "#208418"
set style line 5 lt 5 lw 2 pt 8 ps 3 lc rgb "#d97c19"
set style line 6 lt 6 lw 2 pt 5 ps 3 lc rgb "#d97c19"
set style line 7 lt 7 lw 2 pt 11 ps 1 lc rgb "#d97c19"
#set style line 8 lt 8 lw 2 pt 11 ps 1 lc rgb "#d97c19"
#set style line 9 lt 9 lw 15 pt 11 ps 1 lc rgb "#d97c19"

bm = 0.15
lm = 0.12
rm = 0.95
gap = 0.03
size = 0.75
kk = 0.25 # relative height of bottom plot
y1 = 0.0; y2 = 15.0; y3 = 180.0; y4 = 220.0

#set size 3.0,2.7
set multiplot
set border 1+2+8
set lmargin at screen lm
set rmargin at screen rm
set bmargin at screen bm
set tmargin at screen bm + size * kk



set key font ",20"
set key spacing 3

set xrange [0:100]
#set for [i=0:5] xtics (0,3**i)
set xtics ("3" 0,"5" 17,"7" 34, "9" 51, "33" 67, "66" 83, "105" 100)

set ylabel "latency (us)" offset 1,7 font ",15"
set xlabel "number of nodes" offset 0,0.5 font ",15"
set key right top
set xrange [0:100]
set yrange [1:150]
#set origin 0.0,1.85
set ytics 50

# plot upper
plot 'traditional_paxos_latency.dat' using 1:6 with linespoints title "" ls 5, 'traditional_paxos_latency.dat' using 1:7 with linespoints title "" ls 6


set border 2+4+8
set bmargin at screen bm + size * kk + gap
set tmargin at screen bm + size + gap
set yrange [250:1600]


unset xlabel
unset ylabel
unset xtics
set ytics 250
plot 'traditional_paxos_latency.dat' using 1:2 with linespoints title "libpaxos" ls 1,'traditional_paxos_latency.dat' using 1:3 with linespoints title "zookeeper" ls 2, 'traditional_paxos_latency.dat' using 1:4 with linespoints title "crane" ls 3, 'traditional_paxos_latency.dat' using 1:5 with linespoints title "S-Paxos" ls 4, 'traditional_paxos_latency.dat' using 1:6 with linespoints title "DARE",'traditional_paxos_latency.dat' using 1:7 with linespoints title "Falcon"

unset yrange
unset ytics
