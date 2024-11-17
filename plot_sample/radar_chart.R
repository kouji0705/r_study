# fmsbパッケージを読み込む
library(fmsb)

# PNGデバイスを開く
png("radar_chart.png")

# データフレームの作成
data <- data.frame(
  A = c(5, 3, 4, 2, 4),
  B = c(4, 2, 5, 3, 3),
  C = c(3, 4, 2, 5, 4),
  D = c(2, 5, 3, 4, 2),
  E = c(4, 3, 5, 2, 5)
)

# 最大値と最小値の行を追加
data <- rbind(rep(5, 5), rep(1, 5), data)

# フォントの設定
par(family = "HiraginoSans-W3")

# レーダーチャートの作成
radarchart(data, axistype = 1, 
           pcol = c("red", "blue", "green", "purple", "orange"), 
           pfcol = c("#FF9999", "#9999FF", "#99FF99", "#FF99FF", "#FFCC99"), 
           plwd = 2, 
           cglcol = "grey", 
           cglty = 1, 
           axislabcol = "grey", 
           caxislabels = seq(1, 5, 1), 
           cglwd = 0.8, 
           vlcex = 0.8)

# 凡例の追加
legend("topright", legend = c("A", "B", "C", "D", "E"), col = c("red", "blue", "green", "purple", "orange"), lty = 1, lwd = 2)

# PNGデバ���スを閉じる
dev.off()