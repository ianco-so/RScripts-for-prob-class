# Tabela de exemplo
clientes <- data.frame(
  Cod = 1:4,
  Nome = c("João", "Maria", "José", "Pedro"),
  Saldo = c(-115.2, 1543.5, 1174.0, 2000.14)
)

# Amplitude dos saldos
range(clientes$Saldo)