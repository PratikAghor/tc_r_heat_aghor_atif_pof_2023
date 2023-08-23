reset
set terminal pdfcairo enhanced font 'Helvetica,24' linewidth 5 size 8,5
set border ls -1
#set grid
#set key bottom left
#set bmargin 4

set xrange [-1.05:1.05]
set color

set xlabel "{/Symbol m}" offset 0,0,0
set ylabel "m"  offset 0,0,0 rotate by 90
set output 'm_vs_mu.pdf'
p 'fastest_eta_0.6.asc'  u 3:4 every 1 w lp ps 1.5 pt 2 t '{/Symbol h}=0.6',\
  'fastest_eta_0.9.asc'  u 3:4 every 1 w lp ps 1.5 pt 4 t '{/Symbol h}=0.9',\

set xlabel "{/Symbol m}" offset 0,0,0
set ylabel "Ta_c"  offset 0,0,0 rotate by 90
set logscale y
set output 'Tac_vs_mu.pdf'
p 'fastest_eta_0.6.asc'  u 3:5 every 1 w lp ps 1.5 pt 2 t '{/Symbol h}=0.6',\
  'fastest_eta_0.9.asc'  u 3:5 every 1 w lp ps 1.5 pt 4 t '{/Symbol h}=0.9',\


