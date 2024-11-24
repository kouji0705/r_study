# 必要なライブラリ
library(ggplot2)
library(extrafont)  # フォント管理ライブラリ

# 日本語対応フォントをインストール（必要に応じて一度だけ実行）
# font_import(prompt = FALSE)

# 日本語フォントの指定
jp_font <- "Hiragino Sans"  # Macの場合 (ヒラギノ)
# jp_font <- "MS Gothic"  # Windowsの場合

# データの作成
data <- data.frame(
  x = c(10, 20, 30, 40, 50),  # 広告費
  y = c(58, 74, 94, 120, 142) # 売上
)

# 単回帰分析の計算
mean_x <- mean(data$x)  # xの平均
mean_y <- mean(data$y)  # yの平均

# 傾きと切片の計算
sum_xy <- sum((data$x - mean_x) * (data$y - mean_y))
sum_x2 <- sum((data$x - mean_x)^2)
beta_1 <- sum_xy / sum_x2  # 傾き
beta_0 <- mean_y - beta_1 * mean_x  # 切片

# 回帰直線の方程式
data$y_pred <- beta_0 + beta_1 * data$x

# プロットの作成
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "blue", size = 3, alpha = 0.8) +  # 元のデータ点
  geom_line(aes(y = y_pred), color = "red", size = 1) + # 回帰直線
  labs(
    title = "Simple Linear Regression",
    x = "Advertising Expense (x)", 
    y = "Sales (y)"
  ) +
  theme_minimal(base_family = jp_font) +  # 日本語フォントを指定
  theme(plot.title = element_text(hjust = 0.5))  # タイトル中央寄せ