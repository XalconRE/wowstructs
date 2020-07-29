meta:
  id: wow_unit
  endian: le
seq:
  - id: obj_data
    type: c_g_object
    size: 0xA8
  - id: unit_data
    type: c_g_unit_c
    size: (0x18E0 - obj_data.size)
    
types:
  c_g_object:
    instances:
      size: 
        value: 0xA8
      vtable:
        pos: 0x0
        type: pointer
      somedata:
        pos: 0x8
        type: pointer
      type:
        pos: 0x10
        type: u1
        enum: wow_type
      type_flags:
        pos: 0x14
        type: u1
        enum: wow_type_flags
      next:
        pos: 0x18
        type: pointer
      previous:
        pos: 0x20
        type: pointer
      guid:
        pos: 0x40
        type: wow_guid
      scale:
        pos: 0xA0
        type: f4
  c_g_unit_c:
    instances:
      vtable:
        type: pointer
      transport_guid:
        pos: (0x100 - _parent.obj_data.size)
        type: wow_guid
      position:
        pos: (0x110 - _parent.obj_data.size)
        type: vec3f
      rotation:
        pos: (0x120 - _parent.obj_data.size)
        type: vec3f
      scale:
        pos: (0x338 - _parent.obj_data.size)
        type: f4
      health_predicted:
        pos: (0x1378 - _parent.obj_data.size)
        type: u8
      power_predicted:
        pos: (0x1380 - _parent.obj_data.size)
        type: u4
        repeat: expr
        repeat-expr: 6
      charm:
        pos: (0x14C8 - _parent.obj_data.size)
        type: wow_guid
      summon:
        pos: (0x14D8 - _parent.obj_data.size)
        type: wow_guid
      critter_companion:
        pos: (0x14E8 - _parent.obj_data.size)
        type: wow_guid
      charmed_by:
        pos: (0x14F8 - _parent.obj_data.size)
        type: wow_guid
      summoned_by:
        pos: (0x1508 - _parent.obj_data.size)
        type: wow_guid
      created_by:
        pos: (0x1518 - _parent.obj_data.size)
        type: wow_guid
      demon_creator:
        pos: (0x1528 - _parent.obj_data.size)
        type: wow_guid
      look_at_controller_target:
        pos: (0x1538 - _parent.obj_data.size)
        type: wow_guid
      target:
        pos: (0x1548 - _parent.obj_data.size)
        type: wow_guid
      battle_pet_companion_guid:
        pos: (0x1558 - _parent.obj_data.size)
        type: wow_guid
      race:
        pos: (0x157C - _parent.obj_data.size)
        type: u1
        enum: wow_race
      class:
        pos: (0x157D - _parent.obj_data.size)
        type: u1
        enum: wow_class
      sex:
        pos: (0x157F - _parent.obj_data.size)
        type: u1
        enum: wow_sex
      display_power:
        pos: (0x1580 - _parent.obj_data.size)
        type: u1
        enum: resource_type
      health:
        pos: (0x1588 - _parent.obj_data.size)
        type: u8
      health_max:
        pos: (0x1590 - _parent.obj_data.size)
        type: u8
      level:
        pos: (0x1598 - _parent.obj_data.size)
        type: u4
      effective_level: # not verified
        pos: (0x159C - _parent.obj_data.size)
        type: u4
      something_animation: # 0 = standing, 1 = sitting, 3 = sleeping
        pos: (0x1600 - _parent.obj_data.size)
        type: u8
      power:
        pos: (0x1788 - _parent.obj_data.size)
        type: u4
        repeat: expr
        repeat-expr: 6
      power_max:
        pos: (0x17A0 - _parent.obj_data.size)
        type: u4
        repeat: expr
        repeat-expr: 6
      strength:
        pos: (0x1808 - _parent.obj_data.size)
        type: u4
      agility:
        pos: (0x180C - _parent.obj_data.size)
        type: u4
      stamina:
        pos: (0x1810 - _parent.obj_data.size)
        type: u4
      intellect:
        pos: (0x1814 - _parent.obj_data.size)
        type: u4
      spirit:
        pos: (0x1818 - _parent.obj_data.size)
        type: u4
  wow_guid:
    seq:
      - id: lower
        type: u8
      - id: upper
        type: u8
    -webide-representation: '{type}: {upper}-{lower}'
    -webide-parse-mode: lazy
  vec3f:
    seq:
      - id: x
        type: f4
      - id: y
        type: f4
      - id: z
        type: f4
    -webide-representation: '{type}: x={x} y={y} z={z}'
    -webide-parse-mode: lazy
  pointer:
    seq:
      - id: address
        type: u8
    -webide-representation: '{type}: {address}'
    -webide-parse-mode: lazy
enums:
  wow_type:
    0: object
    1: item
    2: container
    3: azerite_empowered_item
    4: azerite_item
    5: unit
    6: player
    7: active_player
    8: gameobject
    9: dynamicobject
    10: corpse
    11: areatrigger
    12: sceneobject
    13: loot
    14: invalid
  wow_type_flags:
    0x00001: object
    0x00002: item
    0x00004: container
    0x00008: azerite_empowered_item
    0x00010: azerite_item
    0x00020: unit
    0x00040: player
    0x00080: active_player
    0x00100: gameobject
    0x00200: dynamic
    0x00400: corpse
    0x00800: areatrigger
    0x01000: scene
    0x02000: conversation
    0x04000: aigroup
    0x08000: scenario
    0x10000: loot
  resource_type:
    0: mana
    1: rage
    2: focus
    4: combo_points
    5: runes
    6: runic_power
    7: soul_shards
    8: astral_power
    9: holy_power
    10: alternate
    11: maelstrom
    12: chi
    13: insanity
    16: arcane_charges
    17: fury
    18: pain
  wow_race:
    1: human
    2: orc
    3: dwarf
    4: nightelf
    5: undead
    6: tauren
    7: gnome
    8: troll
    9: goblin
    10: bloodelf
    11: draenei
    22: worgen
    23: human_worgen
    24: pandaren_neutral
    25: pandaren_alliance
    26: pandaren_horde
    27: nightborne
    28: highmountain_tauren
    29: void_elf
    30: lightforged_draenei
    31: zandalari_troll
    32: kultiran
    34: dark_iron_dwarf
    35: vulpera
    36: maghar_orc
    37: mechagnome
  wow_class:
    1: warrior
    2: paladin
    3: hunter
    4: rogue
    5: priest
    6: deathknight
    7: shaman
    8: mage
    9: warlock
    10: monk
    11: druid
    12: demonhunter
  wow_sex:
    0: male
    1: female
