void() gloryKill = {
    local entity e = find(world, oldSolid, ftos(SOLID_SLIDEBOX));

    while(e) {
        local float distance = vlen(e.origin - self.origin);
        if (distance > 100 || !(e.flags & FL_MONSTER) || e.gloryPossible == 0) {
            e = e.chain;
            continue;
        }

        e.gloryPossible = 0;
        e.oldSolid      = "";
        e.pausetime     = time + 1;
        e.nextthink     = time + 0.3;
        e.think         = e.th_die;
        e.health        = -99;

        stuffcmd(self, "bf\n");
        self.takedamage = DAMAGE_NO;
        self.fixangle = TRUE;
        makevectors(self.v_angle);

        v_forward   = e.origin - self.origin;
        v_forward_z = v_forward_z + 20;
        self.angles = vectoangles(v_forward);
        self.punchangle = 2;

        walkmove(self.angles_y, e.origin_y - self.origin_y);
        self.pausetime = time + 0.3;
        local float oldWeapon = self.weapon;
        self.weapon = IT_AXE;
        W_Attack();
        self.weapon = oldWeapon;
        self.takedamage = DAMAGE_YES;

        if (self.health < 100) {
            local float heal = 5;
            if (self.health > 95) {
                heal = 100 - self.health;
            }
            self.health = self.health + heal;
        }

        if (self.gloryKillRampUp == 0) {
            self.gloryKillRampUp = 1;

            if (currentMusic < 16) {
                currentMusic = currentMusic + 1;

                if (currentMusic == 15) {
                    currentMusic = currentMusic + 1;
                }

                // this is terrible and should have a centralised controller
                WriteByte (MSG_ALL, SVC_CDTRACK);
                WriteByte (MSG_ALL, currentMusic);
                WriteByte (MSG_ALL, currentMusic);
            }
        }

        return;
    }
};