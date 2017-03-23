ceosal1 <- read.dta13("stata/CEOSAL1.DTA")
m <- lm(salary ~ roe, data=ceosal1)
sm <- summary(m)
