# fabr

## Current version - NOT FOR INSTALL

### Install
``` R
install.packages('devtools')
library(devtools)
install_github('enongad/fabr')
```

### Functions

#### reduceR
  A function that uses [**backwards selection**](https://en.wikipedia.org/wiki/Stepwise_regression) with an input *p*-value threshold. The function takes a method (only "lm" currently), reponse (string: response variable), param (list of variables to reduce), data (dataframe) and threshold (*p*-value threshold, default =0.05)
  
  ``` R
 reduceR() 
  ```
  
##### Current functionality 
* Simple `lm()` functionality
  
  
### Changelog
* 0.0.1  
  * reduceR 
    * Simple `lm()` functionality


