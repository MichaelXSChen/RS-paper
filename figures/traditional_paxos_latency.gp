set terminal postscript eps enhanced "NimbusSanL-Regu, 20" fontfile "/usr/share/fonts/type1/texlive-fonts-recommended/uhvr8a.pfb"

set style line 1 lt 1 lw 2 pt 4 ps 2 linecolor rgb "#000000"
set style line 2 lt 1 lw 3 pt 12 ps 2 lc rgb "#072c76"
set style line 3 lt 3 lw 2 pt 9 ps 2 lc rgb "#000000"
set style line 4 lt 4 lw 2 pt 7 ps 2 lc rgb "#208418"
set style line 5 lt 5 lw 2 pt 8 ps 2 lc rgb "#000000"
set style line 6 lt 1 lw 2 pt 5 ps 2 lc rgb "#000000"
set style line 7 lt 7 lw 2 pt 11 ps 2 lc rgb "#000000"
set style line 8 lt 8 lw 2 pt 11 ps 1 lc rgb "#d97c19"
set style line 9 lt 9 lw 4 pt 12 ps 2 lc rgb "#000000"

set key font ",15"
set key spacing 1

set xrange [0:27]
set xtics ("3" 0,"5" 9,"7" 18, "9" 27, "33" 50, "65" 68, "105" 98)

set ylabel "Consensus latency (us)" offset 0,0 font ",25"
set xlabel "number of replicas" offset 0.5,0 font ",25"
set key left top
set xrange [0:27]
set yrange [1:1600]
#set origin 0.0,1.85
#set ytics 50
#set ytics ("0" 0, "100" 100, "200" 200, "400" 400, "600" 600,"800" 800,"1000" 1000,"1200" 1200,"1400" 1400,"1600" 1600,)
#set logscale y
# plot upper
set xtics nomirror

#plot 'traditional_paxos_latency.dat' using 1:2 with linespoints title "LibPaxos" ls 1,'traditional_paxos_latency.dat' using 1:3 with linespoints title "ZooKeeper" ls 7, 'traditional_paxos_latency.dat' using 1:4 with linespoints title "CRANE" ls 6, 'traditional_paxos_latency.dat' using 1:5 with linespoints title "S-Paxos" ls 5, 'traditional_paxos_latency.dat' using 1:6 with linespoints title "APUS" ls 2


plot 'traditional_paxos_latency.dat' using 1:2 with linespoints title "LibPaxos" ls 1,'traditional_paxos_latency.dat' using 1:3 with linespoints title "ZooKeeper" ls 7, 'traditional_paxos_latency.dat' using 1:4 with linespoints title "CRANE" ls 6, 'traditional_paxos_latency.dat' using 1:5 with linespoints title "S-Paxos" ls 5, 'traditional_paxos_latency.dat' using 1:6 with linespoints title "APUS" ls 2 

