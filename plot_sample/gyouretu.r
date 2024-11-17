# 行列の作成
mat <- matrix(c(12, 2, 5, 8, 7, 10, 3, 6, 9, 4, 11, 1, 4, 7, 6, 9, 2, 5, 8, 3), nrow = 10, ncol = 2)

# 行列の内容を表示
print("行列の内容:")
print(mat)

# フォントの設定
par(family = "HiraginoSans-W3")

# プロットの作成
matplot(mat, type = "o", pch = 1, col = 1:2, xlab = "Index", ylab = "Value", main = "行列のプロット")

# 凡例の追加
legend("topright", legend = c("Column 1", "Column 2"), col = 1:2, pch = 1)
