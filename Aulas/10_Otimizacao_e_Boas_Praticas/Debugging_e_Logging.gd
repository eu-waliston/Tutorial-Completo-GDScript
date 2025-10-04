# Logging organizado
var health: int = 100

func debug_log(message: String, level: String = "INFO"):
    var timestamp = Time.get_time_string_from_system()
    print("[%s] %s: %s" % [timestamp, level, message])

# Asserts para debugging
func set_health(value: int):
    assert(value >= 0 and value <= 100, "Health must be between 0 and 100")
    health = value

# Breakpoints condicionais
func process_damage(amount: int):
    if amount > 100:
        breakpoint  # Pausa o debugger aqui
    health -= amount