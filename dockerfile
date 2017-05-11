FROM r-base:3.3.3
RUN apt-get update
RUN apt-get install -y  libcurl4-gnutls-dev libxml2-dev
RUN Rscript -e 'install.packages(c("openssl","Hmisc","compareGroups","MASS","sandwich","lmtest","glmnet","VennDiagram","gplots","parallel"))'
RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(c("sva","illuminaio","GEOquery","minfi","methylumi","minfiData","wateRmelon"));'
