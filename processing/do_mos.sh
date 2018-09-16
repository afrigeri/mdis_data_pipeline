ls L3/*.cub > mos.lis
automos fromlist=mos.lis mosaic=RaditladiBasin.cub
isis2std from=RaditladiBasin.cub  to=RaditladiBasin.png
