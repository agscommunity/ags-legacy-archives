# Tween Module for AGS 2.62

This is a customized version of the [AGS Tween module](https://github.com/edmundito/ags-tween) that works with AGS 2.62!

## Installation

AGS 2.62 does not support the concept of modules, but instead you can copy and paste the snippets below into the global script.

1. Copy and paste the contents of [header.ash](./header.ash) at the top of the script header.

2. Copy and paste the contents of [script.asc](./script.asc) at the top of the global script.
  
3. Update `game_start`, `on_event`, and `repeatedly_execute_always` in the global script with the Tween event handlers:

```agsscript
function game_start() {
  // ...
  tween_game_start();
}

function repeatedly_execute_always() {  
  // ...
  tween_repeatedly_execute_always();
}

function on_event(int event, int data) {
  // ...
  tween_on_event(event, data);
}
```

## Usage

(If you're familiar with the Tween module, this one works a little different.)

The general pattern of the module calls is the following. Here's an example for a character tween position

```agsscript
TweenPosition(
  EGO, // Character index or name
  1000, // Duration in milliseconds
  320, // target X
  240, // target Y
  eEaseOutTween, // Easing type
  eBlockTween, // Style
)

```

In this case, the character will move from its current position at the start of the tween (`character[EGO].x/y`). Depending on what's supported, you may sometimes need to pass the initial value. For example, for GUI tween position, you need to pass the start x and y as well.

See [header.ash](./header.ash) to see what functions are available and what you need to provide.
