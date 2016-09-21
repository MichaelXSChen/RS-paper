set terminal postscript eps enhanced "NimbusSanL-Regu, 20" fontfile "/usr/share/fonts/type1/texlive-fonts-recommended/uhvr8a.pfb"

##set multiplot layout 3,2
## LABEL ##
##set ylabel "throughput"
## font ",16" offset 2,0
##set xlabel "number of threads"
## font ",16"

set style line 1 lt 2 lw 5 pt 2 ps 2 lc rgb "#d61818"
set style line 2 lt 1 lw 5 pt 12 ps 2 lc rgb "#072c76"
#set style line 3 lt 3 lw 15 pt 9 ps 1 lc rgb "#072c76"
#set style line 4 lt 4 lw 15 pt 7 ps 1 lc rgb "#208418"
#set style line 5 lt 5 lw 15 pt 11 ps 1 lc rgb "#d97c19"
#set style line 6 lt 6 lw 15 pt 11 ps 1 lc rgb "#d97c19"
#set style line 7 lt 7 lw 15 pt 11 ps 1 lc rgb "#d97c19"
#set style line 8 lt 8 lw 15 pt 11 ps 1 lc rgb "#d97c19"
#set style line 9 lt 9 lw 15 pt 11 ps 1 lc rgb "#d97c19"
#set style point 1 pt 13
#set style point 2 pt 21

set size 3.0,2.70
set multiplot

set xlabel "number of threads" offset 0,0.5
set ylabel "throughput" offset 2,0
set key font ",30"
set key spacing 4

set xrange [1:16]
#set logscale x 2
set for [i=0:5] xtics (0,2**i)
set key right center

# plot A
set ylabel "throughput (file/sec)" offset 1,0 font ",30"
set key right bottom 
set xrange [2:16]
set yrange [0:3400]
set origin 0.0,1.85
set size 1.0,0.85
set ytics 500
#set title "(a) Clamav"
set label 11 center at graph 0.5,-0.18 "(a) Clamav" font ",30"

plot 'throughput.dat' using 1:2 with linespoints title "Unreplicated" ls 1,'throughput.dat' using 1:3 with linespoints title "Falcon" ls 2
#plot 'throughput.dat' using 1:3 with linespoints title "hook" ls 2
#,cos(x) ls 2 title "our"
unset yrange
unset ytics

# plot B
set ylabel "throughput (req/sec)" offset 1,0 font ",30"
set key right bottom
set xrange [1:16]
set yrange [2500:15000]
set ytics 2500
set origin 1.0,1.85
set size 1.0,0.85
#set title "(b) Mediatomb"
set label 11 center at graph 0.5,-0.18 "(b) Mediatomb" font ",30"

plot 'throughput.dat' using 1:4 with linespoints title "Unreplicated" ls 1,'throughput.dat' using 1:5 with linespoints title "Falcon" ls 2
#plot sin(x) ls 2
unset yrange
unset ytics

# plot C
set key right bottom
set yrange [2000:4000]
set ytics 500
set origin 2.0,1.85
set size 1.0,0.85
#set title "(c) Memcached"
set label 11 center at graph 0.5,-0.18 "(c) Memcached" font ",30"

plot 'throughput.dat' using 1:6 with linespoints title "Unreplicated" ls 1,'throughput.dat' using 1:7 with linespoints title "Falcon" ls 2
#plot sin(x) ls 3
unset yrange
unset ytics

# plot D
set key right bottom
set yrange [0:4100]
set ytics 500
set origin 0.0,0.95
set size 1.0,0.85
#set title "(d) Mongodb"
set label 11 center at graph 0.5,-0.18 "(d) Mongodb" font ",30"

plot 'throughput.dat' using 1:8 with linespoints title "Unreplicated" ls 1,'throughput.dat' using 1:9 with linespoints title "Falcon" ls 2
#plot sin(x) ls 4
unset yrange
unset ytics

# plot E 1-16
set key right bottom
set yrange [2000:3100]
set ytics 250
set origin 1.0,0.95
set size 1.0,0.85
#set title "(e) Mysql"
set label 11 center at graph 0.5,-0.18 "(e) Mysql" font ",30"

plot 'throughput.dat' using 1:10 with linespoints title "Unreplicated" ls 1,'throughput.dat' using 1:11 with linespoints title "Falcon" ls 2
#plot sin(x) ls 5
unset yrange
unset ytics

# plot F  1-4
set key right bottom
set xrange [1:4]
set yrange [8000:24000]
set ytics 2000
set origin 2.0,0.95
set size 1.0,0.85
#set title "(f) Openldap"
set label 11 center at graph 0.5,-0.18 "(f) Openldap" font ",30"

plot 'throughput.dat' using 1:12 with linespoints title "Unreplicated" ls 1,'throughput.dat' using 1:13 with linespoints title "Falcon" ls 2
#plot sin(x) ls 6
unset yrange
unset ytics


set xrange [1:32]
# plot G
set key right bottom
set yrange [0:45000]
set ytics 5000
set origin 0.0,0.05
set size 1.0,0.85
#set title "(g) Redis"
set label 11 center at graph 0.5,-0.2 "(g) Redis" font ",30"

plot 'throughput.dat' using 1:14 with linespoints title "Unreplicated" ls 1,'throughput.dat' using 1:15 with linespoints title "Falcon" ls 2
#plot sin(x) ls 7
unset yrange
unset ytics

set xrange [1:32]
# plot H
set key right bottom
set yrange [0:36000]
set ytics 5000
set origin 1.0,0.05
set size 1.0,0.85
#set title "(h) Ssdb"
set label 11 center at graph 0.5,-0.18 "(h) Ssdb" font ",30"

plot 'throughput.dat' using 1:16 with linespoints title "Unreplicated" ls 1,'throughput.dat' using 1:17 with linespoints title "Falcon" ls 2
#plot sin(x) ls 8
unset yrange
unset ytics

# plot I
set ylabel "throughput (txns/sec)" offset 1,0 font ",30"
set key right bottom
set xrange [1:16]
set yrange [15000:21000]
set ytics 2000
set origin 2.0,0.05
set size 1.0,0.85
#set title "(i) Calvin"
set label 11 center at graph 0.5,-0.18 "(i) Calvin" font ",30"

plot 'throughput.dat' using 1:18 with linespoints title "Unreplicated" ls 1,'throughput.dat' using 1:19 with linespoints title "Falcon" ls 2
#plot sin(x) ls 9
unset yrange
unset ytics
