# 必要なライブラリ
if(!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# データの作成
x <- seq(-4, 4, by = 0.01)  # zスコアの範囲
y <- dnorm(x, mean = 0, sd = 1)  # 標準正規分布の確率密度関数

# データフレーム
data <- data.frame(x, y)

# グラフの作成
ggplot(data, aes(x = x, y = y)) +
  geom_line(color = "blue", size = 1) +
  geom_ribbon(data = subset(data, x >= -1 & x <= 1), 
              aes(ymin = 0, ymax = y), fill = "red", alpha = 0.5) +
  labs(title = "Normal Distribution and Probability Density",
       x = "Data Value (z-score)",
       y = "Probability Density") +
  theme_minimal()