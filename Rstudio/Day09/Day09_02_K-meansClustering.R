# 비계층적 군집방법


data(iris)
newiris <- iris
newiris$Species <- NULL
kc <- kmeans(newiris, 3)

table(iris$Species, kc$cluster)

plot(newiris[c("Sepal.Length", "Sepal.Width")], col = kc$cluster)
