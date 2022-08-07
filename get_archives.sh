zcat wat.paths.gz \
    | grep "CC-MAIN-20190115\|CC-MAIN-20190116\|CC-MAIN-20190117" \
    | awk '{ print "https://data.commoncrawl.org/"  $0 }' \
    > main_wat_jan_2019_15_17.txt