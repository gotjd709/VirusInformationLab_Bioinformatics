####### Visualization and Clustering of sample region base on lat and lon using R


##### 필요한 라이브러리 불러오기

library(ggplot2)
library(ggmap)
library(maps)
library(fpc)


##### 파일 불러오기

register_google(key = "AIzaSyARxHlQNz-AI-TOmWna6uAQN8h31e-h5iM")
sample<- read.csv("C:/Users/ay190130/Desktop/감염병연구실/연구실/시료 전처리/시료 선별/최종/TT_T.csv")


##### 전체 시료 분포 확인

map <- get_map(location = "South Korea", maptype = "hybrid", source = "google", zoom = 7)
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = "red"))


##### 전체를 hclust로 나누 것 tree로 확인

lat_lon <- subset(sample, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "South Korea Bat's Habitat", ylab = "Distance", main = "Cluster1 Base on Lat and Lon")
rect.hclust(fit, k = 5, border = "red")


##### 전체를 hclust로 나누 것 ggmap으로 확인

clus <- cutree(fit, 5)
clus <- as.factor(clus)
sample <- cbind(sample, clus)
map <- get_map(location = "South Korea", maptype = "hybrid", source = "google", zoom = 7)
ggmap(map) + geom_point(data = sample, mapping = aes(x = lon, y = lat, color = clus))




### Cluster 1과 4 추출하기

sample1 <- sample[sample$clus == "1",]
sample4 <- sample[sample$clus == "4",]




### Cluster 1를 hclust로 나눈 것 tree로 확인

lat_lon <- subset(sample1, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample1$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "South Korea Bat's Habitat", ylab = "Distance", main = "Cluster1 Base on Lat and Lon")
rect.hclust(fit, k = 8, border = "red")
abline(0.1, 0, col = "blue")


# cluster 1_8을 추출하여 확인

clus1 <- cutree(fit, 8)
clus1 <- as.factor(clus1)
sample1 <- cbind(sample1, clus1)

sample1_8 <- sample1[sample1$cluster1 == "8",]
map <- get_map(location = c(lon = 126.45, lat = 33.3), maptype = "hybrid", source = "google", zoom = 13)
ggmap(map) + geom_point(data = sample1_8, mapping = aes(x = lon, y = lat, color = cluster1))




### Cluster 4을 hclust로 나눈 것 tree로 확인

lat_lon <- subset(sample4, select = c('lat', 'lon'))
dimnames(lat_lon)[[1]] <- sample4$Name
d <- dist(lat_lon, method = "euclidean")
fit <- hclust(d, method = "ave")
plot(fit, hang = -1, xlab = "South Korea Bat's Habitat", ylab = "Distance", main = "Cluster4 Base on Lat and Lon")
rect.hclust(fit, k = 17, border = "red")
abline(0.1, 0, col = "blue")


# cluster 4_9을 추출하여 확인

clus4 <- cutree(fit, 17)
clus4 <- as.factor(clus4)
sample4 <- cbind(sample4, clus4)

sample4_9 <- sample4[sample4$clus4 == "9",]
map <- get_map(location = c(lon = 129.05, lat = 37.19), maptype = "hybrid", source = "google", zoom = 12)
ggmap(map) + geom_point(data = sample4, mapping = aes(x = lon, y = lat, color = clus4))

