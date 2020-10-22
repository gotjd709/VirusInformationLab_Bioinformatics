################ sampling map & clustering
library(ggplot2)
library(ggmap)
library(maps)
register_google(key = "AIzaSyARxHlQNz-AI-TOmWna6uAQN8h31e-h5iM")



###### TT 
### map
map <- get_map(location = "South Korea", maptype = "hybrid", source = "google", zoom = 7)
sample<- read.csv("C:/Users/ay190130/Desktop/data/Region_of_RawSample/TT.csv")
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = Sampling))
### clustering
lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "South Korea Bat's Habitat", ylab = "Distance", main = "South Korean Bat Cluster Base on Lat and Lon")
rect.hclust(fit, k = 9, border = "red")

###### TTT 
### map
map <- get_map(location = "South Korea", maptype = "hybrid", source = "google", zoom = 7)
sample<- read.csv("C:/Users/ay190130/Desktop/data/Region_of_RawSample/TTT.csv")
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = Sampling))
### clustering
lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "South Korea Bat's Habitat", ylab = "Distance", main = "South Korean Bat Cluster Base on Lat and Lon")
rect.hclust(fit, k = 9, border = "red")

###### GG 
### map
map <- get_map(location = c(lat = 37.664707, lon = 126.834623), maptype = "hybrid", source = "google", zoom = 9)
sample<- read.csv("C:/Users/ay190130/Desktop/data/Region_of_RawSample/GG.csv")
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = Sampling))
### clustering
lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "Geonggi Bat's Habitat", ylab = "Distance", main = "Geonggi Bat Cluster Base on Lat and Lon")
rect.hclust(fit, k = 3, border = "red")


###### IC 
### map
map <- get_map(location = c(lat = 37.664707, lon = 126.834623), maptype = "hybrid", source = "google", zoom = 9)
sample<- read.csv("C:/Users/ay190130/Desktop/data/Region_of_RawSample/IC.csv")
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = Sampling))
### clustering
lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "IncheonBat's Habitat", ylab = "Distance", main = "Incheon Bat Cluster Base on Lat and Lon")
rect.hclust(fit, k = 2, border = "red")


###### YW
### map
map <- get_map(location = c(lat = 37.046620, lon = 128.214508), maptype = "hybrid", source = "google", zoom = 9)
sample<- read.csv("C:/Users/ay190130/Desktop/data/Region_of_RawSample/YW.csv")
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = Sampling))
### clustering
lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "Gangwon_Yeongwol Bat's Habitat", ylab = "Distance", main = "Gangwon_Yeongwol Bat Cluster Base on Lat and Lon")
rect.hclust(fit, k = 9, border = "red")


###### SC
### map
map <- get_map(location = c(lat = 37.293231, lon = 129.133309), maptype = "hybrid", source = "google", zoom = 9)
sample<- read.csv("C:/Users/ay190130/Desktop/data/Region_of_RawSample/SC.csv")
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = Sampling))
### clustering
lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "Gangwon_Samcheok Bat's Habitat", ylab = "Distance", main = "Gangwon_Samcheok Bat Cluster Base on Lat and Lon")
rect.hclust(fit, k = 8, border = "red")



###### MK
### map
map <- get_map(location = c(lat = 36.560785, lon = 128.107433), maptype = "hybrid", source = "google", zoom = 9)
sample<- read.csv("C:/Users/ay190130/Desktop/data/Region_of_RawSample/MK.csv")
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = Sampling))
### clustering
lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "Gyeongsang_Mungyeong Bat's Habitat", ylab = "Distance", main = "Gyeongsang_Mungyeong Bat Cluster Base on Lat and Lon")
rect.hclust(fit, k = 6, border = "red")


###### CC
### map
map <- get_map(location = c(lat = 36.337137, lon = 127.402248), maptype = "hybrid", source = "google", zoom = 9)
sample<- read.csv("C:/Users/ay190130/Desktop/data/Region_of_RawSample/CC.csv")
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = Sampling))
### clustering
lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "Chungcheong Bat's Habitat", ylab = "Distance", main = "Chungcheong Bat Cluster Base on Lat and Lon")
rect.hclust(fit, k = 7, border = "red")


###### MP
### map
map <- get_map(location = c(lat = 34.668866, lon = 125.972563), maptype = "hybrid", source = "google", zoom = 9)
sample<- read.csv("C:/Users/ay190130/Desktop/data/Region_of_RawSample/MP.csv")
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = Sampling))
### clustering
lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "Jeonra_Mokpo Bat's Habitat", ylab = "Distance", main = "Jeonra_Mokpo Bat Cluster Base on Lat and Lon")
rect.hclust(fit, k = 7, border = "red")


###### HN
### map
map <- get_map(location = c(lat = 34.668866, lon = 125.972563), maptype = "hybrid", source = "google", zoom = 9)
sample<- read.csv("C:/Users/ay190130/Desktop/data/Region_of_RawSample/HN.csv")
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = Sampling))
### clustering
lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "Jeonra_Haenam Bat's Habitat", ylab = "Distance", main = "Jeonra_Haenam Bat Cluster Base on Lat and Lon")
rect.hclust(fit, k = 4, border = "red")


###### JJ
### map
map <- get_map(location = c(lat = 33.414063, lon = 126.510011), maptype = "hybrid", source = "google", zoom = 9)
sample<- read.csv("C:/Users/ay190130/Desktop/data/Region_of_RawSample/JJ.csv")
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = Sampling))
### clustering
lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "Jeju Island Bat's Habitat", ylab = "Distance", main = "Jeju Island Bat Cluster Base on Lat and Lon")
rect.hclust(fit, k = 9, border = "red")
