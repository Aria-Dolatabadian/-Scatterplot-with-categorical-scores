library(ggplot2)

# Read data back into R
imported_data <- read.csv("data.csv")


# Vector of colors
cols <- c("#1170AA", "#55AD89", "#EF6F6A")


# Scatter plot by group
ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point()


# Vector of colors
cols <- c("#1170AA", "#55AD89", "#EF6F6A")

ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point() +
  scale_color_manual(values = cols)


ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point(shape = 17, size = 2)


ggplot(df, aes(x = x, y = y, color = group,
               shape = group)) +
  geom_point(size = 2)



ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point(size = 2) +
  guides(colour = guide_legend(title = "Title"))



ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point(size = 2) +
  scale_color_discrete(labels = c("G1", "G2", "G3"))


ggplot(df, aes(x = x, y = y, color = group)) +
  geom_point(size = 2) +
  theme(legend.position = "none")

