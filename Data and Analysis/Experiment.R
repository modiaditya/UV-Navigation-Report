route <- read.csv("/Users/Aditya/Documents/Development/LaTeX/UV\ Paper/Data\ and\ Analysis/route2.csv", header=FALSE , col.names= c("lat", "long","uva","uvb"), sep=",", skip=1 )
sample = 4 # for worst case scenario
uvb = route$uvb # get UVB values
uvbAccuracy <- vector()
for(i in 1:100){
  uvbSample = sample(uvb,sample, replace=TRUE)
  trueMean = mean(route5$uvb)
  sampleMean = mean(uvbSample)
  t = abs(100-abs((trueMean-sampleMean)/ sampleMean*100))
  uvbAccuracy[i]=t
  }
sampleA = 4
uva = route5$uva
uva10 <- vector()
for(i in 1:100){
  uvaSample = sample(uva,sampleA,replace=TRUE)
  trueMeanA = mean(route5$uva)
  sampleMeanA = mean(uvaSample)
  tA = abs(100-abs((trueMeanA-sampleMeanA)/ sampleMeanA*100))
  uva10[i]=tA
}
cat("Average Case","\n")
cat("UVA: ",mean(uva10))
cat("\n")

cat("UVB: ",mean(uvb10))
cat("\n")
cat("Worst Case","\n")
sample = 4
uvb = route5$uvb
uvb10 <- vector()
for(i in 1:100){
  uvbSample = sample(uvb,sample, replace=TRUE)
  trueMean = mean(route5$uvb)
  sampleMean = mean(uvbSample)
  t = abs(100-abs((trueMean-sampleMean)/ sampleMean*100))
  uvb10[i]=t
}
sampleA = 6
uva = route5$uva
uva10 <- vector()
for(i in 1:100){
  uvaSample = sample(uva,sampleA,replace=TRUE)
  trueMeanA = mean(route5$uva)
  sampleMeanA = mean(uvaSample)
  tA = abs(100-abs((trueMeanA-sampleMeanA)/ sampleMeanA*100))
  uva10[i]=tA
}
cat("UVA: ",mean(uva10))
cat("\n")

cat("UVB: ",mean(uvb10))
