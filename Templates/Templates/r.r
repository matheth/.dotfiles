# LOAD DATA

library(datasets)

# SUMMARIZE DATA

head(iris)
summary(iris)
plot(iris)

# CLEAN UP

# Clear packages
detach("package:datasets", unload = TRUE)  # For base
# Clear plots
# dev.off()

