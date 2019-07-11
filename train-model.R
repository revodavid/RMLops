## toy model, using mtcars
# mpg.reg <- lm(mpg ~ disp + hp + factor(cyl), data=mtcars)

library(xgboost, lib.loc="library")

data(agaricus.train, package='xgboost')

train <- agaricus.train

dtrain <- xgb.DMatrix(data = train$data, label = train$label)
bst <- xgboost(data = dtrain, max_depth = 2, eta = 1, nthread = 2, nrounds = 2, 
               objective = "binary:logistic", verbose = 2)

saveRDS(mpg.reg, file="model.Rd")
