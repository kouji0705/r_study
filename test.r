# 平均発生率 λ = 3, 発生回数 k = 5
lambda <- 3
k <- 5
result <- dpois(k, lambda)
cat("P(X = 5):", result, "\n")