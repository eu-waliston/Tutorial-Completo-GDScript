# scripts/systems/QuestSystem.gd
extends Node

var active_quests: Dictionary = {}
var completed_quests: Dictionary = {}

func start_quest(quest_id: String, quest_data: Dictionary):
    if not active_quests.has(quest_id) and not completed_quests.has(quest_id):
        active_quests[quest_id] = quest_data
        print("Missão iniciada: ", quest_data.title)

func complete_quest(quest_id: String):
    if active_quests.has(quest_id):
        var quest = active_quests[quest_id]
        completed_quests[quest_id] = quest
        active_quests.erase(quest_id)

        # Dar recompensa ao jogador
        give_quest_reward(quest)

        GameEvents.emit_signal("quest_completed", quest_id)
        print("Missão completada: ", quest.title)

func give_quest_reward(quest: Dictionary):
    if quest.has("reward_exp"):
        # Adicionar experiência ao jogador
        pass
    if quest.has("reward_items"):
        # Adicionar itens ao inventário
        pass