FROM r-base

COPY src/ /src
RUN apt-get update && apt-get -y install bwa seqtk bedtools samtools perl wget build-essential zlib1g-dev libncurses-dev && \
    wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/blat/blat -O /bin/blat && chmod +x /bin/blat
