---
title: "README.md"
author: "xxx"
date: "13. Juni 2015"
output: word_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

 
Definition of Variable names

The features selected for the tidy database come from the accelerometer and gyroscope (in variable names "gyroscope") 3-axial raw signals. These time domain signals (prefix "time" to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Similarly, the acceleration signal (in variable names "acceleration") was then separated into body (in variable names "body") and gravity acceleration (in variable names "gravity")signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (in variable names "jerk"). 

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (in variable names "magnitude"). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals (prefix "fourier" to denote Fast Fourier Transformation). 

These signals were used to estimate variables of the feature vector for each pattern in 3-axial signals in the X, Y and Z directions (sufix in variable names "x", "y", "z", erspectively).

For each signal the mean and standard deviation has been calculated (shwon in variable names "mean" and "std", respectively).

The correspoinding comprehensive list of the 68 variables of each feature vector is available is:

"subject"                                  
"activity"                                
"timebodyaccelerationmeanx"                
"timebodyaccelerationmeany"               
"timebodyaccelerationmeanz"                
"timegravityaccelerationmeanx"            
"timegravityaccelerationmeany"             
"timegravityaccelerationmeanz"            
"timebodyaccelerationjerkmeanx"            
"timebodyaccelerationjerkmeany"           
"timebodyaccelerationjerkmeanz"            
"timebodygyroscopemeanx"                 
"timebodygyroscopemeany"                  
"timebodygyroscopemeanz"                 
"timebodygyroscopejerkmeanx"              
"timebodygyroscopejerkmeany"             
"timebodygyroscopejerkmeanz"              
"timebodyaccelerationmagnitudemean"       
"timegravityaccelerationmagnitudemean"     
"timebodyaccelerationjerkmagnitudemean"   
"timebodygyroscopemagnitudemean"          
"timebodygyroscopejerkmagnitudemean"     
"fourierbodyaccelerationmeanx"             
"fourierbodyaccelerationmeany"            
"fourierbodyaccelerationmeanz"             
"fourierbodyaccelerationjerkmeanx"        
"fourierbodyaccelerationjerkmeany"         
"fourierbodyaccelerationjerkmeanz"        
"fourierbodygyroscopemeanx"               
"fourierbodygyroscopemeany"              
"fourierbodygyroscopemeanz"               
"fourierbodyaccelerationmagnitudemean"    
"fourierbodyaccelerationjerkmagnitudemean" 
"fourierbodygyroscopemagnitudemean"      
"fourierbodygyroscopejerkmagnitudemean"   
"timebodyaccelerationstdx"                
"timebodyaccelerationstdy"                 
"timebodyaccelerationstdz"                
"timegravityaccelerationstdx"              
"timegravityaccelerationstdy"             
"timegravityaccelerationstdz"              
"timebodyaccelerationjerkstdx"            
"timebodyaccelerationjerkstdy"             
"timebodyaccelerationjerkstdz"            
"timebodygyroscopestdx"                   
"timebodygyroscopestdy"                  
"timebodygyroscopestdz"                   
"timebodygyroscopejerkstdx"              
"timebodygyroscopejerkstdy"               
"timebodygyroscopejerkstdz"              
"timebodyaccelerationmagnitudestd"         
"timegravityaccelerationmagnitudestd"     
"timebodyaccelerationjerkmagnitudestd"     
"timebodygyroscopemagnitudestd"          
"timebodygyroscopejerkmagnitudestd"       
"fourierbodyaccelerationstdx"             
"fourierbodyaccelerationstdy"              
"fourierbodyaccelerationstdz"             
"fourierbodyaccelerationjerkstdx"          
"fourierbodyaccelerationjerkstdy"         
"fourierbodyaccelerationjerkstdz"          
"fourierbodygyroscopestdx"               
"fourierbodygyroscopestdy"                
"fourierbodygyroscopestdz"               
"fourierbodyaccelerationmagnitudestd"      
"fourierbodyaccelerationjerkmagnitudestd" 
"fourierbodygyroscopemagnitudestd"        
"fourierbodygyroscopejerkmagnitudestd" 

End of readme.md file.
