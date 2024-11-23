# 必要なパッケージをロード
library(quantmod)

# フォント設定
par(family = "Hiragino Sans")  # macOS用日本語フォント

# トヨタ自動車（7203.T）のデータを取得
symbol <- "7203.T"
getSymbols(symbol, src = "yahoo", from = "2023-01-01")

# 移動平均線を計算
data <- get(symbol)

summary(data)  # 各カラムの統計情報を表示

# str(data)

# 最初の3行だけを表示
# head(data, n = 3)