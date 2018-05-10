#define printf
/// printf(string, ...args)


var _string = argument[0];


for(var i = 1;i < argument_count;i ++) {
    var _token = "{" + string(i - 1) + "}";
    
    _string = string_replace_all(_string, _token, string(argument[i]));
}

show_debug_message(_string);

#define stringf
/// stringf(string, ...args)


var _string = argument[0];


for(var i = 1;i < argument_count;i ++) {
    var _token = "{" + string(i - 1) + "}";
    
    _string = string_replace_all(_string, _token, string(argument[i]));
}

return _string;

#define string_reverse
/// string_reverse(string)


var _string = argument[0];


var _result = "";

for(var i = string_length(_string);i > 0;i --) {
    _result += string_char_at(_string, i);
}

return _result;

#define array_reverse
/// array_reverse(array)


var _array = argument[0];


var _len  = array_length_1d(_array),
    _copy = array_create(_len, undefined);

array_copy(_copy, 0, _array, 0, _len);

for(var i = 0;i < _len;i ++) {
    var _index = _len - i - 1;
    _array[@ _index] = _copy[i];
}

#define ds_list_reverse
/// ds_list_reverse(id)


var _id = argument[0];


var _len = ds_list_size(_id);

for(var i = _len - 1;i >= 0;i --) {
    ds_list_add(_id, _id[| i]);
}

repeat(_len) {
    ds_list_delete(_id, 0);
}

#define string_split
/// string_split(string, separator, [limit])


var _string    = argument[0],
    _separator = argument[1],
    _limit     = (argument_count > 2 ? argument[2] : undefined);


_string = _string + _separator;

var _skip   = string_length(_separator),
    _count  = string_count(_separator, _string),
    _size   = (_limit == undefined ? _count : min(_count, _limit)),
    _result = array_create(_size, undefined);

for(var i = 0;i < _size;i ++) {
    var _pos = string_pos(_separator, _string) - 1;

    _result[i] = string_copy(_string, 1, _pos);
    _string = string_delete(_string, 1, _pos + _skip);
}

return _result;

#define string_trim
/// string_trim(string, [chars=' '])

var _string = argument[0],
    _chars  = (argument_count > 1) ? argument[1] : " ";


var _len   = string_length(_string),
    _start = 1,
    _end   = _len;


while(_start <= _len && string_pos(string_char_at(_string, _start), _chars)) {
    _start ++;
}

while(_end > _start && string_pos(string_char_at(_string, _end), _chars)) {
    _end --;
}

return string_copy(_string, _start, _end - _start + 1);

#define string_ltrim
/// string_ltrim(string, [chars=' '])

var _string = argument[0],
    _chars  = (argument_count > 1) ? argument[1] : " ";


var _len   = string_length(_string),
    _start = 1,
    _end   = _len;


while(_start <= _len && string_pos(string_char_at(_string, _start), _chars)) {
    _start ++;
}

return string_copy(_string, _start, _end - _start + 1);

#define string_rtrim
/// string_rtrim(string, [chars=' '])

var _string = argument[0],
    _chars  = (argument_count > 1) ? argument[1] : " ";


var _len   = string_length(_string),
    _start = 1,
    _end   = _len;


while(_end > 0 && string_pos(string_char_at(_string, _end), _chars)) {
    _end --;
}

return string_copy(_string, _start, _end - _start + 1);

#define array_join
/// array_join(array, [separator=','])


var _array     = argument[0],
    _sepatator = (argument_count > 1) ? argument[1] : ",";


var _result = "";

for(var i = 0, j = array_length_1d(_array);i < j;i ++) {
    _result += string(_array[i]);
    
    if (i < j - 1) {
        _result += _sepatator;
    }
}

return _result;

#define ds_list_join
/// ds_list_join(id, [separator=','])


var _id        = argument[0],
    _sepatator = (argument_count > 1) ? argument[1] : ",";


var _result = "";

for(var i = 0, j = ds_list_size(_id);i < j;i ++) {
    _result += string(_id[| i]);
    
    if (i < j - 1) {
        _result += _sepatator;
    }
}

return _result;

#define draw_rectangle_fast
/// draw_rectangle_fast(sprite, x, y, width, height, color, alpha, outline)

var _sprite  = argument[0],
    _x       = argument[1],
    _y       = argument[2],
    _width   = argument[3],
    _height  = argument[4],
    _color   = argument[5],
    _alpha   = argument[6],
    _outline = argument[7];


if (_outline) {
    draw_sprite_ext(_sprite, 0, _x, _y, _width - 1, 1, 0, _color, _alpha);
    draw_sprite_ext(_sprite, 0, _x + _width - 1, _y, 1, _height - 1, 0, _color, _alpha);
    draw_sprite_ext(_sprite, 0, _x + 1, _y + _height - 1, _width - 1, 1, 0, _color, _alpha);
    draw_sprite_ext(_sprite, 0, _x, _y + 1, 1, _height - 1, 0, _color, _alpha);
    return;
}

