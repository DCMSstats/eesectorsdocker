#!/usr/bin/Rscript

# Install checkpoint first to ensure appropriate versioning

install.packages("checkpoint",repos="https://cloud.r-project.org/")

# Set the snapshot to the date of the last report

checkpoint::setSnapshot('2016-11-28')

# Install devtools and teaplots

install.packages(
                c("devtools","bookdown"), 
                repos="https://cloud.r-project.org/"
                )

# Install packages required for RAP-demo

devtools::install_github('mangothecat/visualTest')
devtools::install_github('ukgovdatascience/govstyle')
devtools::install_github('ukgovdatascience/EESectors')
devtools::install_github('ukgovdatascience/RAP-demo')

