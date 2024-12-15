# 必要なパッケージを読み込む（初回のみインストール）
if(!require(ggplot2)) install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)

# データの設定
# 国語: 平均70, 標準偏差10
mu_kokugo <- 70
sigma_kokugo <- 10

# 数学: 平均50, 標準偏差5
mu_math <- 50
sigma_math <- 5

# x軸の範囲を設定
x_kokugo <- seq(40, 100, by = 0.1)  # 国語のスコア範囲
x_math <- seq(30, 70, by = 0.1)    # 数学のスコア範囲

# 正規分布の確率密度を計算
y_kokugo <- dnorm(x_kokugo, mean = mu_kokugo, sd = sigma_kokugo)
y_math <- dnorm(x_math, mean = mu_math, sd = sigma_math)

# 国語と数学のデータを結合
data <- data.frame(
  Score = c(x_kokugo, x_math),
  Density = c(y_kokugo, y_math),
  Subject = rep(c("Kokugo", "Math"), c(length(x_kokugo), length(x_math)))
)

# 正規分布をプロット
ggplot(data, aes(x = Score, y = Density, color = Subject)) +
  geom_line(size = 1) +
  labs(title = "Normal Distribution of Math and Kokugo",
       x = "Score",
       y = "Probability Density",
       color = "Subject") +
  theme_minimal() +
  scale_color_manual(values = c("blue", "red"))