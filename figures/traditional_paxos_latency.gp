set terminal postscript eps enhanced "NimbusSanL-Regu, 20" fontfile "/usr/share/fonts/type1/texlive-fonts-recommended/uhvr8a.pfb"

set style line 1 lt 1 lw 2 pt 2 ps 2 linecolor rgb "#000000"
set style line 2 lt 1 lw 3 pt 12 ps 2 lc rgb "#072c76"
set style line 3 lt 3 lw 2 pt 9 ps 2 lc rgb "#000000"
set style line 4 lt 4 lw 2 pt 7 ps 2 lc rgb "#208418"
set style line 5 lt 5 lw 2 pt 8 ps 2 lc rgb "#000000"
set style line 6 lt 1 lw 2 pt 5 ps 2 lc rgb "#000000"
set style line 7 lt 7 lw 2 pt 11 ps 2 lc rgb "#000000"
set style line 8 lt 8 lw 2 pt 11 ps 1 lc rgb "#d97c19"
set style line 9 lt 9 lw 4 pt 12 ps 2 lc rgb "#000000"

bm = 0.15
lm = 0.12
rm = 0.95
gap = 0.05
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



set key font ",15"
set key spacing 1

set xrange [0:27]
#set for [i=0:5] xtics (0,3**i)
set xtics ("3" 0,"5" 9,"7" 18, "9" 27, "33" 50, "65" 68, "105" 98)

set ylabel "Consensus latency (us)" offset -1,6 font ",25"
set xlabel "number of replicas" offset 0.5,0 font ",25"
set key right bottom
set xrange [0:27]
set yrange [7:11]
#set origin 0.0,1.85
#set ytics 50
set ytics ("5" 5, "10" 10, "15" 15)
set logscale y
# plot upper
set xtics nomirror

A=38
eps2=0.5
E1=7
E2=50
eps=0.5
set arrow 1 from A-eps2-0.5, E1 to A+eps2+0.5, E1 nohead lw 2 lc rgb "#ffffff" front
#set arrow 2 from A-eps2-3, E2-8.7 to A+eps2+2, E2-8.7 nohead lc rgb "#000000" front
set arrow 3 from A-eps-eps2, E1-eps to A+eps-eps2, E1+eps nohead
set arrow 4 from A-eps+eps2, E1-eps to A+eps+eps2, E1+eps nohead

plot 'traditional_paxos_latency.dat' using 1:2 with linespoints title "libPaxos" ls 1,'traditional_paxos_latency.dat' using 1:3 with linespoints title "ZooKeeper" ls 7, 'traditional_paxos_latency.dat' using 1:4 with linespoints title "Crane" ls 6, 'traditional_paxos_latency.dat' using 1:5 with linespoints title "S-Paxos" ls 5, 'traditional_paxos_latency.dat' using 1:7 with linespoints title "DARE" ls 9, 'traditional_paxos_latency.dat' using 1:6 with linespoints title "APUS" ls 2



set border 2+4+8
set bmargin at screen bm + size * kk + gap
set tmargin at screen bm + size + gap
set yrange [100:1500]

unset logscale y
unset xlabel
unset ylabel
unset xtics
set ytics ("100" 100, "300" 300, "750" 750 ,"1200" 1200)
plot 'traditional_paxos_latency.dat' using 1:2 with linespoints title "" ls 1,'traditional_paxos_latency.dat' using 1:3 with linespoints title "" ls 7, 'traditional_paxos_latency.dat' using 1:4 with linespoints title "" ls 6, 'traditional_paxos_latency.dat' using 1:5 with linespoints title "" ls 5, 'traditional_paxos_latency.dat' using 1:7 with linespoints title "" ls 9, 'traditional_paxos_latency.dat' using 1:6 with linespoints title "" ls 2 

unset yrange
unset ytics
