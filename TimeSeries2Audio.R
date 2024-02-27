# Assuming 'df' is your dataframe and 'x' is the column you want to turn into sound
df <- read.csv("data.csv")

head(df)

compressed <- (df$x - min(df$x)) / (max(df$x) - min(df$x))  # Now between 0 and 1
compressed <- 2 * compressed - 1  # Rescale to be between -1 and 1

print(min(compressed))

span <- 0.5  # Span for the local regression, controls the degree of smoothing
smoothed_x <- predict(loess(x ~ I(1:nrow(audiodata)), data=audiodata, span=span))
print(smoothed_x)

write.csv(smoothed_x, "smoothed_x.csv", row.names = FALSE)
