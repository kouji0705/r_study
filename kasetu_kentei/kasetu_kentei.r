# サンプルデータ生成（学生のテスト点数）
set.seed(123)  # 再現性のため
sample_scores <- rnorm(30, mean = 78, sd = 10)  # 平均78、標準偏差10のデータを30個生成

# データの要約
summary(sample_scores)
hist(sample_scores, breaks = 10, col = "skyblue", 
     main = "Histogram of Test Scores",
     xlab = "Scores")

# 仮説検定
# 帰無仮説: 平均点 = 75
# 対立仮説: 平均点 ≠ 75（両側検定）
t_test_result <- t.test(sample_scores, mu = 75)

# 結果を出力
print(t_test_result)

# 結果の解釈
if (t_test_result$p.value < 0.05) {
  cat("帰無仮説を棄却します。平均点は75ではありません。\n")
} else {
  cat("帰無仮説を棄却できません。平均点は75と考えられます。\n")
}