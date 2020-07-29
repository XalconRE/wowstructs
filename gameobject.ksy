meta:
  id: wow_game_object
  endian: le
seq:
  - id: obj_data
    type: c_g_object
    size: 0xA8
  - id: gobj_data
    type: c_g_gameobject
    size: (0x200 - obj_data.size)
    
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
  c_g_gameobject:
    instances:
      position:
        pos: (0xC8 - 0xA8)
        type: vec3f
      display_id:
        pos: (0x1A8 - 0xA8)
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
