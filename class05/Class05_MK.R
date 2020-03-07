#' ---
#' title: "Class 5: data visualization and graphics in R"
#' author: "Meisha Khan"
#' date: "January 24, 2020"
#' ---

# Class 5
# Data visualization and graphics in R
# comments explaining how/what I did

plot(1:5, col="blue", typ="o")
# Command + Return = move script from script to console OR put cursor on script and click on Run icon (next to binder paper icon) OR copy/paste into console
# Source icon takes down whole script from script editor to console 

# Section 2a: scatterplots and line graphs

# read.table() = creates dataframes of data in talbe format
# read data file "weight_chart.txt"

baby <- read.table("bimm143_05_rstats/weight_chart.txt")
# type out read.table(" then Tab, which will show file options to add
#View(baby)
# header = TRUE so that header line is recognized in file 
baby <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE)

# making a line plot

#pch=15 changed circles (lwd=0.5,2 (thickness); cex=0.5,1.5(size)) to filled in squares
plot(baby$Age, baby$Weight, typ="b", col="pink", pch=15)

# main= "title" adds a title to chart
plot(baby$Age, baby$Weight, typ="b", col="pink", pch=15, main = "Baby Weight with Age")

# ylim=c(2,10) changes scale of y=axis limit scales
plot(baby$Age, baby$Weight, typ="b", col="pink", pch=15, main = "Baby Weight with Age", ylim = c(2,10))

# xlab and ylab changes axis labels
plot(baby$Age, baby$Weight, typ="b", col="pink", pch=15, main = "Baby Weight with Age", ylim = c(2,10), xlab = "Age (months)", ylab = "Weight (kg)")
#plot(1:5, pch=1:5, cex=1:5, col=1:5)

# Section 2b: barplots

mouse <- read.table("bimm143_05_rstats/feature_counts.txt", header = TRUE, sep = "\t")
#View(mouse)

#dotchart(mouse$Count, labels = mouse$Feature)

barplot(mouse$Count, horiz = TRUE, ylab = "Genome Features", xlab = "Count", names.arg = mouse$Feature, main = "Number of features in GRCm38 mouse genome", las=1)
par(mar=c(5,12,6,5))
barplot(mouse$Count, horiz = TRUE, xlab = "Count", names.arg = mouse$Feature, main = "Number of features in GRCm38 mouse genome", las=1, xlim = c(0,80000))
barplot(mouse$Count, horiz = TRUE, xlab = "Count", names.arg = mouse$Feature, main = "Number of features in GRCm38 mouse genome", las=1, xlim = c(0,80000), col = "pink")


# Section 3: color plots 
#3a

#read.table("bimm143_05_rstats/male_female_counts.txt", header = TRUE, sep = "\t")
#sex <- read.table("bimm143_05_rstats/male_female_counts.txt", header = TRUE, sep = "\t")
sex <- read.delim("bimm143_05_rstats/male_female_counts.txt")
#View(sex)

barplot(sex$Count, names.arg = sex$Sample, col = rainbow(nrow(sex)),las=2)





