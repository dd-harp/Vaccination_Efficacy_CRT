


# conventional sample size calculations for CRT
sampleSizePower <- function(p0, p1, ICC, clusterSize){
  # standard formulae for sample size for CRT with binary outcome from Donner, Birkett, Buck (1981)
  Zsig <- 1.96  # for significance level 0.05
  Zpow <- 0.84  # for power of 0.8
  # p1 - p0 is clinically important difference in treatment proportions
  DE <- 1 + (clusterSize - 1)*ICC #Design Effect
  # Required total samples per arm
  m <- DE * ((Zsig + Zpow)^2 * (p1*(1-p1) + p0*(1-p0)))/((p1-p0)^2)
  return(c(DE,m))
}

ICC <- 0.0655 # from Homan et al appendix Solarmal
p0 <- 0.05
clusterSize_vec <- c(50,100,200,500,1000)
p1_vec <- p0 * c(0.3333, 0.5, 0.667, 0.8333)
m<-matrix(NA,nrow=length(clusterSize_vec),ncol=length(p1_vec))
for (i in 1:length(clusterSize_vec)){
  for (j in 1:length(p1_vec)){
    m[i,j] <- sampleSizePower(p0, p1_vec[j], ICC, clusterSize_vec[i])[2]
  }
}
clusters_per_arm <- m/clusterSize_vec # i.e. clusters allocated to each intervention in a factorial design powered for the main effects
total_clusters <- 2 * round(clusters_per_arm)
total_clusters

popRatio <- rep(NA,length(clusterSize_vec))
for (i in 1:length(clusterSize_vec)){
  r0 <- sqrt(clusterSize_vec[i])
  r1 <- sqrt(200)
  popRatio[i]<-((r1+r0)^2)/(r0^2)
}
plot(clusterSize_vec,popRatio)
