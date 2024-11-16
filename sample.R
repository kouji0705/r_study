rm(list = ls())  # すべてのオブジェクトを削除
graphics.off()   # グラフィックスデバイスを閉じる

# サンプルデータの作成
data <- data.frame(
  Name = c("1.Alice", "2.Bob", "Charlie", "111.David", "Eva"),
  Age = c(25, 30, 35, 40, 45),
  Score = c(90, 85, 88, 92, 95)
)

# データの確認
print("データフレームの内容:")
print(data)

# 平均年齢の計算
average_age <- mean(data$Age)
cat("平均年齢:", average_age, "\n")

quartz()  # macOS専用のグラフィックスデバイス

# スコアの棒グラフを作成
barplot(
  data$Score,
  names.arg = data$Name,
  col = "blue",
  main = "Score by Person",
  xlab = "Person",
  ylab = "Score"
)
