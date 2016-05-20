" Text              Command    New Text
" ---------------   -------    -----------
" 'Hello W|orld'    ds'        Hello World
" (12|3+4*56)/2     ds(        123+4*56/2
" <div>fo|o</div>   dst        foo
"
"
" Text              Command    New Text
" ---------------   -------    -----------
" "Hello |world!"   cs"'       'Hello world!'
" "Hello |world!"   cs"<q>     <q>Hello world!</q>
" (123+4|56)/2      cs)]       [123+456]/2
" (123+4|56)/2      cs)[       [ 123+456 ]/2
" <div>foo|</div>   cst<p>     <p>foo</p>
" fo|o!             csw'       'foo'!
" fo|o!             csW'       'foo!'
"
"
" Text              Command      New Text
" ---------------   -------      -----------
" Hello w|orld!     ysiw)        Hello (world)!
" Hello w|orld!     csw)         Hello (world)!
" fo|o              ysiwt<html>  <html>foo</html>
" foo quu|x baz     yss"         "foo quux baz"
" foo quu|x baz     ySS"         "
                                    "foo quux baz
"                                "

