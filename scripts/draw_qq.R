args <- commandArgs(trailingOnly = TRUE)
input.dir <- args[1]
common.str <- args[2]
out.file.name <- args[3]
study.1 <- args[4]
study.2 <- args[5]
study.3 <- args[6]
study.4 <- args[7]
if (common.str == "T") {
  common <- T
} else {
  common <- F
}

plotQQ <- function(p.vals, study.name, plot.type) {
  observed <- sort(p.vals)
  lobs <- -(log10(observed))
  expected <- c(1:length(observed))
  lexp <- -(log10(expected / (length(expected)+1)))
  plot(c(0,10), c(0,10), col="red", lwd=1, type="l", 
       xlab="Expected (-logP)", ylab="Observed (-logP)", 
       xlim=c(0,10), ylim=c(0,10), 
       las=1, xaxs="i", yaxs="i", bty="l", main=paste0(study.name, " (" , plot.type, ")"))
  points(lexp, lobs, pch=23, cex=.1, bg="black")
}

png(out.file.name, width=6.5, height=8, units = 'in', res = 200)
par(mfrow=c(2,2), cex=1.2)
for (study in c(study.1, study.2, study.3, study.4)) {
  results <- read.delim(paste0(input.dir, "/", study, ".txt"), stringsAsFactors = F)
  if (common) {
    p.vals <- results$PVALUE[results$MAF >= 0.05]
    plot.type <- "MAF >= 0.05"
  } else {
    p.vals <- results$PVALUE[results$MAF < 0.05]
    plot.type <- "MAF < 0.05"
  }
  plotQQ(p.vals, study, plot.type)
}
dev.off()

