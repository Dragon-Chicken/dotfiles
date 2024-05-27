# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

mod = "mod4"
terminal = guess_terminal()

# arrow keys to use
up = "up"
down = "down"
left = "left"
right = "right"

# shuffle/gorw keys
shuffle = "control"
grow = "shift"

"""colours=[
        ["#282828", "#282828"],  # 0 black
        ["#d65d0e", "#d65d0e"],  # 1 orange
        ["#98971a", "#98971a"],  # 2 green
        ["#d79921", "#d79921"],  # 3 yellow
        ["#458588", "#458588"],  # 4 blue
        ["#b16286", "#b16286"],  # 5 purple
        ["#689d6a", "#689d6a"],  # 6 aqua
        ["#a89984", "#a89984"],  # 7 gray
        ["#1d2021", "#1d2021"],  # 8 blacker black?
        ]"""

colours = [
        ["",""],
        ["",""],
        ["",""],
        ["",""],
        ["",""],
        ["",""],
        ["",""],
        ["",""],
        ["",""],
        ["",""],
        ["",""],
        ]

with open('/home/ethan/.config/colours', 'r') as file:
    colours[0][0] = "#" + file.readline().strip()
    colours[0][1] = colours[0][0]
    colours[1][0] = "#" + file.readline().strip()
    colours[1][1] = colours[1][0]
    colours[2][0] = "#" + file.readline().strip()
    colours[2][1] = colours[2][0]
    colours[3][0] = "#" + file.readline().strip()
    colours[3][1] = colours[3][0]
    colours[4][0] = "#" + file.readline().strip()
    colours[4][1] = colours[4][0]
    colours[5][0] = "#" + file.readline().strip()
    colours[5][1] = colours[5][0]
    colours[6][0] = "#" + file.readline().strip()
    colours[6][1] = colours[6][0]
    colours[7][0] = "#" + file.readline().strip()
    colours[7][1] = colours[7][0]
    colours[8][0] = "#" + file.readline().strip()
    colours[8][1] = colours[8][0]
    colours[9][0] = "#" + file.readline().strip()
    colours[9][1] = colours[9][0]
    colours[10][0] = "#" + file.readline().strip()
    colours[10][1] = colours[10][0]
    """for line in file:
        colours += ["#" + line, "#" + line]"""

roficonfig = ""
backupconfig = ""

with open('/home/ethan/.config/rofi/config.rasi', 'r') as file:
    for line in file:
        backupconfig += line
        vars = ['bg:', 'bg-alt:', 'bg-selected:', 'fg:', 'fg-alt:']
        vals = {'bg:':colours[0][0], 'bg-alt:':colours[9][0],
                'bg-selected:':colours[9][0], 'fg:':colours[3][0], 'fg-alt:':colours[7][0]}
        didfind = False
        for var in vars:
            if var in line:
                roficonfig += f"\t{var} {vals[var]};\n"
                didfind = True
        
        if didfind == False:
            roficonfig += f"{line}"

with open('/home/ethan/.config/rofi/backupconfig', 'w') as file:
    file.write(backupconfig)

with open('/home/ethan/.config/rofi/config.rasi', 'w') as file:
    file.write(roficonfig)

keys = [
    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html
    # Switch between windows
    Key([mod], left, lazy.layout.left(), desc="Move focus to left"),
    Key([mod], right, lazy.layout.right(), desc="Move focus to right"),
    Key([mod], down, lazy.layout.down(), desc="Move focus down"),
    Key([mod], up, lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, shuffle], left, lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, shuffle], right, lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, shuffle], down, lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, shuffle], up, lazy.layout.shuffle_up(), desc="Move window up"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, grow], left, lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, grow], right, lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, grow], down, lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, grow], up, lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    # Rofi
    Key([mod], "a", lazy.spawn("rofi -show drun"), desc="Spawn Rofi"),
    Key([mod], "w", lazy.spawn("bash ~/.config/nitrogen/wallpaper"), desc="wallpaper sellect"),
    # Sound
    Key([], "XF86AudioMute", lazy.spawn("amixer set Master toggle")),
    Key([], "XF86AudioLowerVolume", lazy.spawn("amixer set Master 1%- unmute")),
    Key([], "XF86AudioRaiseVolume", lazy.spawn("amixer set Master 1%+ unmute")),
    # Apps
    Key([mod], "t", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "f", lazy.spawn("firefox"), desc="Launch firefox"),
    #Key([mod], "d", lazy.spawn("discord"), desc="Launch discord"),
    Key([mod], "e", lazy.spawn("lf"), desc="Launch file manager"),
    Key([], "print", lazy.spawn("scrot -o -F 'screenshot.jpg'")),
    Key(["control"], "print", lazy.spawn("scrot -s -o -F 'screenshot.jpg'")),

]

#groups = []
#Group(i) for i in "12345"
#group_names = ["1", "2", "3", "4", "5"]
#group_labels = ["Dev", "Web", "Music", "Work", "Other"]
#for i in range(len(group_names)):
#    groups.append(Group(
#        name=group_names[i],
#        label=group_labels[i],
#        ))
groups = [
    Group(
        name="1",
        label="Dev",
    ),
    Group(
        name="2",
        label="Web",
    ),
    Group(
        name="3",
        label="Music",
        matches=[Match(wm_class="spotify")],
    ),
    Group(
        name="4",
        label="Work",
    ),
    Group(
        name="5",
        label="Other",
        matches=[Match(wm_class="easyeffects")],
    ),
]

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + letter of group = move focused window to group
            # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            #     desc="move focused window to group {}".format(i.name)),
        ]
    )

layouts = [
    # layout.Columns(border_focus_stack=["#000000", "#000000"], border_width=4),
    layout.Columns(border_focus=colours[10][0], border_normal=colours[0][0], border_width=2, margin=2, margin_on_single=0),
    layout.Max(),
    layout.Floating(border_focus=colours[10][0], border_normal=colours[0][0], border_width=2),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2, border_focus="#fbf1c7", border_normal="#282828", border_width=4),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font="JetBrainsMono Nerd Font",
    fontsize=14,
    padding=3,
    foreground=colours[3],
)
extension_defaults = widget_defaults.copy()


screens = [
    Screen(
        bottom=bar.Bar(
            [
                widget.CurrentLayout(),
                widget.GroupBox(
                    active=colours[3],
                    inactive=colours[7],
                    rounded=False,
                    highlight_color=colours[0],
                    highlight_method="line",
                    this_current_screen_border=colours[3],
                    ),
                widget.Spacer(),
                widget.Clock(
                    format="%b %a %d %H:%M",
                    ),
                widget.Spacer(),
                widget.StatusNotifier(),
                widget.Systray(),
                widget.Volume(),
                widget.TextBox(
                    " ⏻  Power ",
                    mouse_callbacks={
                        'Button1':lazy.spawn("bash /home/ethan/.config/rofi/powermenu/powermenu")}
                    ),
            ],
            24,
            background=colours[8],
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
            ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Click([mod],"Button1", lazy.window.move_to_top()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.toggle_floating()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = True 
cursor_warp = True
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(title="wallpaper"),
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "Qtile"
