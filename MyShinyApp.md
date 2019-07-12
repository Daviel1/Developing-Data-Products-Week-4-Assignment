Developing Data Products Week 4 Assignment
========================================================
author: David Li
date: 12/07/2019
autosize: true

Shiny App Description
========================================================

In the shiny app, i have chosen to use the USArrests dataset which contains statistics in arrests per 100,000 residents for assault, murder and rape in each of the 50 US states in 1973 along with the percent of population living in urban areas. 
I wanted to know if there is any correlation between urbanisation and murder rates and decided to plot out the relationship between the two variables. A linear regression model is implemented and plotted on the graph.

Summary of data
========================================================
The following shows the statistical summary of the USArrests dataset

```r
summary(USArrests)
```

```
     Murder          Assault         UrbanPop          Rape      
 Min.   : 0.800   Min.   : 45.0   Min.   :32.00   Min.   : 7.30  
 1st Qu.: 4.075   1st Qu.:109.0   1st Qu.:54.50   1st Qu.:15.07  
 Median : 7.250   Median :159.0   Median :66.00   Median :20.10  
 Mean   : 7.788   Mean   :170.8   Mean   :65.54   Mean   :21.23  
 3rd Qu.:11.250   3rd Qu.:249.0   3rd Qu.:77.75   3rd Qu.:26.18  
 Max.   :17.400   Max.   :337.0   Max.   :91.00   Max.   :46.00  
```

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-2](MyShinyApp-figure/unnamed-chunk-2-1.png)
Findings
========================================================
By using the slider provided in the shiny app, we can predict the expected murder rate with a given urban population percentage. 
From the visualisation, we can deduce there is a weak positive correlation between the two variables. 
