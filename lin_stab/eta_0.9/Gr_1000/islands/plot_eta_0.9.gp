reset
set terminal pdfcairo enhanced font 'Helvetica,24' linewidth 3 size 8,5
set border ls -1
#set grid
#set key bottom left
#set bmargin 4
set xlabel "k_z" offset 0,0,0
set ylabel "Ta"  offset 0,0,0 rotate by 90

#set xrange [0.5:2]
set color
set yrange [4000:70000]

set output 'island_eta_0.9_m_-20.pdf'
p 'island_neutral_asc/island_eta_0.9_mu_0.6_m_-20.asc'  u 1:2 every 3 w p ps 1. pt 2 t '{/Symbol m}=0.6',\
  'island_neutral_asc/island_eta_0.9_mu_0.7_m_-20.asc'  u 1:2 every 3 w p ps 1. pt 4 t '{/Symbol m}=0.7',\
  'island_neutral_asc/island_eta_0.9_mu_0.8_m_-20.asc'  u 1:2 every 3 w p ps 1. pt 6 t '{/Symbol m}=0.8',\
  'island_neutral_asc/island_eta_0.9_mu_0.9_m_-20.asc'  u 1:2 every 3 w p ps 1. pt 8 t '{/Symbol m}=0.9',\
  'island_neutral_asc/island_eta_0.9_mu_0.95_m_-20.asc' u 1:2 every 3 w p ps 1. pt 10 t '{/Symbol m}=0.95',\
  'island_neutral_asc/island_eta_0.9_mu_1.0_m_-20.asc'  u 1:2 every 1 w p ps 1. pt 12 t '{/Symbol m}=1'





