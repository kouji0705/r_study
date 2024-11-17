# PNGデバイスを開く
png("scatter_plot.png")

# 行列の作成
mat <- matrix(c(12, 2, 5, 8, 7, 10, 3, 6, 9, 4, 11, 1, 4, 7, 6, 9, 2, 5, 8, 3), nrow = 10, ncol = 2)

# 行列の内容を表示
print("行列の内容:")
print(mat)

# 散布図の作成
plot(mat[,1], mat[,2], xlab = "Column 1", ylab = "Column 2", main = "scatter", pch = 19, col = "blue")

# 回帰直線の追加
abline(lm(mat[,2] ~ mat[,1]), col = "red")

# PNGデバイスを閉じる
dev.off()