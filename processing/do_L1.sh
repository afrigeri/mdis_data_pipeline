mdiscal -batchlist=mdis.lis from=L0/\$1.cub to=L1/\$1.lev1.cub
camstats -batchlist=mdis.lis from=L1/\$1.lev1.cub attach=true linc=10 sinc=10
footprintinit -batchlist=mdis.lis from=L1/\$1.lev1.cub
