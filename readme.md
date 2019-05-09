## basic graph analysis 

The environment contains an instance of Rstudio server, useful for interactive analysis or quick development.


### usage

Build the image with  

    `docker build -t image_tag .`,  

run a persistent container with  
 
    `docker run -d -p 8787:8787 -e PASSWORD=your_password -v` pwd`:/app image_tag sh data_integration.R`.

To use `Rstudio server` point your browser to localhost:8787, log with user/password `rstudio/your_password`


### notes

For advanced R enviroment management, please read [Reproducible Environments](https://environments.rstudio.com/).

For more R docker containers, read [rocker](https://www.rocker-project.org/).

