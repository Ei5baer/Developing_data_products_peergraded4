mpg prediction for your car
========================================================
author: Shruti S P
date: 6th November 2020
autosize: true

Overview
========================================================

As I was asked to create a Shiny app, I went completely wild and came up with a code that might not do much, but is fun to use. Perhaps you think it's a joke. But eh, who cares? Let's get right into it!


Functionality
========================================================

So what you gotta do is just enter values. It's gonna throw out some random value which makes no sense at all. Honestly, it's not even supposed to


Slide With Code
========================================================


```r
summary(mtcars)
```

```
      mpg             cyl             disp             hp       
 Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0  
 1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5  
 Median :19.20   Median :6.000   Median :196.3   Median :123.0  
 Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7  
 3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0  
 Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0  
      drat             wt             qsec             vs        
 Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000  
 1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000  
 Median :3.695   Median :3.325   Median :17.71   Median :0.0000  
 Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375  
 3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000  
 Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000  
       am              gear            carb      
 Min.   :0.0000   Min.   :3.000   Min.   :1.000  
 1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:2.000  
 Median :0.0000   Median :4.000   Median :2.000  
 Mean   :0.4062   Mean   :3.688   Mean   :2.812  
 3rd Qu.:1.0000   3rd Qu.:4.000   3rd Qu.:4.000  
 Max.   :1.0000   Max.   :5.000   Max.   :8.000  
```

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-2](peer_graded_4_ddp.rpres-figure/unnamed-chunk-2-1.png)

Shiny application and files
========================================================

You can go to: https://frostfall123.shinyapps.io/peer_graded_4/
and start working with the app.

The application was built using Shiny package (Highly recommend it) and the source code is in 2 files:
- `ui.R`
- `server.R`

Both files can be found here: https://github.com/Ei5baer/Developing_data_products_peergraded4
