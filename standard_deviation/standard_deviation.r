# データ
data <- c(90, 80, 60, 70, 40)

# 平均値
mean_value <- mean(data)  # 平均値

# 偏差の2乗の合計
squared_deviation <- sum((data - mean_value)^2)

# 母分散
variance_population <- squared_deviation / length(data)

# 母標準偏差（分散の平方根）
sd_population <- sqrt(variance_population)

# 結果の出力
cat("母分散:", variance_population, "\n")
cat("母標準偏差:", sd_population, "\n")

# 偏差値の計算
deviation_scores <- 50 + 10 * (data - mean_value) / sd_population

# 偏差値の出力
cat("偏差値:\n")
for (i in 1:length(data)) {
  cat(sprintf("得点: %d -> 偏差値: %.2f\n", data[i], deviation_scores[i]))
}