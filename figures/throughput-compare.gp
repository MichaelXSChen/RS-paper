set terminal postscript eps enhanced "NimbusSanL-Regu, 24" fontfile "/usr/share/texlive/texmf-dist/fonts/type1/urw/helvetic/uhvr8a.pfb"

set border 3

set style data histogram
set style histogram rowstack gap 1

set xtics nomirror
set ytics nomirror

set ylabel "compare falcon with dare"
set xtics font ",12"
set xrange[-0.75:10]
set yrange [0:20]

set xlabel "number of clients" offset 0,-0.5


set style fill solid border -1
set boxwidth 0.75



set key autotitle columnheader
#set key outside below center horizontal
plot newhistogram "1" lt 1, \
'throughput-compare.dat' u 2:xtic(1)fs pattern 2, '' u 3 fs pattern 2, '' u 4 fs pattern 2, \
newhistogram "2" lt 1, \
'throughput-compare.dat' u 5:xtic(1) fs pattern 2 notitle, '' u 6 fs pattern 2 notitle, '' u 7   fs pattern 2 notitle

