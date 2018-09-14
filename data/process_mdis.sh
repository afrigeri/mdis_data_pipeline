ls RAW/*.IMG | sed 's/\.IMG//' | sed 's/RAW\///' > mdis.lis
mdis2isis -batchlist=mdis.lis from=RAW/\$1.IMG to=L0/\$1.cub
spiceinit -batchlist=mdis.lis from=L1/\$1.cub web=true
mdiscal -batchlist=basename.lis from=\$1.cub to=\$1.lev1.cub
camstats -batchlist=basename.lis from=\$1.lev1.cub attach=true linc=10 sinc=10
footprintinit -batchlist=basename.lis from=\$1.lev1.cub
ls *G.lev1.cub > G_lev1.lis
mosrange fromlist=G_lev1.lis to=equi.map projection=equirectangular precision=0
ls *G.lev1.cub | sed 's/\.lev1\.cub//' > Gonly_basename.lis
cam2map -batchlist=Gonly_basename.lis from=\$1.lev1.cub to=\$1.lev2.cub map=equi.map pixres=map
cam2map -batchlist=colorsets.lis from=\$2.lev1.cub to=\$2.lev2.cub map=\$1.lev2.cub matchmap=true
cam2map -batchlist=colorsets.lis from=\$3.lev1.cub to=\$3.lev2.cub map=\$1.lev2.cub matchmap=true
