# rdma-paxos
paper-rdma-paxos

1. Run these commands after you checkout this repo.
> sudo apt-get install okular lgrind gnuplot (only run it if you have not installed it)
> sudo apt-get install texlive-full (only run it if you have not installed it)
> cd paper-rdma-paxos
> git submodule init
> git submodule update
> make

If you make fails, you can refer to the paper.build.log file to identify the compile errors.

2. Use acroread or okular to open the pdf file. Recommended to use okular as the pdf viewer because
once you rebuild the pdf, okular will automatically update the pdf.
> okular p.pdf &

