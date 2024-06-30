return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
      light_style = "day", -- The theme is used when the background is set to light
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        -- comments = { italic = true },
        -- functions = {},
        -- variables = {}
        -- Background styles. Can be "dark", "transparent" or "normal"
        -- sidebars = "dark", -- style for sidebars, see below
        -- floats = "dark", -- style for floating windows
      },
      sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
      day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
      hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
      dim_inactive = false, -- dims inactive windows
      lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

      --- You can override specific color groups to use other groups or a hex color
      --- function will be called with a ColorScheme table
      ---@param colors ColorScheme
      on_colors = function(colors) end,

      --- You can override specific highlights to use other groups or a hex color
      --- function will be called with a Highlights and ColorScheme table

      ---@param highlights Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors)
        highlights["LineNrAbove"] = {
          fg = "#33a3dc",
        }
        highlights["@constant.python"] = {
          fg = "#d93a49",
        }
        highlights["LineNrBelow"] = {
          fg = "#fcf16e",
        }
        highlights.CursorLineNr = {
          bg = "#ef5b9c",
          fg = "#fffef9",
        }
        highlights["@lsp.type.variable"] = {
          fg = "#afdfe4",
        }
        highlights["@variable"] = {
          fg = "#afdfe4",
        }
        highlights["@variable.parameter.python"] = {
          fg = "#afdfe4",
        }
        highlights["@variable.parameter.rust"] = {
          fg = "#ffe600",
        }
        highlights["PreProc"] = {
          fg = "#32cd32",
        }

        highlights["@function.call"] = {
          fg = "#ff8c00",
        }
        highlights["@function.macro"] = {
          fg = "#ff8c00",
        }
        highlights["@function.macro.rust"] = {
          fg = "#4169e1",
        }
        highlights["@keyword.conditional.python"] = {
          fg = "#ef4136",
        }
        highlights["@keyword.conditional"] = {
          fg = "#d93a49",
        }
        highlights["@lsp.type.function"] = {
          fg = "#ffa07a",
        }
        highlights["@lsp.type.lifetime.rust"] = {
          fg = "#ff1493",
        }
        highlights["@lsp.type.macro"] = {
          fg = "#ff1493",
        }
        highlights.Comment = {
          fg = "#007947",
        }
        highlights["@lsp.type.comment"] = {
          fg = "#007947",
        }
        highlights["@lsp.type.enum"] = {
          fg = "#1e90ff",
        }
        highlights["@lsp.type.enumMember"] = {
          fg = "#87cefa",
        }
        highlights["@string.documentation"] = {
          fg = "#1d953f",
        }
        highlights["@define"] = {
          fg = "#00ae9d",
        }
        highlights["@include"] = {
          fg = "#00ae9d",
        }
        highlights["@exception"] = {
          fg = "#ff69b4",
        }
        highlights["@boolean"] = {
          fg = "#ff69b4",
        }
        highlights["@namespace"] = {
          fg = "#ff00ff",
        }
        highlights["@lsp.type.namespace"] = {
          fg = "#ff00ff",
        }
        highlights["@lsp.type.namespace.rust"] = {
          fg = "#ff0000",
        }
        highlights["@lsp.type.class"] = {
          fg = "#f26522",
        }
        highlights["@lsp.type.operator"] = {
          fg = "#f8aba6",
        }
        highlights["@lsp.type.operator.cpp"] = {
          fg = "#ffd700",
        }
        highlights["@operator.cpp"] = {
          fg = "#ff7f50",
        }
        highlights["@type.builtin"] = {
          fg = "#33a3dc",
        }
        highlights["@lsp.type.property"] = {
          fg = "#00ffff",
        }
        highlights["@method.call"] = {
          fg = "#da70d6",
        }
        highlights["@lsp.type.method"] = {
          fg = "#da70d6",
        }
        highlights["@lsp.type.struct.rust"] = {
          fg = "#f26522",
        }
        highlights["@lsp.type.interface.rust"] = {
          fg = "#00ff7f",
        }
        highlights["@storageclass"] = {
          fg = "#4169e1",
        }
        highlights["@lsp.type.namespace.go"] = {
          fg = "#00ae9d",
        }
        highlights["@parameter.builtin"] = {
          fg = "#ffe600",
        }
        highlights["@lsp.type.decorator.rust"] = {
          fg = "#008b8b",
        }
        highlights["@lsp.type.typeparameter"] = {
          fg = "#ef4136",
        }
        highlights["@keyword.repeat"] = {
          fg = "#d93a49",
        }
        highlights["@keyword.exception.python"] = {
          fg = "#33a3dc",
        }
        highlights["@lsp.type.parameter"] = {
          fg = "#ffe600",
        }
        highlights["@keyword.import"] = {
          fg = "#32cd32",
        }
        highlights["@parameter"] = {
          fg = "#ffe600",
        }
        highlights["@conditional"] = {
          fg = "#ff1493",
        }
        highlights["@repeat"] = {
          fg = "#ef5b9c",
        }
        highlights["@lsp.typemod.function.defaultLibrary"] = {
          fg = "#fef4c4",
        }
        highlights["@Constant"] = {
          fg = "#f2eada",
        }
        highlights["@lsp.type.macro.cuda"] = {
          fg = "#ff1493",
        }
        highlights["@Type"] = {
          fg = "#f4a460",
        }
        highlights["@lsp.type.type"] = {
          fg = "#90ee90",
        }

        highlights["@keyword"] = {
          fg = "#FF99CC",
        }
        highlights["@keyword.return.cpp"] = {
          fg = "#1e90ff",
        }
        highlights["Special"] = {
          fg = "#00ced1",
        }
        highlights["@type.qualifier"] = {
          fg = "#00ced1",
        }
        highlights["@keyword.return.python"] = {
          fg = "#FFB6C1",
        }
        highlights["@keyword.function.python"] = {
          fg = "#009ad6",
        }
        -- highlights["@keyword.function.rust"] = {
        --   fg = "#ff00ff",
        -- }
        highlights["@float"] = {
          fg = "#fafad2",
        }
        highlights["@function.python"] = {
          fg = "#faa755",
        }
        highlights["@type.python"] = {
          fg = "#f58220",
        }
        highlights["@attribute.cpp"] = {
          fg = "#87cefa",
        }
        highlights["@attribute.python"] = {
          fg = "#00c78c",
        }

        highlights["@method.python"] = {
          fg = "#ffa07a",
        }
        highlights["rainbowcol1"] = {
          fg = "#9acd39",
        }
        highlights["rainbowcol7"] = {
          fg = "#33a3dc",
        }
        highlights["@keyword.operator"] = {
          fg = "#48d1cc",
        }
        highlights.Keyword = {
          fg = "#FF99CC",

          style = {
            italic = false,
          },
        }
        highlights["@constructor"] = {
          fg = "#FF6666",

          style = {
            italic = false,
          },
        }
        highlights.WinSeparator = {
          bold = true,
          fg = "#ffd400",
        }

        highlights.IlluminatedWord = {

          fg = "#ffd700",
          bg = "#fcf16e",
        }
        --
        highlights.IlluminatedWordText = {
          fg = "#ffd700",
          bg = "#fcf16e",
        }
        highlights.IlluminatedWordRead = {
          fg = "#ffd700",
          bg = "#fcf16e",
        }
        highlights.IlluminatedWordWrite = {
          fg = "#ffd700",
          bg = "#fcf16e",
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = { "tokyonight" },
    },
  },
}
