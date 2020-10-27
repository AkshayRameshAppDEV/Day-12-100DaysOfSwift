# Day-12-100DaysOfSwift
Day 12 of 100 Days of Swift.

# Day 12

## Learnt the following:

## Optionals:

### 1. Handling Missing Data
  - No value = `nil`
  - Any data type can be optional and is marked with question mark `?`
  - it can either have data type as a value or `nil`
  
### Unwrapping
  - using `if let` syntax
  - if the optional has a value, does operation in if block, if `nil`, i.e fails, it goes to `else` block

### Guard let
  - Similar to `if let` but when it finds `nil` -> It needs to exit, return...
  - `guard let` variable , the variable can be used anywhere within funtion wherever accessible.
  - variable inside guard cannot be used inside body

### Force Unwrap 
  - Unwrap the optional using `!` on when you are sure if its safe and has value.

### Implicit Unwrapped optionals
  - No need to use if let guard let to unwrap
  - straight away unwrap using `!` while declaration
  - Generally a BAD practice

### Nil Coalescing
  - When reading/unwrapping optional va`lue.. you will either get value or a default value of the optional type
  - default value is written after `??

### Optional Chaining
  - For instance if you want to chain methods a.b.c and b is optional
  - We can write it as a.b?.c -> b optional and has value then c operation is done, if its nil then whole expression is nil

### Optional Try
  - When a function throws an error use `try?` or `try!` (when you know you get a value)

### Failable Initializers
  - When creating a object out of struct or class, if the initilzer fails we can return optional nil but the init method should be `init?()`

### Type casting
  - When you want to explicitly know the class use `as?` DataType to filter only that datatype
