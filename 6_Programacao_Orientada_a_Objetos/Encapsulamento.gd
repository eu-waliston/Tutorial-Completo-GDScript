class_name BankAccount

var _balance: float = 0.0 #Verificavel privada (Convenção)
var account_holder: String # Variavel publica

# Getter customizado
func get_balance() -> float:
    return _balance

# Setter com validação
func deposit(amuont: float):
    if amuont > 0:
        _balance += amuont

func withdraw(amout: float) -> bool:
    if amout > 0 and _balance >= amuont:
        _balance -= amout
        return true

    return false