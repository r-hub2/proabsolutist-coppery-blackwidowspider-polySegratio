## ----echo = FALSE-------------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#:",
  fig.path = "man/figures/"
)
## output: BiocStyle::html_document
##version <- as.vector(read.dcf('DESCRIPTION')[, 'Version'])
##version <- gsub('-', '.', version)
version <- "0.2-6"

## ----echo=FALSE-----------------------------------------------------
op <- options()
options(width=70, digits=4)

## -------------------------------------------------------------------
library(polySegratio)

## -------------------------------------------------------------------
## obtain expected segregation ratios 
## default is one nulliplex parent so type.parents = "heterogeneous"

print(unlist(expected.segRatio(2)))
print(unlist(expected.segRatio("Tetraploid")))
print(expected.segRatio("Octa")$ratio)

## -------------------------------------------------------------------
## obtain expected segregation ratios with type.parents="homozygous"

print(unlist(expected.segRatio("tetra",type="homoz")))
print(expected.segRatio("Octa",type="homoz")$ratio)

## -------------------------------------------------------------------
## obtain expected segregation ratios with odd ploidy level
a <- expected.segRatio(9)
print(a$ratio)

## -------------------------------------------------------------------
mark.sim4 <- sim.autoMarkers(4, dose.proportion=c(0.7,0.3), 
                             n.markers=200, n.individuals = 200)
print(mark.sim4)

## ----sim1, echo=FALSE, fig.cap='Segregation ratios from simulated marker data for 200 markers for a autotetraploid cross with 100 offspring', out.width='60%'----
plot(mark.sim4)

## -------------------------------------------------------------------
miss.sim4 <- addMisclass(mark.sim4, misclass = 0.1)
miss.sim4 <- addMissing(miss.sim4, na.proportion = 0.2)
print(miss.sim4, col=c(1:6))

## ----sim2, echo=FALSE, fig.cap='Histograms of the number of markers labelled 1, numbers of missing values per marker and segregation ratios', out.width='60%'----
plot(miss.sim4, type="all")

## ----overdisp1, echo=FALSE, fig.cap='Histograms of the number of dominant markers simulated for 500 overdispersed markers from 200 autotetraploids. Data were generated from the Beta--Binomial distribution with a range of shape parameters. Overdispersion increases as `shape1` decreases.', out.width='60%'----
op <- par(mfrow = c(2, 2))  
cmain <- 1.7
plot(sim.autoMarkers(4,c(0.8,0.2)), main="No overdispersion", cex.main=cmain)
plot(sim.autoMarkers(4,c(0.8,0.2), overdisp=TRUE), main="Shape1 = 50", cex.main=cmain)
plot(sim.autoMarkers(4,c(0.8,0.2), overdisp=TRUE, shape1=15), 
     main="Shape1 = 15", cex.main=cmain)
plot(sim.autoMarkers(4,c(0.8,0.2), overdisp=TRUE, shape1=5), 
     main="Shape1 = 5", cex.main=cmain)
par(op)

## -------------------------------------------------------------------
## simulated data
a <- sim.autoMarkers(ploidy = 8, c(0.7,0.2,0.09,0.01), n.markers=200, 
                     n.individuals=100)
print(a)

## ----warning=FALSE--------------------------------------------------
## summarise chi-squared test vs true
ac <- test.segRatio(a$seg.ratios, ploidy=8, method="chi.squared")
print(ac)
print(addmargins(table(a$true.doses$dosage, ac$dosage, exclude=NULL)))

## -------------------------------------------------------------------
## summarise binomial CI vs true
ab <- test.segRatio(a$seg.ratios, ploidy=8, method="bin", alpha=0.01)
print(ab)
print(addmargins(table(a$true.doses$dosage, ab$dosage, exclude=NULL)))

## -------------------------------------------------------------------
## imaginary data frame representing ceq marker names read in from
## spreadsheet
x <- data.frame( col1 = c("agc","","","","gct5","","ccc","",""),
                col2 = c(1,3,4,5,1,2,2,4,6))
print(x)
print(makeLabel(x))
print(cbind(x,lab=makeLabel(x, sep=".")))

## -------------------------------------------------------------------
p2 <- sim.autoCross(4,
dose.proportion=list(p01=c(0.7,0.3),p10=c(0.7,0.3),
                     p11=c(0.6,0.2,0.2)))
print(p2, row=c(1:5))

ss <- divide.autoMarkers(p2$markers)

print(ss, row=c(1:5))

