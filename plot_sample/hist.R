# PNGデバイスを開く
png("histogram_plot.png")

# ベクトルの作成
data <- c(12, 2, 5, 8, 7, 10, 3, 6, 9, 4, 11, 1, 4, 7, 6, 9, 2, 5, 8, 3)

# ベクトルの内容を表示
print("ベクトルの内容:")
print(data)

# フォントの設定
par(family = "HiraginoSans-W3")

# ヒストグラムの作成
hist(data, breaks = 5, col = "blue", main = "ヒストグラム", xlab = "値", ylab = "頻度")

# PNGデバイスを閉じる
dev.off()