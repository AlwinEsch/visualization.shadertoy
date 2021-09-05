# User definable shader list within JSON file

The `presets.json` can be used to set own shaders and related parts by self.
Within addon settings can be this set to an own path where can be somewhere
else.

It should be:
1. Name of preset, where could be text or number where set withing `strings.po`
2. glsl shader to use, if path not added becomes them within addon used.
   Optionally can be a own path added to use glsl from somewhere outside, or
   to set with './' to use same path as Json, also can be '../' used get lower
   paths.
3. Channel value on place 0. This thought to define used texture, or if set
   with "audio" to pass related stream data within texture. The place definition
   to related PNG file is like before for shader file.
4. Channel value on place 1. Same description as 0.
5. Channel value on place 2. Same description as 0.
6. Channel value on place 3. Same description as 0.
7. *[Optional]* On here can be `"gl_only"` added to make this preset only available
   to OpenGL.

Example:
-------------------
~~~json
{ "presets":[
/* Here the standard way used by addon itself */
[ "The Disco Tunnel by poljere",  "discotunnel.frag.glsl",                  "tex02.png, "tex15.png", "audio", "" ],
/* In here name defined to entry inside atrings.po */
[ 30100,                          "audioeclipse.frag.glsl",                 "audio", "", "", "" ],
/* With this how a used can define everything to his own file paths */
[ "My own one",                   "/COMPLETE_PATH_TO YOURS/your.frag.glsl", "audio", "/COMPLETE_PATH_TO YOURS/your_image.png", "", "" ],
/* On this is the optional "gl_only" added as example */
[ "Polar Beats by sauj123",       "polarbeats.frag.glsl",                   "audio", "", "", "", "gl_only" ],
/* For here if related files in same folder as related Json file */
[ "Another one",                  "./another.frag.glsl",                    "./my_01.png", "./my_02.png", "audio", "", "gl_only" ]
/* With this to select texture image by file name, used path inside addon dir */
[ "Fractal Land by Kali",         "fractalland.frag.glsl",                  "tex02.png", "tex15.png", "audio", "", "gl_only" ]
]}
~~~
