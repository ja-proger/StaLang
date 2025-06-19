# StaLang Documentation

## 0. Informal introduction

Stal was created for educational purposes of it author 😂.
Nevertheless, it can be used in the real life. Though it's in active development.


## 1. Basic programming paradigms 

// Todo

## 2. Types

In Stal there are 4 basic types:
- Bool — `bool`
- Number — `num` (any number: integer, float, binary and hex)
- String — `str` (also char)

Of course, you can use subtypes:
For number:

- int
- float
- bin
- hex

For string

- char

Usage is simple:
```rust
data x: num = 5;
data y: int = 5;
data z: float = 5.0;
data u: bin = b'5;
data h: char = "5";
data k: str = "5 is integer";
data s: bool = true;
```

Note: Don't mix up types and type structures

## 3. Type structures & Storages

### Structures
In Stal there are 3 type structures
- Type definition — `type`. Which is both enum, and type definition.
Type in Stal like `struct` in Swift or Rust, `typedef` in C, etc.
- List definition. It is an array of values of some type

### Storages
In Stal there are 2 types of storages:
1. Common
- Data declaration 
- Const declaration 
- Func declaration
2. Specific
- Case declaration
- Event declaration

About Case and Event read in the section Forecasts

#### Data

Data is the same as `var` in Swift or `let mut` in Rust.

Example:
```rust
data x: int = 5;
x = 10; // no errors
```

#### Const

Const is just a data which will not be changed while program compilation.
For example:
```rust
const PI: float = 3.14;
PI = 5.6; 
/*
ERROR [L-45]
------------
(1) FILE:
(2) LOCATION: 2-1:9
------------
(3) REASON: 
Redeclaration of the const statement.
------------
(4) DOCUMENTATION:
Read point 2.1.
*/
```
Const have to be explicitly determined.

#### Func

Func is definition for mathematical functions.
They are separated to make simplier diverse

## 5. Expressions & Keywords

### Maths & Statistics & Economics

All expressions and keywords are designed for
use in statistics, data analysis and economics.

- All available math operations with numbers
```rust
data x = 5+6; // 11;
x = 5-6; // -1
x = 5*6;
x = 5/6;
x = 5**6;
x = 5%6;
x = %5; // 0.05
x = 5++ // 6
x = 5-- // 4
x = -5; 
x = 5 << 6;
x = 5 >> 6;

```

- All available operations with lists of numbers:

```rust
list x: int = [5, 6, 7, 3];
data r = x.max; // 7
r = x.min; // 3
r = x.median; // 5.5
r = x.average; // 10.5
r = x.cagr; // 
r = x.distr; 
r = x.count; // 4
r = x.sum; // 21
```

### Logic

#### Common logic
```rust
data b: bool = true;

```

#### Fuzzy logic

### String

```rust
data s: str = "hi";
s = "hi" + "i";
s = "hi" - "i";
s = "hi"*2;
```

## 6. Control flow

### if else

### for 

### while

## Functions

There are 3 types of functions in Stal:
- Basic
- Labeled
- Forecast (read in the section Forecasts)

### Basic functions

```rust
fn index(x: int) -> int {
    return x*5;
}
data x = index(x: 5);
```

### Labeled functions

Ideal for simple functions.

```rust
index (x: int) |> x * 5;
data x = index 5;
```


## 7. Forecasts


### Case

Case is very DSL storage declaration.
It has a complex idea befind it.
Case, Forecast and Event concepts are like ownership in Rust. If you don't understand them, the whole language is a garbage for you.
Case and Event are two types of the 
Thus, let's dive into the Case concept.

When you define some value as `case`, it means that this value can be a potential return of some forecast function (read more in Functions).
You may think that it is likewise switch statement or enum type, but it's not.
For example, you have a code in Swift.
```swift
// Swift code
enum Bulb {
    case on
    case off
}
var bulb: Bulb = .on
switch bulb {
    case .on:
        print("on")
        break
    case .off:
        print("off")
        break
}
```
Here we compile a simple program. We define enum type Bulb.
Then we initialize a variable `bulb` and assign to it one of two available cases in the Bulb type.
Then we switch the variable. If the case is `on`, we print on.
If off, we print off.

The same logic in Stal will work like this:
```rust
type Bulb {
    ON, OFF
}
data bulb: Bulb = ::ON;
if (bulb == ::ON) {
    out "on";
} else if (bulb == ::OFF){
    out "off";
}
```

When we talk about case we have to understand that we also talk about case forecast.
Case forecast is a forecast that works with cass storages.
Now, the Stal Case logic:
```rust
case x: int = 5;

forecast f(x: int) -> @@case {
    list d: int = [5, 7, 10];
    10;
}
data o = @f(x);
out o; // 0
```
Note: @@ operator used for creating from build in tokens variables, types, values. Read more in Expressions section.

Why the result is 0? What the hell is going here?!
The forecast function returns which very similar to probablity.
Compiler is thinking like: "Hey man, I suppose that 5 in this forecast will not ever return".
Return value in forecast is a probablity of the argument depending on result from forecast.
Another example:
```rust
case x: int = 5;

forecast f(x: int) {
    list d: int = [5, 7, 10];
    d;
}
data o = @f(x);
out o; // 33%
```
So, think about Case likewise probability.

### Event

### Forecast


## 8. Classes

### Create a class

### Inheritance

### Incapsulation

## 9. Protocols & Snippets

### Protocol

### Snippet

## 10. Libraries & Imports

### Difference
```rust
use ml;
import "example.stal";


```





