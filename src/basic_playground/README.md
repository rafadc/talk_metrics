# Basic playground

This is the skeleton of the playground for all demos

## Applications

 - Prometheus: Is the application that holds the metrics.
 - Grafana: Is the application that will display the graphs we will be building.
 - Server: is a Ruby application that we will be observing.
 - Load generator: is a tiny Crystal app that will generate false requests to our Ruby app.tiny playground

## Usage

You can access Grafana at http://localhost:4000 . User and password are admin. It should be configured with prometheus as datasource already.