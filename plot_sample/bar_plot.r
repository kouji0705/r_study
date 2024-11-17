# PNGデバイスを開く
png("bar_plot.png")

# 行列の作成
mat <- matrix(c(12, 2, 5, 8, 7, 10, 3, 6, 9, 4, 11, 1, 4, 7, 6, 9, 2, 5, 8, 3), nrow = 10, ncol = 2)

# 行列の内容を表示
print("行列の内容:")
print(mat)

# 各列の合計を計算
col_sums <- colSums(mat)

par(family = "HiraginoSans-W3")

# 棒グラフの作成
barplot(col_sums, names.arg = c("Column 1", "Column 2"), col = "blue", main = "棒グラフ", ylab = "合計値")

# PNGデバイスを閉じる
dev.off()