draw_sprite_ext(_sprite, 0, _x, _y, _width, _height, 0, _color, _alpha);

#define draw_line_fast
/// draw_line_fast(sprite, x1, y1, x2, y2, color, alpha)

var _sprite = argument[0],
    _x1     = argument[1],
    _y1     = argument[2],
    _x2     = argument[3],
    _y2     = argument[4],
    _color  = argument[5],
    _alpha  = argument[6];


var _len = point_distance(_x1, _y1, _x2, _y2),
    _dir = point_direction(_x1, _y1, _x2, _y2);

draw_sprite_ext(_sprite, 0, _x1, _y1, _len, 1, _dir, _color, _alpha);


#define draw_text_outline
/// draw_text_outline(x, y, text, bgcolor, olcolor)


var _x       = argument[0],
    _y       = argument[1],
    _text    = argument[2],
    _bgcolor = argument[3],
    _olcolor = argument[4];


var _ocol = draw_get_color();

draw_set_color(_bgcolor);

for(var i = 0;i < 8;i ++) {
    draw_text(_x + dcos(i * 45), _y - dsin(i * 45), _text);
}

draw_set_color(_olcolor);
draw_text(_x, _y, _text);

draw_set_color(_ocol);

#define draw_text_styled
/// draw_text_styled(x, y, text)


var _x    = argument[0],
    _y    = argument[1],
    _text = argument[2];


_text = _text + "$";

var _len   = string_length(_text),
    _pos   = 1,
    _dx    = 0,
    _dy    = 0,
    _chunk = "";

while(_pos <= _len) {
    var _char = string_char_at(_text, _pos++);
    
    if (_char == "$") {
        if (_chunk != "") {
            var _lines = string_split(_chunk, "\n");

            for(var i = 0, j = array_length_1d(_lines);i < j;i ++) {
                var _line = _lines[i];
                
                draw_text(_x + _dx, _y + _dy, _line);
                
                if (i < j - 1) {
                    _dx = 0;
                    _dy += string_height(_line);
                } else {
                    _dx += string_width(_line);
                }
            }

            _chunk = "";
        }
        
        if (_pos > _len) break;
        
        var _key = "",
            _val = "";

        while(_pos <= _len) {
            _char = string_char_at(_text, _pos++);
            
            if (_char == ":") break;
            _key += _char;
        }
        
        while(_pos <= _len) {
            _char = string_char_at(_text, _pos++);
            
            if (_char == ";") break;
            _val += _char;
        }
        
        switch(_key) {
            case "font":
                draw_set_font(real(_val));
                break;

            case "color":
                draw_set_color(real(_val));
                break;

            case "alpha":
                draw_set_font(real(_val));
                break;
        }
    } else {
        _chunk += _char;
    }
}

#define script_execute_spread
/// script_execute_spread(ind, args)


var _ind  = argument[0],
    _args = argument[1];


var _len = array_length_1d(_args);

switch(_len) {
    case 0:
        return script_execute(_ind);
    case 1:
        return script_execute(_ind, _args[0]);
    case 2:
        return script_execute(_ind, _args[0], _args[1]);
    case 3:
        return script_execute(_ind, _args[0], _args[1], _args[2]);
    case 4:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3]);
    case 5:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4]);
    case 6:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5]);
    case 7:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6]);
    case 8:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7]);
    case 9:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8]);
    case 10:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9]);
    case 11:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10]);
    case 12:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11]);
    case 13:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12]);
    case 14:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13]);
    case 15:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14]);
    case 16:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15]);
    case 17:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16]);
    case 18:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17]);
    case 19:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18]);
    case 20:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19]);
    case 21:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20]);
    case 22:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20], _args[21]);
    case 23:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20], _args[21], _args[22]);
    case 24:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20], _args[21], _args[22], _args[23]);
    case 25:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20], _args[21], _args[22], _args[23], _args[24]);
    case 26:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20], _args[21], _args[22], _args[23], _args[24], _args[25]);
    case 27:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20], _args[21], _args[22], _args[23], _args[24], _args[25], _args[26]);
    case 28:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20], _args[21], _args[22], _args[23], _args[24], _args[25], _args[26], _args[27]);
    case 29:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20], _args[21], _args[22], _args[23], _args[24], _args[25], _args[26], _args[27], _args[28]);
    case 30:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20], _args[21], _args[22], _args[23], _args[24], _args[25], _args[26], _args[27], _args[28], _args[29]);
    case 31:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20], _args[21], _args[22], _args[23], _args[24], _args[25], _args[26], _args[27], _args[28], _args[29], _args[30]);
    case 32:
        return script_execute(_ind, _args[0], _args[1], _args[2], _args[3], _args[4], _args[5], _args[6], _args[7], _args[8], _args[9], _args[10], _args[11], _args[12], _args[13], _args[14], _args[15], _args[16], _args[17], _args[18], _args[19], _args[20], _args[21], _args[22], _args[23], _args[24], _args[25], _args[26], _args[27], _args[28], _args[29], _args[30], _args[31]);
}