# 必要なパッケージをロード
library(quantmod)

# フォント設定
par(family = "Hiragino Sans")  # macOS用日本語フォント

# トヨタ自動車（7203.T）のデータを取得
symbol <- "7203.T"
getSymbols(symbol, src = "yahoo", from = "2023-01-01")

# 移動平均線を計算
data <- get(symbol)

data$SMA20 <- SMA(Cl(data), n = 20)
data$SMA50 <- SMA(Cl(data), n = 50)
data$SMA100 <- SMA(Cl(data), n = 100)

# PNGファイルとして保存
file_name <- "toyota_stock_chart_japanese.png"
png(filename = file_name, width = 1200, height = 800, res = 120, family = "Hiragino Sans")

# チャートを作成
chartSeries(data, 
            theme = chartTheme("white"), 
            TA = "addVo(); addSMA(20, col='blue'); addSMA(50, col='green'); addSMA(100, col='red')",
            up.col = "green", dn.col = "red", 
            up.border = "black", dn.border = "black")

# 日本語タイトルを追加
title(main = "Toyota chart 2023year ", col.main = "black", font.main = 1)

# デバイスを閉じる
dev.off()

cat("チャートを保存しました:", file_name, "\n")