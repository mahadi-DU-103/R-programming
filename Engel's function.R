fa<-c(20,17,17,19,17,14,15,19,16,15)
fb<-c(3.8,3.9,4.1,4.9,5.5,4.3,6.1,4.9,6.7,4)
housing<-c(22.3,38,29.2,39.9,22.6,36.8,23.6,39.6,20.6,20.6)
clothing<-c(6.7,9,23.5,22.5,9.8,23.5,8.9,21.3,8.7,8.9)
transportation<-c(7.8,17,16,16.5,9.9,19,8.8,7.8,9.6,6.7)

y=fa+fb
x=housing+clothing+transportation+y
x

model<-lm(y~x)
coefficients(model)

beta0<-coefficients(model)[1]
beta0

beta1<-coefficients(model)[2]
beta1



#incourse 22: per capita double log Engel's function

food<-c(1102,1120,3100,4512,2135,2015,2942,2541,4961,5561,6745,5412,1110,7451,3215)
others<-c(152,221,114,900,426,441,312,143,520,980,796,1136,285,1294,439)
fam_size<-c(2,3,5,5,2,3,3,3,5,6,8,6,2,7,3)

total_exp <- food + others
tota_per_capita_exp <- total_exp / fam_size
food_per_capita <- food / fam_size

y<- log(food_per_capita)
y
x<- log(tota_per_capita_exp)
x

model <- lm(y ~ x)
coefficients(model)

beta0<-coefficients(model)[1]
beta0

beta1<-coefficients(model)[2]
beta1
 
