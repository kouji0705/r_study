# 必要なパッケージをロード
if (!require("quantmod")) install.packages("quantmod")
library(quantmod)

# 日経225構成銘柄リスト（例: 一部のみ）
nikkei225_symbols <- c("7203.T", "9984.T", "6758.T", "6861.T", "6501.T")  # 実際には全225銘柄

# 日付を設定
today <- Sys.Date()  # 現在の日付
one_year_ago <- today - 365  # 1年前

# データを格納するデータフレームを作成
comparison <- data.frame(
  Symbol = character(),
  OneYearAgo = numeric(),
  Current = numeric(),
  ChangePercent = numeric(),
  stringsAsFactors = FALSE
)

# 各銘柄のデータを取得して比較
for (symbol in nikkei225_symbols) {
  try({
    # データ取得
    stock_data <- getSymbols(symbol, src = "yahoo", from = one_year_ago, to = today, auto.assign = FALSE)
    
    # 1年前の終値と現在の終値
    one_year_ago_close <- Cl(stock_data[as.character(one_year_ago)])
    current_close <- Cl(last(stock_data))
    
    # データをデータフレームに追加
    comparison <- rbind(
      comparison,
      data.frame(
        Symbol = symbol,
        OneYearAgo = as.numeric(one_year_ago_close),
        Current = as.numeric(current_close),
        ChangePercent = ((as.numeric(current_close) - as.numeric(one_year_ago_close)) / as.numeric(one_year_ago_close)) * 100
      )
    )
  }, silent = TRUE)  # エラーを無視して次へ
}

# 結果を表示
print(comparison)