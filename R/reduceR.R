reduceR <- function(method,response, param, data, threshold=0.05){

  REDUCED = FALSE

  print(response)

  formula = as.formula(paste(response," ~ ", paste(param, collapse= "+")))

  model = lm(formula, data)

  pvalues = summary(model)$coefficients[,4]

  if(max(pvalues[2:length(pvalues)])<threshold){ REDUCED = TRUE}

  while(!REDUCED){

    max_param_pos = as.numeric(which.max(pvalues)[1])

    param = param[-(max_param_pos-1)]

    formula = as.formula(paste(response," ~ ", paste(param, collapse= "+")))

    model = lm(formula, data)

    pvalues = summary(model)$coefficients[,4]

   if(max(pvalues[2:length(pvalues)])<threshold){ REDUCED = TRUE}

    print(summary(model))

  }

  return(model)
}



