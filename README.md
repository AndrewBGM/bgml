# bgml

Collection of useful functions for GameMaker Studio 2

## Functions

#### array_join(array,[separator=","])

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

#### array_reverse(array)

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


## Built With

* [GameMaker Studio 2](http://www.yoyogames.com/gamemaker/studio2)

## Authors

* **Andrew Bennett** - *GML implementation* - [AndrewBGM](https://github.com/AndrewBGM)

See also the list of [contributors](https://github.com/AndrewBGM/bgml/contributors) who participated in this project

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details