return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.0.3",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 31,
  height = 10,
  tilewidth = 64,
  tileheight = 64,
  nextobjectid = 6,
  properties = {},
  tilesets = {
    {
      name = "topdownshooter",
      firstgid = 1,
      filename = "topdown-shooter.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 10,
      margin = 0,
      image = "spritesheet_tiles.png",
      imagewidth = 1988,
      imageheight = 1470,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {},
      terrains = {},
      tilecount = 540,
      tiles = {}
    }
  },
  layers = {
    {
      type = "imagelayer",
      name = "ship_layer",
      visible = true,
      opacity = 1,
      offsetx = -1,
      offsety = 6,
      image = "ship_overlay.png",
      properties = {}
    },
    {
      type = "tilelayer",
      name = "tiles",
      x = 0,
      y = 0,
      width = 31,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 33,
      offsety = -32,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 142, 221, 194, 194, 116, 194, 194, 194, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 167, 169, 169, 167, 169, 169, 169, 190, 222, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 167, 169, 169, 167, 169, 169, 169, 169, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 167, 169, 169, 167, 169, 169, 169, 163, 249, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 142, 248, 195, 195, 143, 195, 195, 195, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      name = "zones",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "Storage",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 93,
          width = 270,
          height = 317,
          rotation = 0,
          visible = true,
          properties = {
            ["zone"] = "storage"
          }
        },
        {
          id = 4,
          name = "Living",
          type = "",
          shape = "rectangle",
          x = 431,
          y = 99,
          width = 298,
          height = 312,
          rotation = 0,
          visible = true,
          properties = {
            ["zone"] = "living"
          }
        },
        {
          id = 5,
          name = "Deck",
          type = "",
          shape = "rectangle",
          x = 734,
          y = 169,
          width = 124,
          height = 178,
          rotation = 0,
          visible = true,
          properties = {
            ["zone"] = "deck"
          }
        }
      }
    }
  }
}
