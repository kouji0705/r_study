# パッケージをインストール
install.packages("readxl", repos = "https://cran.rstudio.com/")
library(readxl)  # パッケージの読み込み

# Excelファイルのパスを指定
file_path <- "./user_list.xlsx"

# シートを読み込む（適切なシート名を指定）
data <- read_excel(file_path, sheet = 1)

# データの確認
head(data)