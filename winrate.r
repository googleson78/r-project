info <- fromJSON('picksbans')

winrate <- info$wins / info$picks

# hist drawing
png(filename="winrate_hist.png", width=1200, height=1200)
hist(winrate, 10)
dev.off()

# qq drawing
png(filename="winrate_qq.png", width=1200, height=1200)
qqnorm(winrate, pch=19)
qqline(winrate)
dev.off()

# shapiro
shapiro.test(winrate)

# mean
mean(winrate)

# var
var(winrate)
