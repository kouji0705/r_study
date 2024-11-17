# CRANミラーを設定
options(repos = c(CRAN = "https://cloud.r-project.org/"))

# quantmodパッケージをインストール
if (!require("quantmod")) install.packages("quantmod")

# quantmodパッケージをロード
library(quantmod)

# 銘柄コードを指定してトヨタ株のデータを取得
getSymbols("7203.T", src = "yahoo")

# データの確認
head(`7203.T`)

# プロットをPNGファイルとして保存
file_name <- "toyota_stock_chart.png"  # 保存するファイル名
png(filename = file_name, width = 800, height = 600)  # ファイル形式とサイズを指定

# 終値のプロット
chartSeries(`7203.T`, name = "トヨタ株価")

# ファイル出力を終了
dev.off()

cat("グラフを保存しました:", file_name, "\n")