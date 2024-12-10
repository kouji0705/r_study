# 気温（X）と売上（Y）のデータ
temperature <- c(25, 27, 30, 32, 35, 37, 40)  # 気温
sales <- c(100, 120, 140, 150, 170, 180, 200)  # 売上個数

# 共分散の計算
covariance <- cov(temperature, sales)
print(paste("Covariance:", covariance))

# 相関係数の計算
correlation <- cor(temperature, sales)
print(paste("Correlation coefficient:", correlation))

# プロットして可視化
plot(temperature, sales, main = "Relationship between Temperature and Ice Cream Sales",
     xlab = "Temperature (°C)", ylab = "Sales (Units)", pch = 16, col = "blue")
abline(lm(sales ~ temperature), col = "red")  # 回帰直線