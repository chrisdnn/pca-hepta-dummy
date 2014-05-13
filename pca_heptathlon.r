library(HSAUR2)

data("heptathlon", package="HSAUR2h")
heptathlon$hurdles <- max(heptathlon$hurdles) - heptathlon$hurdles
heptathlon$run200m <- max(heptathlon$run200m) - heptathlon$run200m
heptathlon$run800m <- max(heptathlon$run800m) - heptathlon$run800m
score <- which(colnames(heptathlon) == "score")
plot(heptathlon[,-score])
round(cor(heptathlon[,-score]), 2)
heptathlon <- heptathlon[-grep("PNG", rownames(heptathlon)),]
heptathlon_pca <- prcomp(heptathlon[, -score], scale = TRUE)
print(heptathlon_pca)
score <- which(colnames(heptathlon) == "score")
plot(heptathlon[,-score])
summary(heptathlon_pca)
a1 <- heptathlon_pca$rotation[,1]
a1
