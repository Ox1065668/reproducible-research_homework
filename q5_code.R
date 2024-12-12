# Q5

# install.packages("readr")
# install.packages("dplyr")

library(readr)
library(dplyr)

virology_data <- read_csv("question-5-data/Cui_etal2014.csv")

# Q5a) viewing the data

dim(virology_data)

# 33 rows, 13 columns


# Q5b) log-log transformation

log_data <- virology_data %>%
  mutate(log_volume = log(`Virion volume (nm×nm×nm)`), 
         log_g_length = log(`Genome length (kb)`))

# Q5c) finding the exponent and scaling factor of the allometric law for dsDNA viruses

linear_model <- lm(log_volume ~ log_g_length, data = log_data)
summary(linear_model)

# Slope (exponent) =  1.5152, with a p value of 6.44e-10

# Intercept = 7.0748
exp(7.0748)

# Scaling factor = 1181.807, with a p value of 2.28e-10

# Q5d) reproducing the graph shown in the README file

ggplot(data = log_data, aes(x=log_g_length, y=log_volume)) + 
  geom_point() +
  xlab("log [Genome length (kb)]") + 
  ylab("log [Virion volume (nm3)]") +
  geom_smooth(method = 'lm') +
  theme_minimal() +
  theme(panel.border = element_rect(color = "black", fill = NA, size + 1))

# Q5e) calculating the estimated volume of a 300kb dsDNA virus

1181.807*(300^1.5152)

# Volume = 6697006