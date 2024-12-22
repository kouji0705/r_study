# 一致推定量: 標本平均が母平均に収束することを確認

set.seed(123) # 再現性のため
true_mean <- 50  # 母平均
true_sd <- 10    # 母標準偏差

# 標本サイズを徐々に増やす
sample_sizes <- seq(10, 1000, by = 10)

# 標本平均を計算
sample_means <- sapply(sample_sizes, function(n) {
  sample_data <- rnorm(n, mean = true_mean, sd = true_sd) # 標本を生成
  mean(sample_data) # 標本平均を計算
})

# 結果のプロット
plot(sample_sizes, sample_means, type = "o", col = "blue",
     main = "Sample Mean Converging to True Mean",
     xlab = "Sample Size", ylab = "Sample Mean")
abline(h = true_mean, col = "red", lty = 2, lwd = 2) # 真の母平均
legend("topright", legend = c("Sample Mean", "True Mean"), 
       col = c("blue", "red"), lty = c(1, 2), lwd = c(1, 2))