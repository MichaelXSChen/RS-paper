set terminal postscript eps enhanced "NimbusSanL-Regu, 20" fontfile "/usr/share/fonts/type1/texlive-fonts-recommended/uhvr8a.pfb"

set style line 1 lt 1 lw 2 pt 2 ps 2 linecolor rgb "#000000"
set style line 2 lt 1 lw 3 pt 12 ps 2 lc rgb "#072c76"
set style line 3 lt 3 lw 2 pt 9 ps 2 lc rgb "#000000"
set style line 4 lt 4 lw 2 pt 7 ps 2 lc rgb "#208418"
set style line 5 lt 5 lw 2 pt 8 ps 2 lc rgb "#000000"
set style line 6 lt 1 lw 2 pt 5 ps 2 lc rgb "#000000"
set style line 7 lt 7 lw 2 pt 11 ps 2 lc rgb "#000000"
#set style line 8 lt 8 lw 2 pt 11 ps 1 lc rgb "#d97c19"
#set style line 9 lt 9 lw 15 pt 11 ps 1 lc rgb "#d97c19"

bm = 0.15
lm = 0.12
rm = 0.95
gap = 0.03
size = 0.75
kk = 0.5 # relative height of bottom plot
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

set xrange [0:98]
#set for [i=0:5] xtics (0,3**i)
set xtics ("3" 0,"5" 14,"7" 28, "9" 42, "33" 70, "66" 84, "105" 98)

set ylabel "latency (us)" offset -1,6 font ",25"
set xlabel "number of nodes" offset 0.5,0 font ",25"
set key right top
set xrange [0:98]
set yrange [7:50]

#set origin 0.0,1.85
#set ytics 50
set ytics ("25" 25, "50" 50)
set logscale y
# plot upper
plot 'traditional_paxos_latency.dat' using 1:6 with linespoints title "" ls 4, 'traditional_paxos_latency.dat' using 1:7 with linespoints title "" ls 2


set border 2+4+8
set bmargin at screen bm + size * kk + gap
set tmargin at screen bm + size + gap
set yrange [250:1300]

unset logscale y
unset xlabel
unset ylabel
unset xtics
set ytics ("300" 300, "750" 750 ,"1200" 1200)
plot 'traditional_paxos_latency.dat' using 1:2 with linespoints title "libPaxos" ls 1,'traditional_paxos_latency.dat' using 1:3 with linespoints title "ZooKeeper" ls 7, 'traditional_paxos_latency.dat' using 1:4 with linespoints title "Crane" ls 6, 'traditional_paxos_latency.dat' using 1:5 with linespoints title "S-Paxos" ls 5, 'traditional_paxos_latency.dat' using 1:6 with linespoints title "DARE" ls 4,'traditional_paxos_latency.dat' using 1:7 with linespoints title "Falcon" ls 2

unset yrange
unset ytics
