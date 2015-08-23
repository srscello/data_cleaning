
# Convert raw data into a tidy data set as a project for the class on Getting and Cleaning Data
# SR Strand
# 8/23/2015


# Display files in the current folder and the folders of the data set


mfolder <- getwd()
dir(mfolder)
dfolder <- "UCI HAR Dataset"
dir(dfolder)

# Obtain table describing the activity ID numbers
activity_id_file <- file.path(dfolder, "activity_labels.txt")
df_activity_id <- read.table(activity_id_file,colClasses = "character")


# Obtain table describing the measured data columns
feature_file <- file.path(dfolder, "features.txt")
df_features <- read.table(feature_file,colClasses = "character")

# Check whether the names are unique
length(df_features[,2])
orig_features <- df_features[,2]
unique_features <- sort(unique(df_features[,2]))
length(unique_features)

#Identify non-unique features if present
if(length(unique_features) != length(orig_features)) {
  count_features <- vector()
  for ( i in 1:length(orig_features)) {
    i_feature = orig_features[i]  
    count_features[i_feature] = 0
  }
  
    for ( i in 1:length(orig_features)) {
    i_feature = orig_features[i]  
    count_features[[i_feature]] = count_features[[i_feature]]+1
  }
  sink("non-unique-features.txt")
  for ( i in names(count_features)) {
    if(count_features[[i]]>1) {
        cat("Repeated: ", i,",",count_features[[i]],"\n")
    }
  }
  sink()
  }

# The previous analysis shows that some of the columns have the same identifier
# The columns that have a repeated identifier are not of interest for this project, since
# they are not mean or standard deviation values.
# It would be useful to understand why the identifiers are repeated, but it is not important for this assignment



# Make a look up table for the activity labels in case they are out of order
activity_map <- df_activity_id[,2]
names(activity_map) = df_activity_id[,1]

# Make a look up table for the data labels in case they are out of order
feature_map <- df_features[,2]
names(feature_map) = df_features[,1]

# Simplify the names of the features for easier use as column headings
simp_feature_map <- gsub("\\(\\)","",feature_map,perl=TRUE)
simp_feature_map <- gsub("\\(","",simp_feature_map,perl=TRUE)
simp_feature_map <- gsub("\\)","",simp_feature_map,perl=TRUE)
simp_feature_map <- gsub(",","_",simp_feature_map,perl=TRUE)




# Read in the six files with the actual data set, 3 for testing and 3 for training

# Initialize storage for raw data
df_subject <- list()
df_activity <- list()
df_data <- list()

for ( fgroup in c("test","train")) {
  d_folder <- file.path(dfolder,fgroup)
  dir(d_folder)
  
  subject_file <- file.path(d_folder, paste("subject_",fgroup,".txt",sep=""))
  activity_file <- file.path(d_folder, paste("y_",fgroup,".txt",sep=""))
  data_file <- file.path(d_folder, paste("X_",fgroup,".txt",sep=""))
  
  df_subject[[fgroup]] <- read.table(subject_file,colClasses = "numeric")
  colnames(df_subject[[fgroup]]) <- "subject_id"
  
    df_activity[[fgroup]] <- read.table(activity_file,colClasses = "numeric")
  df_data[[fgroup]] <- read.table(data_file,colClasses = "numeric")
  colnames(df_activity[[fgroup]]) <- "activity_id"
  
}


# Write a function to display the characteristics ofa data frame
df_char <- function(df,df_label) 
  {
    cat(df_label,"\n")
    str(df, list.len=10)
    if(is.numeric(df)) {  cat("Total Range:",range(df),"\n") }
      df_colnames <- colnames(df)
      for ( icol in (1:ncol(df)))
        {
          if(is.numeric(df[,icol])) {
            cat(">>> Col # ", icol, ", Name: ", df_colnames[icol], ", Range:", range(df[,icol]),"\n")
          } else {
            cat(">>> Col # ", icol, ", Name: ", df_colnames[icol],"\n")
          }
    }
    cat("\n")
}

# write out characterization info to a file
sink(file.path(mfolder,"raw_data_char_info.txt"))

for ( fgroup in c("test","train")) {
  df_char(df_subject[[fgroup]], paste("subject data info for group",fgroup))
  df_char(df_activity[[fgroup]], paste("activity data info for group",fgroup))
  df_char(df_data[[fgroup]], paste("measured data info for group",fgroup))
}

