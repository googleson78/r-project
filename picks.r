info <- fromJSON('picksbans')

winrate <- info$wins / info$picks
picks <- info$picks

# hist drawing
png(filename="picks_hist.png", width=1200, height=1200)
hist(picks, 10)
dev.off()

# shapiro
shapiro.test(picks)

# dotplot for picks vs winrate
png(filename="picks_winrate_dot.png", width=1200, height=1200)
plot(picks, winrate)
dev.off()

# correlation for picks vs winrate
cor(picks, winrate)
