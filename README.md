# Getting and Cleaning Data - Course Project

Filippo Mingione

This is the course project for the Johns Hopkins "Getting and Cleaning Data" course.

#Overview

In this repo you can find the following files:

* An **R script** (run_analysis.R) that creates a tidy data set
* A **code book** that describes the variables in the tidy data set
* This **README.md**

# Source Data

A full description of the data used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The source data for this project can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

#Instructions

Run `source("run_analysis.R")`, which will generate a new file tidydata.txt in your working directory.

tidydata.txt can be read into R with `read.table("tidydata.txt", header = TRUE)`.

The R script was created with R version 3.2.2.

Required packages: reshape2

#How run_analysis.R works

To obtain the final tidy data set, 'tidyData.txt' the R script performs the following 5 transformations:

1. Merge the training and the test sets to create one data set
2. Extract only the measurements on the mean and standard deviation for each measurement
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive activity names
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

See the CodeBook.md for more details about the tidydata.txt variables.
