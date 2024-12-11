# 正規分布のパラメータを設定
mean_height <- 170  # 平均身長 (cm)
sd_height <- 5       # 標準偏差 (cm)

# 1. 確率密度関数 (PDF) を計算
x <- seq(150, 190, by = 0.1)  # 身長の範囲 (連続値)
y <- dnorm(x, mean = mean_height, sd = sd_height)  # 確率密度

# 確率密度関数をプロット
plot(
  x, y, type = "l", col = "blue", lwd = 2,
  main = "Probability Density Function (Normal Distribution)", # タイトル (英語)
  xlab = "Height (cm)",  # x軸ラベル (英語)
  ylab = "Density"       # y軸ラベル (英語)
)
