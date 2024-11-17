# CRANミラーを設定
options(repos = c(CRAN = "https://cloud.r-project.org/"))

# 必要なパッケージをインストール
if (!require("quantmod")) install.packages("quantmod")

# quantmodパッケージをロード
library(quantmod)

# 日経平均株価のデータを取得
getSymbols("^N225", src = "yahoo")

# データの確認
print(head(N225))

# PNGファイルとして保存
file_name <- "nikkei225_chart.png"  # 保存するファイル名
png(filename = file_name, width = 800, height = 600)  # ファイル名とサイズを指定

# プロット
chartSeries(N225, name = "nikkei225")

# ファイルを閉じる
dev.off()

cat("グラフを保存しました:", file_name, "\n")