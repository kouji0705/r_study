# Parameter settings
p <- 0.3   # Success probability
k <- 1:20  # Number of trials (k)

# Probability Mass Function (PMF)
pmf <- dgeom(k - 1, prob = p)  # R's dgeom requires k-1

# Cumulative Distribution Function (CDF)
cdf <- pgeom(k - 1, prob = p)

# PMF Plot
plot(k, pmf, type = "h", lwd = 2, col = "blue",
     main = "Probability Mass Function (PMF) of Geometric Distribution",
     xlab = "Number of Trials (k)", ylab = "Probability",
     ylim = c(0, max(pmf) * 1.2))
points(k, pmf, pch = 16, col = "blue")
grid()

# CDF Plot
plot(k, cdf, type = "o", lwd = 2, col = "red",
     main = "Cumulative Distribution Function (CDF) of Geometric Distribution",
     xlab = "Number of Trials (k)", ylab = "Cumulative Probability",
     ylim = c(0, 1))
points(k, cdf, pch = 16, col = "red")
grid()