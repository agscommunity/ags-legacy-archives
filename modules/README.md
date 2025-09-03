# Legacy Modules for 2.62

This folder contains module code that can be imported into AGS 2.62 games.

AGS 2.62 does not support the concept of modules (that was introduced in 2.7), so the work need to be shared in a different way through some copy an dpasting. See [./Tween/](./Tween/README.md) as an example on how this can be done.

## 2.62 Limitations

In general, 2.62 **does not support** the following features:

* Object-oriented API. Instead, most function start with the entity (character, object, etc) ID. For example, `cEgo.Walk(x, y)` is `MoveCharacters(EGO, x, y)`. The module will need to adapt to this style due to limitations.
* `struct` declarations (they are supported but...) with member restrictions (`protected`, `writeprotected`), `attributes`. You can only declare a struct with public variables.
* `float` and `bool`. Boolean can be simulated (see more below.
* Pointers!
* Dynamic arrays (regular arrays can be used)
* Optional arguments in functions. All arguments must be declared.
* `string` instead of `String`
* The old audio system
* Preprocessors like `#region/endregion`, `#ifdef`, `#ifver`, `#endif`. However, `#define` is supported.
* `enums`, but they can be worked around.

## Workarounds

## Boolean

If your module uses `bool` but you don't want to change it, you can declare this at the top of the script header or global script:

```agsscript
#define bool int
#define true 1
#define false 0
```

## Enumerations

While `enum` is not supported, you can re-define your existing enums with `#define`:

```agsscript
// Before:
enum BlockingStyle {
  eBlock,
  eNoBlock
}

import function f(BlockingStyle style);


// After:
#define BlockingStyle int
#define eBlock 0
#define eNoBlock 1
```

## Structs

Declaring `structs` is supported in AGS 2.62  although it is not documented officially.

The `struct` features are limited, and only variables are supported. The best way to take advantage of them is by pairing them with array and functions that have an index. This is similar to how the rest of the AGS 2.62 API is done:

```agsscript
#define MAX_POINTS 10

struct Point {
  int x,
  int y
};

Point _points[MAX_POINTS];

function SetPoint(int index, int x, int y) {
  _points[index].x = x;
  _points[index].y = y;
}

int GetPointX(int index) {
  return _point[index];
}

int GetPointY(int index){
  return _point[index];
}

```

## Floating point

`float` is not available in AGS 2.62. The best way to work around it is to multiply and then divide by some amount to simulate decimal places as tenths and hundreds, or to work in the hundreds instead:

```agsscript
// result = 0 to 100 instead of 0.0, 1.0;
int percentage = amount * 1000 / max;
```

You can also divide by a large amount (100 or 1000 depending on decimal places). For example, the Lerp function in the Tween module returns the value between from and to based on the amount of time that has passed (from 0 to 1.0). In the AGS 2.62 version, result is the same but the amount is increased from 0 to 100.

```agsscript
// Before:
int Lerp(float from, float to, float t) {
  return FloatToInt(from + (to - from) * t, eRoundNearest);
}


// After:
int Lerp(int from, int to, int amount) {
  int difference = to - from;
  return from + ((difference * amount) / 100);
}
```
