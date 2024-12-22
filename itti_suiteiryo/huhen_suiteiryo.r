# 不偏推定量: 標本分散が母分散に対応することを確認

set.seed(123) # 再現性のため
true_variance <- 100  # 母分散 (標準偏差^2)

# 標本サイズを徐々に増やす
sample_sizes <- seq(10, 1000, by = 10)

# 標本分散（不偏分散）を計算
sample_variances <- sapply(sample_sizes, function(n) {
  sample_data <- rnorm(n, mean = 0, sd = sqrt(true_variance)) # 標本を生成
  var(sample_data) # 標本分散 (不偏分散)
})

# 結果のプロット
plot(sample_sizes, sample_variances, type = "o", col = "blue",
     main = "Unbiased Variance Estimation",
     xlab = "Sample Size", ylab = "Sample Variance")
abline(h = true_variance, col = "red", lty = 2, lwd = 2) # 真の母分散
legend("topright", legend = c("Sample Variance", "True Variance"), 
       col = c("blue", "red"), lty = c(1, 2), lwd = c(1, 2))