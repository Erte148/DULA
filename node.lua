gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

util.no_globals()

local on = false

local font = resource.load_font("silkscreen.ttf")


util.data_mapper{
    state = function(state)
        on = state == '1'
    end,
}

function node.render()
    if on then
        font:write(120, 320, "Hello Dula", 100, 1,1,1,1) 
    else
        gl.clear(1, 0, 0, 1) -- red
    end
end
