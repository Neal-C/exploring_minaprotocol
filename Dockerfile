# I take no responsability in bloated Docker images. Proceed at your own risk :)
FROM oven/bun
COPY . .
CMD bun run src/main.ts