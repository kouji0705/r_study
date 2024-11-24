# 必要なライブラリ
library(ggplot2)

# データの作成
data <- data.frame(
  Sales = c(200, 300, 400, 500, 600),       # 売上 (従属変数)
  Advertising = c(10, 20, 30, 40, 50),      # 広告費 (独立変数1)
  Price = c(100, 90, 80, 70, 60)            # 商品の価格 (独立変数2)
)

# 重回帰分析
model <- lm(Sales ~ Advertising + Price, data = data)

# モデルの概要
summary(model)

# プロット作成例
library(ggplot2)
ggplot(data, aes(x = Advertising, y = Sales)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", formula = y ~ x, color = "red") +
  labs(title = "Relationship between Advertising and Sales",
       x = "Advertising Expense", y = "Sales")