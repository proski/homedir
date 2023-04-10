local wezterm = require 'wezterm'
local act = wezterm.action
return {
  default_prog = { 'powershell.exe' },

  bypass_mouse_reporting_modifiers = 'SHIFT',
  hide_mouse_cursor_when_typing = false,

  canonicalize_pasted_newlines = "CarriageReturn",

  font = wezterm.font 'JetBrains Mono',
  font_size = 13,

  mouse_bindings = {
    { event = { Down = { streak = 1, button = 'Left' } }, mods = 'SHIFT', action = act.SelectTextAtMouseCursor('Cell'), },
    { event = { Down = { streak = 1, button = 'Middle' } }, mods = 'SHIFT', action = act.PasteFrom('PrimarySelection'), },
    { event = { Down = { streak = 2, button = 'Left' } }, mods = 'SHIFT', action = act.SelectTextAtMouseCursor('Word'), },
    { event = { Down = { streak = 3, button = 'Left' } }, mods = 'SHIFT', action = act.SelectTextAtMouseCursor('Line'), },
    { event = { Drag = { streak = 1, button = 'Left' } }, mods = 'SHIFT', action = act.ExtendSelectionToMouseCursor('Cell'), },
    { event = { Drag = { streak = 2, button = 'Left' } }, mods = 'SHIFT', action = act.ExtendSelectionToMouseCursor('Word'), },
    { event = { Drag = { streak = 3, button = 'Left' } }, mods = 'SHIFT', action = act.ExtendSelectionToMouseCursor('Line'), },
    { event = { Up = { streak = 2, button = 'Left' } }, mods = 'SHIFT', action = act.CompleteSelection('ClipboardAndPrimarySelection'), },
    { event = { Up = { streak = 3, button = 'Left' } }, mods = 'SHIFT', action = act.CompleteSelection('ClipboardAndPrimarySelection'), },
  },

  colors = {
    -- The default text color
    foreground = '#d0cfcc',
    -- The default background color
    background = 'black',

    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = '#52ad70',
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = 'black',
    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- or the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    cursor_border = '#52ad70',

    -- the foreground color of selected text
    selection_fg = 'black',
    -- the background color of selected text
    selection_bg = '#fffacd',

    -- The color of the scrollbar "thumb"; the portion that represents the current viewport
    scrollbar_thumb = '#222222',

    -- The color of the split lines between panes
    split = '#444444',

    ansi = {
      '#171421',
      '#c01c28',
      '#26a269',
      '#a2734c',
      '#12488b',
      '#a347ba',
      '#2aa1b3',
      '#d0cfcc',
    },
    brights = {
      '#5e5c64',
      '#f66151',
      '#33d17a',
      '#e9ad0c',
      '#2a7bde',
      '#c061cb',
      '#33c7de',
      '#ffffff',
    },

    -- Colors for copy_mode and quick_select
    -- available since: 20220807-113146-c2fee766
    -- In copy_mode, the color of the active text is:
    -- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
    -- 2. selection_* otherwise
    copy_mode_active_highlight_bg = { Color = '#000000' },
    -- use `AnsiColor` to specify one of the ansi color palette values
    -- (index 0-15) using one of the names "Black", "Maroon", "Green",
    --  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
    -- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
    copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
    copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
    copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },

    quick_select_label_bg = { Color = 'peru' },
    quick_select_label_fg = { Color = '#ffffff' },
    quick_select_match_bg = { AnsiColor = 'Navy' },
    quick_select_match_fg = { Color = '#ffffff' },
  },
}
