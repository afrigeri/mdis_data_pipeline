mdis2isis -batchlist=mdis.lis from=RAW/\$1.IMG to=L0/\$1.cub
spiceinit -batchlist=mdis.lis from=L0/\$1.cub web=true
