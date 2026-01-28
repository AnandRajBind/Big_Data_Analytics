
# ================================
# Music Genre Prediction using Decision Tree (R)
# ================================

# Install required packages (run only once)
#install.packages("rpart")
#install.packages("rpart.plot")

# Load libraries
library(rpart)
library(rpart.plot)

# Read dataset (from working directory)
music_data <- read.csv("music.csv")
head(music_data)

# Separate input features (X) and output label (y)
X <- music_data[, !(names(music_data) %in% "genre")]
y <- music_data$genre

# Combine into one dataframe
music_df <- data.frame(X, genre = y)

# Create Decision Tree model
model <- rpart(
  genre ~ .,
  data = music_df,
  method = "class"
)

# Display model
print(model)

# Predict for new data
new_data <- data.frame(
  age = c(21, 22),
  gender = c(1, 0)
)

predictions <- predict(model, new_data, type = "class")
print(predictions)

# Visualize Decision Tree
rpart.plot(
  model,
  box.palette = "Blues",
  shadow.col = "gray",
  nn = TRUE
)
