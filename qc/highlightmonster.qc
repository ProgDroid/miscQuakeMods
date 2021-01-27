void(entity e, float colour) highlightMonster = {
    e.highlighted = 1;

    local vector particlePosition = e.origin;

    particlePosition_z = particlePosition_z + (e.size_z / 2);
    particle(particlePosition, '0 0 0.5', colour, 25);
    return;
};
