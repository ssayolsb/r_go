FROM r-base
RUN apt-get update
RUN apt-get install -y  libcurl4-gnutls-dev libxml2-dev
RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite("sva");'
RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite("minfi");'
RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite("minfiData");'
RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite("waateRmelon");'
RUN Rscript -e 'install.packages(c("Hmisc","compareGroups","MASS","sandwich","lmtest","glmnet","VennDiagram","gplots","parallel"))'
