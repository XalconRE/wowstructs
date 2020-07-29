meta:
  id: wow_unit
  endian: le
seq:
  - id: obj_data
    type: c_g_object
    size: 0xA8
  - id: gobj_data
    type: c_g_gameobject
    size: (0x280 - obj_data.size)
    
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
    seq:
      - id: unknown_a8      # 0xA8
        type: u8
      - id: unknown_b0      # 0xB0
        type: u8
      - id: unknown_b8      # 0xB8
        type: u8
      - id: unknown_c0      # 0xC0
        type: u8
      - id: position        # 0xC8, 0xCC, 0xD0
        type: vec3f
      - id: unknown_d4      # 0xD4
        type: u4
        repeat: expr
        repeat-expr: 3
      - id: heapptr_e0      # 0xE0
        type: pointer
      - id: unknown_e8      # 0xE8
        type: u4
        repeat: expr
        repeat-expr: 2
      - id: heapptr_f0      # 0xF0
        type: pointer
      - id: heapptr_f8      # 0xF8
        type: pointer
      - id: heapptr_100     # 0x100
        type: pointer
      - id: heapptr_108     # 0x108
        type: pointer
      - id: number_110      # 0x110
        type: f4
      - id: number_114      # 0x114
        type: f4  
      - id: unknown_118     # 0x118
        type: f4
      - id: unknown_11c     # 0x11C
        type: f4
      - id: unknown_120     # 0x120
        type: f4
      - id: unknown_124     # 0x124
        type: f4
      - id: unknown_128     # 0x124
        type: f4
      - id: unknown_12c     # 0x12C
        type: f4
      - id: unknown_130     # 0x130
        type: f4
      - id: unknown_134     # 0x134
        type: f4
      - id: unknown_138     # 0x138
        type: f4
      - id: unknown_13c     # 0x13C
        type: f4
      - id: position2       # 0x140
        type: vec3f
      - id: unknown_14c     # 0x14C
        type: f4
      - id: unknown_150     # 0x150
        type: f4
      - id: unknown_154     # 0x154
        type: f4
      - id: unknown_158     # 0x158
        type: f4
      - id: unknown_15c     # 0x15C
        type: f4
      - id: unknown_160     # 0x160
        type: f4
      - id: unknown_164     # 0x164
        type: f4
      - id: unknown_168     # 0x168
        type: u4
      - id: unknown_16c     # 0x16C
        type: u4
      - id: unknown_170     # 0x170
        size: 4
      - id: unknown_174     # 0x174
        type: u4
      - id: unknown_178     # 0x178
        type: u4
      - id: unknown_17c     # 0x17C
        type: u4
      - id: unknown_180     # 0x180
        type: u8
      - id: unknown_188     # 0x188
        type: u8  
      - id: unknown_190     # 0x190
        type: u8
      - id: unknown_198     # 0x198
        type: u4
      - id: unknown_19c     # 0x19C
        type: u4
      - id: unknown_1a0     # 0x1A0
        type: u8
        # Display data specific sub struct?
      - id: display_id      # 0x1A8 0x0
        type: u4
      - id: unknown_1ac     # 0x1AC 0x4
        type: u4
        repeat: expr
        repeat-expr: 5
      - id: unknown_1c0     # 0x1C0 0x18
        type: u8
      - id: unknown_1c8     # 0x1C8 0x20
        type: u8
      - id: unknown_1d0     # 0x1D0 0x28
        type: u8
      - id: unknown_1d8     # 0x1D8 0x30
        type: u8
      - id: unknown_1e0     # 0x1E0 0x38
        type: u8
      - id: unknown_1e8     # 0x1E8 0x40
        type: u8
      - id: unknown_1f0     # 0x1F0 0x48
        type: u8
      - id: unknown_1f8     # 0x1F8 0x50
        type: u8
      - id: unknown_200     # 0x200 0x58
        type: u4
      - id: unknown_208     # 0x204 0x5C
        type: u8
      - id: unknown_20c     # 0x20C 0x64
        type: u4
      - id: unknown_210     # 0x210 0x68
        type: f4
      - id: unknown_214     # 0x214 0x6C
        type: u4
      - id: unknown_218     # 0x218 0x70
        type: u4
      - id: unknown_21c     # 0x21C 0x74
        size: 4
      - id: unknown_220     # 0x220 0x78
        type: u4
      - id: unknown_224     # 0x224 0x7C
        type: u4
      - id: unknown_228     # 0x228 0x80
        type: u8
      - id: unknown_230     # 0x230 0x88
        type: u8
      - id: unknown_238     # 0x238 0x90
        type: u8
      - id: heapptr_240     # 0x240 0x98; should point to [subobject + 0xB0] (or [objBase + 0x258])
        type: pointer
      - id: unknown_248     # 0x248 0xA0
        type: u8
      - id: unknown_250     # 0x250 0xA8
        type: u8
      - id: unknown_258     # 0x258 0xB0
        type: u8
      - id: unknown_260     # 0x260 0xB8
        type: u8
      - id: unknown_268     # 0x268 0xC0
        type: u8
      - id: unknown_270     # 0x270 0xC8
        type: u8
      - id: unknown_278     # 0x278 0xD0
        type: u8
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
