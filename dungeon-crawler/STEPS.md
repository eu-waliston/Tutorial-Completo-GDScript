# 🎯 Fases de Desenvolvimento
- FASE 1: Configuração e Estrutura Básica
- FASE 2: Sistema do Jogador
- FASE 3: Inimigos e Combate
- FASE 4: UI e Gerenciamento
- FASE 5: Features Avançadas

# Estrutua do Projeto

``` bash

DungeonCrawler/
├── 📁 addons/                          # Extensões e plugins
├── 📁 assets/
│   ├── 📁 audio/
│   │   ├── 📁 music/
│   │   └── 📁 sfx/
│   ├── 📁 fonts/
│   ├── 📁 graphics/
│   │   ├── 📁 characters/
│   │   ├── 📁 enemies/
│   │   ├── 📁 environment/
│   │   ├── 📁 ui/
│   │   └── 📁 effects/
│   └── 📁 data/                        # JSON, configurações
├── 📁 autoloads/                       # Singletons
│   ├── 🔊 game_manager.gd
│   ├── 🔊 event_bus.gd
│   ├── 🔊 save_system.gd
│   └── 🔊 effect_manager.gd
├── 📁 scenes/
│   ├── 📁 entities/
│   │   ├── 📁 player/
│   │   │   ├── 🎮 player.tscn
│   │   │   ├── 🎮 player.gd
│   │   │   ├── 🎮 player_state_machine.gd
│   │   │   └── 📁 components/          # Componentes do player
│   │   └── 📁 enemies/
│   │       ├── 📁 base/
│   │       │   ├── 👹 enemy.tscn
│   │       │   └── 👹 enemy.gd
│   │       ├── 📁 slime/
│   │       │   ├── 🟢 slime.tscn
│   │       │   └── 🟢 slime.gd
│   │       ├── 📁 skeleton/
│   │       │   ├── 💀 skeleton.tscn
│   │       │   └── 💀 skeleton.gd
│   │       └── 📁 boss/               # Inimigos especiais
│   ├── 📁 world/
│   │   ├── 🗺️ dungeon_room.tscn
│   │   ├── 🗺️ dungeon_generator.gd
│   │   ├── 🚪 door.tscn
│   │   ├── 🚪 door.gd
│   │   └── 📁 props/                  # Props do cenário
│   ├── 📁 ui/
│   │   ├── 🎨 hud.tscn
│   │   ├── 🎨 hud.gd
│   │   ├── 🎨 pause_menu.tscn
│   │   ├── 🎨 pause_menu.gd
│   │   ├── 🎨 inventory_ui.tscn
│   │   ├── 🎨 inventory_ui.gd
│   │   ├── 🎨 dialogue_box.tscn
│   │   ├── 🎨 dialogue_system.gd
│   │   └── 🎨 main_menu.tscn
│   ├── 📁 systems/
│   │   ├── ⚙️ enemy_spawner.tscn
│   │   ├── ⚙️ enemy_spawner.gd
│   │   ├── ⚙️ item_spawner.gd
│   │   └── ⚙️ camera_system.gd
│   └── 📁 items/
│       ├── 🎁 health_potion.tscn
│       ├── 🎁 health_potion.gd
│       ├── 🎁 coin.tscn
│       ├── 🎁 coin.gd
│       └── 📁 weapons/
├── 📁 scripts/
│   ├── 📁 systems/
│   │   ├── ⚡ inventory_system.gd
│   │   ├── ⚡ pathfinding.gd
│   │   ├── ⚡ audio_manager.gd
│   │   └── ⚡ input_manager.gd
│   ├── 📁 entities/
│   │   ├── 🏗️ base_entity.gd
│   │   ├── 🎯 projectile.gd
│   │   └── 🎯 interactable.gd
│   ├── 📁 utils/
│   │   ├── 🔧 helpers.gd
│   │   ├── 🔧 constants.gd
│   │   └── 🔧 game_settings.gd
│   └── 📁 states/                     # Máquinas de estado
│       ├── 🔄 state_machine.gd
│       ├── 🔄 state.gd
│       ├── 🔄 player_states/
│       └── 🔄 enemy_states/
├── 📁 data/
│   ├── 📄 items.json                  # Dados dos itens
│   ├── 📄 enemies.json                # Dados dos inimigos
│   └── 📄 dialogues.json              # Diálogos do jogo
└── 🏠 main.tscn                       # Cena principal

```
