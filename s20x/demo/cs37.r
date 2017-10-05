data (soyabean.df)
interactionPlots(yield~cultivar+planttime,data=soyabean.df)
interactionPlots(yield~planttime+cultivar,data=soyabean.df)
soya.fit<-lm(yield~cultivar+planttime+ cultivar*planttime,data=soyabean.df)
eovcheck(soya.fit)
summary2way(soya.fit,page="table")
soya.fit1<-lm(yield~cultivar+planttime,data=soyabean.df)
eovcheck(soya.fit1)
normcheck(soya.fit1)
summary2way(soya.fit1,page="table")
summary2way(soya.fit1,page="nointeraction")
