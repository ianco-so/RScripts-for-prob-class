# Tabela de exemplo
clientes <- data.frame(
  Cod = 1:4,
  Nome = c("João", "Maria", "José", "Pedro"),
  Saldo = c(-115.2, 1543.5, 1174.0, 2000.14)
)

# Amplitude dos saldos
range(clientes$Saldo)

alloy <- c(50.5, 51.1, 52.4, 53.0, 53.4, 53.5, 54.1, 55.3,
55.7, 55.7, 59.5, 63.5, 64.3, 67.3, 69.1, 69.5,
70.2, 70.5, 71.4, 72.3, 73.0, 74.4, 77.8, 78.5,
82.5, 82.7, 84.3, 85.8, 87.5, 95.4, 119.0)