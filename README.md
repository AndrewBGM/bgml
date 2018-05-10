# bgml

Collection of useful functions for GameMaker Studio 2

## Functions

### array_join(array,[separator=","])

Converts all elements in an array into a string separated by `separator`

##### Since
0.0.1

##### Arguments
 * `array {array}`: The array to convert.
 * `[separator=","] {string}`: The element separator.

##### Returns
`{string}`: Returns the joined string.

##### Example
```javascript
array_join(['a', 'b', 'c'], '~');
```

### array_reverse(array)

Reverses `array` so that the first element becomes the last, the second element becomes the second to last, and so on.

##### Since
0.0.1

##### Arguments
 * `array {array}`: The array to modify.

##### Example
```javascript
var _arr = [1, 2, 3];

array_reverse(_arr);

printf(_arr);
=> [ 3, 2, 1 ]
```

### draw_line_fast(sprite,x1,y1,x2,y2,color,alpha)

Draws a line using a sprite and stretching it to the correct dimensions.

##### Since
0.0.1

##### Arguments
 * `sprite {real}`: Sprite index for drawing.
 * `x1 {real}`: First X position.
 * `y1 {real}`: First Y position.
 * `x2 {real}`: Second X position.
 * `y2 {real}`: Second X position.
 * `color {real}`: Line color.
 * `alpha {real}`: Line alpha.

##### Example
```javascript
draw_line_fast(spr_1px, 0, 0, 32, 32, c_blue, 1.0);
```

### draw_rectangle_fast(sprite,x,y,width,height,color,alpha,outline)

Draws a rectangle using a sprite and stretching it to the correct dimensions.

##### Since
0.0.1

##### Arguments
 * `sprite {real}`: Sprite index for drawing.
 * `x {real}`: X position.
 * `y {real}`: Y position.
 * `width {real}`: Rectangle width.
 * `height {real}`: Rectangle height.
 * `color {real}`: Rectangle color.
 * `alpha {real}`: Rectangle alpha.
 * `outline {real}`: Whether to drawn only an outline.

##### Example
```javascript
draw_rectangle_fast(spr_1px, 0, 0, 32, 32, c_red, 1.0, false);
```

### ds_list_join(id,[separator=","])

Converts all elements in a ds_list into a string separated by `separator`

##### Since
0.0.1

##### Arguments
 * `id {real}`: The ds_list to convert.
 * `[separator=","] {string}`: The element separator.

##### Returns
`{string}`: Returns the joined string.

##### Example
```javascript
ds_list_join(['a', 'b', 'c'], '~');
```

### ds_list_reverse(id)

Reverses `id` so that the first element becomes the last, the second element becomes the second to last, and so on.

##### Since
0.0.1

##### Arguments
 * `id {real}`: The ds_list to modify.

##### Example
```javascript
var _list = ds_list_create();
ds_list_add(_arr, 1, 2, 3)

ds_list_reverse(_list);

printf(_list);
=> [ 3, 2, 1 ]
```

### printf(string, ...args)

Prints a formatted string to the console

##### Since
0.0.1

##### Arguments
 * `string {string}`: The string to print.
 * `...args {any}`: Replacement values for the formatting.

##### Example
```javascript
printf("Hello {0}", "World");
=> "Hello World!"
```

### script_execute_spread(name, args)

Executes a script by name using an array of parameters, and returns the result.

##### Since
0.0.1

##### Arguments
 * `name {string}`: The script to execute.
 * `args {array}`: Array of parameters to pass to the script.

##### Returns
`{any}`: Result of script call.

##### Example
```javascript
script_execute_spread("printf", ["Hello World!"]);
=> "Hello World!"
```

### stringf(string, ...args)

Returns a formatted string

##### Since
0.0.1

##### Arguments
 * `string {string}`: The string to format.
 * `...args {any}`: Replacement values for the formatting.

##### Returns
`{string}`: Formatted string.

##### Example
```javascript
stringf("Hello {0}", "World");
=> "Hello World!"
```

### string_reverse(string)

Reverses `string` so that the first element becomes the last, the second element becomes the second to last, and so on.

##### Since
0.0.1

##### Arguments
 * `string {string}`: The string to reverse.

##### Returns
`{string}`: Reversed string.

##### Example
```javascript
var _str = "Hello World!",
    _reversed = string_reverse(_str);

printf(_reversed);
=> "!dlroW olleH"
```

### string_split(string, separator, [limit])

Splits `string` by `separator`.

##### Since
0.0.1

##### Arguments
 * `string {string}`: The string to split.
 * `separator {string}`: The separator pattern to split by.
 * `[limit] {real}`: The length to truncate results to.

##### Returns
`{array}`: Returns the string segments.

##### Example
```javascript
var _split = string_split("a,b,c", ",", 2);

printf(_split);
=> [ "a", "b" ]
```

### string_ltrim(string, [chars=" "])

Removes leading whitespace or specified characters from `string`.

##### Since
0.0.1

##### Arguments
 * `string {string}`: The string to trim.
 * `[chars=" "] {string}`: The characters to trim.

##### Returns
`{string}`: Returns the trimmed string.

##### Example
```javascript
var _trimmed = string_ltrim("   abc   ");

printf(_trimmed);
=> "abc   "
```

### string_rtrim(string, [chars=" "])

Removes trailing whitespace or specified characters from `string`.

##### Since
0.0.1

##### Arguments
 * `string {string}`: The string to trim.
 * `[chars=" "] {string}`: The characters to trim.

##### Returns
`{string}`: Returns the trimmed string.

##### Example
```javascript
var _trimmed = string_rtrim("   abc   ");

printf(_trimmed);
=> "   abc"
```

### string_trim(string, [chars=" "])

Removes leading and trailing whitespace or specified characters from `string`.

##### Since
0.0.1

##### Arguments
 * `string {string}`: The string to trim.
 * `[chars=" "] {string}`: The characters to trim.

##### Returns
`{string}`: Returns the trimmed string.

##### Example
```javascript
var _trimmed = string_trim("   abc   ");

printf(_trimmed);
=> "abc"
```

## Built With

* [GameMaker Studio 2](http://www.yoyogames.com/gamemaker/studio2)

## Authors

* **Andrew Bennett** - *GML implementation* - [AndrewBGM](https://github.com/AndrewBGM)

See also the list of [contributors](https://github.com/AndrewBGM/bgml/contributors) who participated in this project

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details