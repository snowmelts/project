---
title: "CodeBook.md"
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


Code Book
run_analysis.R
Project

Step 0: Loading data files into R and preparing data sets for step 1
0-1 Set work directory to .R 
0-2 Load libraries 
0-3 Read 8 data files into R testx with function "read.table"
0-4 Adding column names to testx and trainx with function "colnames"
0-5 Adding row "activity" and row "subject"

Step 1: Merges the training and the test sets to create one data set (result = dataset1)
1-0 Merging dataset "train" and "test" with function "rbind"

Step 2: Extracts only the measurements on the mean and standard deviation for each measurement (result = dataset2) 
2-1 Select and remove columns with names including "meanF" with functions "grep" and "select"
2-2 Select columns with names including "mean" with functions "grep" and "select"
2-3 Add columns "names including "mean""subject" and "activity" with function "cbind" 
2-4 Select columns with names including "std" with functions "grep" and "select"
2-5 Merging dataset "mean" and "std" with function "cbind"

Step 3: Uses descriptive activity names to name the activities in the data set (result = dataset3)
3-1 Replace numeric activity names with descriptive name strings with function "factor"

Step 4: Appropriately labels the data set with descriptive variable names in vector nf (result = dataset4)
4-1 Create vector with variable names "nf"" with function "names" and replace character sets with with function "sub" and "gsub"
4-2 Replace "t" with "time", and "f" with "fourier" 
4-3 Remove "dataset1&", "-", "()", BodyBody"
4-4 Replace "Acc" with "acceleration", "Gyro" with "gyroscope", "Mag" with "magnitude"
4-5 Set all names to lower case with function "tolower"

Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject (dataset5)
5-1 Load library DoBy
5-2 Summarize dataset for "subject" and "activity" and display mean values of variables for groups "subject" and "activity" with function "summaryBy"
5-3 Write dataset to text file with function "write.table""

End of script
