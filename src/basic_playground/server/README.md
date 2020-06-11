# Server

It is the application that is meant to be instrumented and that offers the metrics.

It exposes two endpoints:

 - /current_time : It just replies a json with the current time.
 - /metrics : It returns metrics in a format prometheus can read.