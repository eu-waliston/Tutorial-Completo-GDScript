# Referência fracas
var enemy_ref: WeakRef

func store_enemy_reference(enemy: Node):
    enemy_ref = weakref(enemy)

func get_enemy():
    if enemy_ref and enemy_ref.get_ref():
        return enemy_ref.get_ref()
    return null

# Verificando se um nó é valido

func is_node_valid(node: Node) -> bool:
    return is_instance_valid(node) and not node.is_queued_for_deletion()




