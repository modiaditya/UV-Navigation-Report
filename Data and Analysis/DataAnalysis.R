route <- read.csv("/Users/Aditya/Documents/Development/LaTeX/UV\ Paper/Data\ and\ Analysis/route2.csv", header=FALSE , col.names= c("lat", "long","uva","uvb"), sep=",", skip=1 )
for(ss in 1:10){
  sample = ss
  uvb = route$uvb
  uvb10 <- vector()
  for(i in 1:10){
    uvbSample = sample(uvb,sample, replace = FALSE)
    FALSEMean = mean(route$uvb)
    sampleMean = mean(uvbSample)
    t = abs(100-abs((FALSEMean-sampleMean)/ sampleMean*100))
    uvb10[i]=t
  }
  cat("UVB Sample Size is ",sample)
  cat("\n")
  cat("UVB mean accuracy is ",mean(uvb10))
  cat("\n")
  #print(summary(uvb10))
  sampleA = ss
  
  
  
  uva = route$uva
  uva10 <- vector()
  for(i in 1:10){
    uvaSample = sample(uva,sampleA,replace=FALSE)
    FALSEMeanA = mean(route$uva)
    sampleMeanA = mean(uvaSample)
    tA = abs(100-abs((FALSEMeanA-sampleMeanA)/ sampleMeanA*100))
    uva10[i]=tA
  }
  cat("UVA Sample Size is ",sampleA)
  cat("\n")
  cat("UVA mean accuracy is ",mean(uva10))
  cat("\n")
  #print(summary(uva10))
}