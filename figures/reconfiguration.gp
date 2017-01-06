set terminal postscript eps enhanced "NimbusSanL-Regu, 20" fontfile "/usr/share/fonts/type1/texlive-fonts-recommended/uhvr8a.pfb"
set style line 1 lt 1 lc rgb '#CCCCCC' lw 2
set style line 2 lt 1 lc rgb '#EBEBEB' lw 1
set style line 3 lt 1 lw 4

set nokey

set ylabel "throughput [requests / sec]"
set xlabel "Time [sec]"
set xrange [0:13]
set xtics nomirror 1
set mxtics 2
set yrange [-5:80]
set ytics format ""
set ytics nomirror
set ytics 20
set ytics add ("0K" 0, "20K" 20, "40K" 40, "60K" 60, "80K" 80)
set mytics 2 

set grid mxtics xtics ls 1, ls 2
set grid mytics ytics ls 1, ls 2
set ytics scale 0.0000001, 0.0000001
set xtics scale 0.0000001, 0.0000001

# Draw only the left and bottom borders: 
set border 3

plot 'reconfiguration.dat' using 1:2 with line ls 3

unset yrange
unset ytics
unset border
