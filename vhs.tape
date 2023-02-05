# VHS documentation
#
# Output:
#   Output <path>.gif               Create a GIF output at the given <path>
#   Output <path>.mp4               Create an MP4 output at the given <path>
#   Output <path>.webm              Create a WebM output at the given <path>
#
# Require:
#   Require <string>                Ensure a program is on the $PATH to proceed
#
# Settings:
#   Set FontSize <number>           Set the font size of the terminal
#   Set FontFamily <string>         Set the font family of the terminal
#   Set Height <number>             Set the height of the terminal
#   Set Width <number>              Set the width of the terminal
#   Set LetterSpacing <float>       Set the font letter spacing (tracking)
#   Set LineHeight <float>          Set the font line height
#   Set LoopOffset <float>%         Set the starting frame offset for the GIF loop
#   Set Theme <json|string>         Set the theme of the terminal
#   Set Padding <number>            Set the padding of the terminal
#   Set Framerate <number>          Set the framerate of the recording
#   Set PlaybackSpeed <float>       Set the playback speed of the recording
#
# Sleep:
#   Sleep <time>                    Sleep for a set amount of <time> in seconds
#
# Type:
#   Type[@<time>] "<characters>"    Type <characters> into the terminal with a
#                                   <time> delay between each character
#
# Keys:
#   Backspace[@<time>] [number]     Press the Backspace key
#   Down[@<time>] [number]          Press the Down key
#   Enter[@<time>] [number]         Press the Enter key
#   Space[@<time>] [number]         Press the Space key
#   Tab[@<time>] [number]           Press the Tab key
#   Left[@<time>] [number]          Press the Left Arrow key
#   Right[@<time>] [number]         Press the Right Arrow key
#   Up[@<time>] [number]            Press the Up Arrow key
#   Down[@<time>] [number]          Press the Down Arrow key
#   Ctrl+<key>                      Press the Control key + <key> (e.g. Ctrl+C)
#
# Display:
#   Hide                            Hide the subsequent commands from the output
#   Show                            Show the subsequent commands in the output

Output vhs.gif

Require echo
Require git
Require ls
Require mkdir

Set FontSize 20
Set Framerate 30
Set Padding 5
Set Width 1200
Set Height 600

Hide
Type "zsh" Enter
Type "y" Enter
Type "PS1='%F{240}%2~ > %F{reset}'" Enter
Type "source zsh-git-worktrees.zsh" Enter Sleep 500ms
Type "y" Enter
Type "cd /tmp" Enter
Ctrl+l

Show
Type "mkdir demo-project" Enter Sleep 2000ms
Type "cd demo-project" Enter Sleep 2000ms

Type "git clone https://github.com/ohmyzsh/ohmyzsh.git master" Enter Sleep 3000ms
Type "echo master > .default-branch" Enter Sleep 2000ms
Type "cd master" Enter Sleep 2000ms

Type "gwt" Enter Sleep 2000ms

Type "gwt new" Enter Sleep 3000ms
Type "ls -alhF ../" Enter Sleep 8000ms

Type "gwt master" Enter Sleep 3000ms
Type "ls -alhF ../" Enter Sleep 8000ms

Type "gwt another" Enter Sleep 3000ms
Type "ls -alhF ../" Enter Sleep 8000ms

Type "gwt" Enter Sleep 5000ms

Type "gwt rm new" Enter Sleep 3000ms
Type "ls -alhF ../" Enter Sleep 8000ms

Type "gwt rm another" Enter Sleep 3000ms
Type "ls -alhF ../" Enter Sleep 8000ms
