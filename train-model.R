## toy model, using mtcars

mpg.reg <- lm(mpg ~ disp + hp + factor(cyl), data=mtcars)
saveRDS(mpg.reg, file="model.Rd")
