##
## Make a bar plot of John's RRM data
##
##                                              UniformMu     PML
## Average_1000_Randomized_Genesets (200)          0.1631 0.07516
## Seedling_Enriched_2014 (8005)                   0.1802 0.07850
## MaturePollen_Enriched_2014 (2209)               0.1145 0.04767
## MaturePollen_Enriched_2018 (353 - stringent)    0.1171 0.05358
## SpermCell_Enriched_2018 (107 - stringent)       0.1297 0.07784
## SpermCell_Enriched_2018 (1721)                  0.1326 0.06287

names = c(
    "Average 1000\nRandomized\nGenesets (200)",
    "Seedling\nEnriched 2014\n(8005)",
    "Mature Pollen\nEnriched 2014\n(2209)",
    "Mature Pollen\nEnriched 2018\n(353-stringent)",
    "Sperm Cell\nEnriched 2018\n(107-stringent)",
    "Sperm Cell\nEnriched 2018\n(1721)"
)

rrmdata = matrix(nrow=2,
                 c(
                     0.1631,0.07516,
                     0.1802,0.07850,
                     0.1145,0.04767,
                     0.1171,0.05358,
                     0.1297,0.07784,
                     0.1326,0.06287
                 )
                 )

## default mar=c(5,4,4,2)+0.1; bottom, left, top, right
## default mgp=mgp=c(3,1,0); axis titles, axis labels, axis line
op = par(mar=c(4,5.5,2,0)+0.1, mgp=c(4,2.3,0), cex.main=1.0, cex.lab=1.8, cex.axis=1.2) 

barplot(rrmdata*100.0, names.arg=names,
        # main="(#) = number of genes analyzed",
        ylab="% of genes with TE insertion in exon (per kb)",
        col=c("darkblue","darkorange"),
        legend = c("UniformMu","PML"),
        space=c(0,0.1,0.2,0.1,1,0.1,0.2,0.1,1,0.1,0.2,0.1),
        beside=TRUE,
        border="black",
        args.legend=list(cex=1.5)
        )

par(op)
