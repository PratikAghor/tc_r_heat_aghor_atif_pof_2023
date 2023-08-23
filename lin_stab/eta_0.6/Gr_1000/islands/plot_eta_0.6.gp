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

set output 'island_eta_0.6_m_-3.pdf'
p 'island_neutral_asc/island_mu_0.0_m_-3.asc'  u 1:2 every 5 w p ps 1.5 pt 2 t '{/Symbol m}=0.0',\
  'island_neutral_asc/island_mu_0.2_m_-3.asc'  u 1:2 every 5 w p ps 1.5 pt 4 t '{/Symbol m}=0.2',\
  'island_neutral_asc/island_mu_0.3_m_-3.asc'  u 1:2 every 5 w p ps 1.5 pt 6 t '{/Symbol m}=0.3',\
  'island_neutral_asc/island_mu_0.31_m_-3.asc' u 1:2 every 5 w p ps 1.5 pt 8 t '{/Symbol m}=0.31',\
  'island_neutral_asc/open_mu_0.31_m_-3.asc'   u 1:2 every 5 w p ps 1.5 pt 8 lc rgb "orange" t ''

set output 'island_eta_0.6_m_-3_1.pdf'
p 'island_neutral_asc/island_mu_0.5_m_-3.asc'  u 1:2 every 5 w p ps 1.5 pt 12 t '{/Symbol m}=0.5',\
  'island_neutral_asc/island_mu_0.7_m_-3.asc'  u 1:2 every 5 w p ps 1.5 pt 14 t '{/Symbol m}=0.7',\
  'island_neutral_asc/island_mu_0.9_m_-3.asc'  u 1:2 every 5 w p ps 1.5 pt 16 t '{/Symbol m}=0.9',\
  'island_neutral_asc/island_mu_0.93_m_-3.asc' u 1:2 every 5 w p ps 1.5 pt 3 t '{/Symbol m}=0.93'

set yrange [1000:55000]
set output 'island_eta_0.6_m_-4.pdf'
p 'island_neutral_asc/island_mu_0.0_m_-4.asc'  u 1:2 every 3 w p ps 1. pt 2 t '{/Symbol m}=0',\
  'island_neutral_asc/island_mu_0.2_m_-4.asc'  u 1:2 every 3 w p ps 1. pt 4 t '{/Symbol m}=0.2',\
  'island_neutral_asc/island_mu_0.3_m_-4.asc'  u 1:2 every 3 w p ps 1. pt 6 t '{/Symbol m}=0.3',\
  'island_neutral_asc/island_mu_0.5_m_-4.asc'  u 1:2 every 3 w p ps 1. pt 8 t '{/Symbol m}=0.5',\
  'island_neutral_asc/island_mu_0.7_m_-4.asc'  u 1:2 every 5 w p ps 1. pt 10 t '{/Symbol m}=0.7',\
  'island_neutral_asc/island_mu_0.9_m_-4.asc'  u 1:2 every 3 w p ps 1. pt 12 t '{/Symbol m}=0.9',\
  'island_neutral_asc/island_mu_0.95_m_-4.asc' u 1:2 every 3 w p ps 1. pt 14 t '{/Symbol m}=0.95',\
  'island_neutral_asc/island_mu_1.0_m_-4.asc'  u 1:2 every 1 w p ps 1. pt 16 t '{/Symbol m}=1'





