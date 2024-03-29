gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

util.no_globals()

local on = false


local video = resource.load_video{
    file = "video.mp4";
    looped = true;
}

util.data_mapper{
    state = function(state)
        on = state == '1'
    end,
}

function node.render()
    if on then
        video:draw(0, 0, WIDTH, HEIGHT)
    else
        gl.clear(1, 0, 0, 1) -- red
    end
end
