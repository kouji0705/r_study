# 点数データをベクトルとして定義
scores <- c(60, 70, 80, 90, 100)

# サンプル平均を計算
mean_score <- mean(scores)

# 偏差を計算
deviations <- scores - mean_score

# 偏差の二乗を計算
squared_deviations <- deviations^2

# 偏差の二乗の合計
sum_squared_deviations <- sum(squared_deviations)

# 不偏分散を計算
n <- length(scores)  # サンプルサイズ
unbiased_variance <- sum_squared_deviations / (n - 1)

# 結果を表示
cat("サンプル平均:", mean_score, "\n")
cat("偏差の二乗の合計:", sum_squared_deviations, "\n")
cat("不偏分散:", unbiased_variance, "\n")