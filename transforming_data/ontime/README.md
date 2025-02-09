# On time

## Problem to Solve
Built to help people stay on time while moving around the city, the first subway tunnels in the United States are still in use today under Boston Common (not too far from Harvard itself!). Over 100 years later, the MBTA—the Massachusetts Bay Transportation Authority—manages public transportation around Boston, still ensuring everyone can stay on time, whether by subway, bus, railroad, or ferry.

In ontime.R, in a folder called ontime, write a program to tell users how likely they are to be on time while taking a particular MBTA route.

## Distribution Code and installation

For this problem, you’ll need to download ontime.R and two .csv files: bus.csv and rail.csv.

### Download the distribution code

- Open RStudio per the linked steps and navigate to the R console to execute:
    ```R
    getwd()
    ```
    to print your working directory. Ensure your current working directory is where you’d like to download this problem’s distribution code.   

- If you do not see the right working directory, use setwd to change it! Try typing setwd("..") if in the working directory of another problem, which will move you one directory higher.

- Next execute
    ```R
    download.file("https://cdn.cs50.net/r/2024/x/psets/2/ontime.zip", "ontime.zip")
    ```
    in order to download a ZIP called ontime.zip into your codespace.

- Then execute
    ```R
    unzip("ontime.zip")
    ```
    to create a folder called ontime. You no longer need the ZIP file, so you can execute