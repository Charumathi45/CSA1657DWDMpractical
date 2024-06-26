ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

mean_age <- mean(ages)
print(paste("Mean:", mean_age))
median_age <- median(ages)
print(paste("Median:", median_age))
mode_age <- as.numeric(names(sort(table(ages), decreasing = TRUE)[1]))

num_modes <- length(table(ages))
modality <- ifelse(num_modes == 1, "Unimodal",
                   ifelse(num_modes == 2, "Bimodal",
                          ifelse(num_modes == 3, "Trimodal",
                                 "Multimodal")))


print(paste("Mode:", mode_age))
print(paste("Modality:", modality))

midrange_age <- (max(ages) + min(ages)) / 2

print(paste("Midrange:", midrange_age))

q1 <- quantile(ages, 0.25)
q3 <- quantile(ages, 0.75)

print(paste("First Quartile (Q1):", q1))
print(paste("Third Quartile (Q3):", q3))
