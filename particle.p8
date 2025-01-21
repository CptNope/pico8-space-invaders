-- Particle emitter for Pico-8
particles = {}

-- Function to create a new particle
function new_particle(x, y, color, lifetime, speed, gravity)
    return {
        x = x,
        y = y,
        dx = cos(rnd(1) * 2 * 3.1415) * speed, -- random x velocity
        dy = sin(rnd(1) * 2 * 3.1415) * speed, -- random y velocity
        color = color,
        lifetime = lifetime,
        age = 0,
        gravity = gravity
    }
end

-- Add particles to the emitter
function spawn_particles(x, y, count)
    for i = 1, count do
        add(particles, new_particle(x, y, flr(rnd(15)), rnd(2) + 1, rnd(1.5) + 0.5, 0.05))
    end
end

-- Update particles
function update_particles()
    for i = #particles, 1, -1 do
        local p = particles[i]
        p.x += p.dx
        p.y += p.dy
        p.dy += p.gravity -- apply gravity
        p.age += 1
        if p.age > p.lifetime then
            del(particles, p) -- remove old particles
        end
    end
end

-- Draw particles
function draw_particles()
    for p in all(particles) do
        pset(p.x, p.y, p.color)
    end
end

-- Main update function
function _update()
    if btn(4) then -- Press Z to spawn particles
        spawn_particles(64, 64, 5)
    end

    update_particles()
end

-- Main draw function
function _draw()
    cls() -- clear the screen
    draw_particles()
end