sink()




# Attach meaningful names to two of the original data columns

for ( fgroup in c("test","train")) {
  
  colnames(df_subject[[fgroup]]) <- "subject_id"
  
  colnames(df_activity[[fgroup]]) <- "activity_id"
  
}

# The remaining column names are unique and have the form Vn where n is the original column number of the features data



# Bind the data columns for each group together into one data frame each


df_aggregated=list()
for ( fgroup in c("test","train")) {
  df_aggregated[[fgroup]] <- data.frame(subject=df_subject[[fgroup]], activity_id=df_activity[[fgroup]], df_data[[fgroup]])
}

# write out characterization info for the aggregated data to a file

sink(file.path(mfolder,"data_char_info_1.txt"))

for ( fgroup in c("test","train")) {
  df_char(df_aggregated[[fgroup]], paste("first edited data info for group",fgroup))
}

sink()


# Combine the training and the test dataframes
df_total <- rbind(df_aggregated[["test"]], df_aggregated[["train"]])

sink(file.path(mfolder,"combined_data_char_info.txt"))

df_char(df_total,"Combined Data Sets")

sink()


# Make list of columns of interest for this project that are data for mean and standard deviation
idx_sub_data <-grep("mean|std",simp_feature_map)

# Make list of columns to extract from the aggregated data set
# The first two columns are the subject and activity IDs
idx_sub <- c(1,2,idx_sub_data+2)
df_sub <- df_total[,idx_sub]


# Label the activities in the data set
activity_labels <- as.character(activity_map[df_sub[,"activity_id"]])
df_sub <- data.frame(activity=activity_labels,df_sub,stringsAsFactors=FALSE)

# Label the columns of the features
idx_features <- as.numeric(gsub("V","",colnames(df_sub[4:ncol(df_sub)])))
cnames_features <- simp_feature_map[idx_features]

colnames(df_sub) <- c(colnames(df_sub)[1:3],cnames_features)
sink(file.path(mfolder,"sub_data_char_info.txt"))

df_char(df_sub,"Mean and Standard Deviation Data Sets")

sink()

# Now create a new data set with the mean values for each activity and subject

max_subject <- max(df_sub$subject_id)
max_activity <- max(df_sub$activity_id)

idx_feature_min <- 4
idx_feature_max <- ncol(df_sub)

irow <<- 0 
z_summary <- list()

for( isubject in 1:max_subject)
  {
    for(iactivity in 1:max_activity)
      {
      irow <<- irow + 1
      idx1=((df_sub$activity_id==iactivity) & (df_sub$subject_id==isubject))

      df_summary <- data.frame()      
       df_case <- df_sub[idx1,idx_feature_min:idx_feature_max]
        col_mean <<- vector(mode="numeric")
        col_sd <<- vector(mode="numeric")
        for(icol in 1:ncol(df_case)) {
            x_mean <- mean(df_case[,icol])
            x_sd <- sd(df_case[,icol])
            cat("column: ", icol,",mean=",x_mean,",sd=",x_sd,"\n")
            col_mean <<- c(col_mean,x_mean)
            col_sd <<- c(col_sd,x_sd)
        }
        idx_match1 <- min(which(idx1))
        z_activity <- df_sub[idx_match1,"activity"]
        z_subject_id <- as.numeric(df_sub[idx_match1,"subject_id"])
#        summary_row <- c(z_activity, z_subject_id, col_mean, col_sd)
        summary_row <- c(z_activity, z_subject_id, col_mean)
        cat("Adding Row", irow,"\n")
        z_summary[[irow]] <- summary_row
    }
  }
df_summary<-do.call(rbind,z_summary)
df_summary<-data.frame(df_summary)
#mean_names <- c(colnames(df_sub)[1:3],cnames_features)
mean_fnames <- paste(cnames_features,"_ave",sep="")
#sd_fnames <- paste(cnames_features,"_std",sep="")
#summary_names <- c("activity", "subject_id",mean_fnames,sd_fnames)
summary_names <- c("activity", "subject_id",mean_fnames)
colnames(df_summary) <- summary_names

write.table(df_summary,file=file.path(mfolder,"tidy_data_summary.txt"),row.names=FALSE,quote=FALSE)
