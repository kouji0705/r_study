# 必要なパッケージをインストール＆読み込む（初回のみインストールが必要）
if(!require(ggplot2)) install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)

# データ入力
# 教科ごとの平均値と標準偏差
mu_kokugo <- 70     # 国語の平均
sigma_kokugo <- 10  # 国語の標準偏差
mu_math <- 50       # 数学の平均
sigma_math <- 5     # 数学の標準偏差

# 点数の範囲を設定
x_kokugo <- seq(40, 100, by = 0.1)  # 国語のスコア範囲
x_math <- seq(30, 70, by = 0.1)    # 数学のスコア範囲

# 標準化したスコアを計算
z_kokugo <- (x_kokugo - mu_kokugo) / sigma_kokugo
z_math <- (x_math - mu_math) / sigma_math

# 標準正規分布の確率密度を計算
y_z_kokugo <- dnorm(z_kokugo, mean = 0, sd = 1)
y_z_math <- dnorm(z_math, mean = 0, sd = 1)

# 標準正規分布のデータを結合
z_data <- data.frame(
  Z_Score = c(z_kokugo, z_math),
  Density = c(y_z_kokugo, y_z_math),
  Subject = rep(c("Kokugo", "Math"), c(length(z_kokugo), length(z_math)))
)

# データフレームの内容を表示
cat("Data Frame Head (First 6 rows):\n")
print(head(z_data))  # データの先頭部分を表示

cat("\nSummary of Data Frame:\n")
print(summary(z_data))  # データの要約統計量を表示

# 標準正規分布をプロット
ggplot(z_data, aes(x = Z_Score, y = Density, color = Subject)) +
  geom_line(size = 1) +
  labs(title = "Standard Normal Distribution of Math and Kokugo",
       x = "Standardized Score (Z-Score)",
       y = "Probability Density",
       color = "Subject") +
  theme_minimal() +
  scale_color_manual(values = c("blue", "red"))