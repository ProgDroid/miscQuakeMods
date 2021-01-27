void(entity e, float colour) highlightMonster;

float autoAirTrickShotCount;

void() afterTrickShot = {
    autoAirTrickShotCount = 0;

    self.pausetime = time + self.oldPauseTime;
    self.think     = self.oldThink;
    self.nextthink = time + self.oldNextThink;
    self.velocity  = self.oldTrickShotVelocity;
    self.movetype  = self.oldMoveType;

    self.attack_finished = time;
    self.weaponframe     = 0;

    self.inAirTrickShot = 0;

    local entity e = findradius(self.origin, 1000);

    while(e) {
        if (e.flags & FL_MONSTER ||               // monster
            e.classname == "fireball" ||          // environment fireball
            e.classname == "trap_shooter" ||      // projectiles
            e.classname == "trap_spikeshooter" ||
            e.classname == "lavaBall" ||
            e.classname == "missile" ||
            e.classname == "grenade" ||
            e.classname == "ogreGrenade" ||
            e.classname == "spike" ||
            e.classname == "wizspike" ||
            e.classname == "knightspike"
        ) {
            e.pausetime = time + e.oldPauseTime;
            e.velocity  = e.oldTrickShotVelocity;
            if (e.oldThink) {
                e.think = e.oldThink;
            }
            e.nextthink = time + e.oldNextThink;
            e.movetype  = e.oldMoveType;
        }

        e = e.chain;
    }
};

void() autoTrickShot = {
    self.attack_finished = time;
    self.weaponframe     = 0;

    local entity e = findradius(self.origin, 500);

    while(e) {
        if (e.flags & FL_MONSTER ||
            e.classname == "ogreGrenade" ||
            e.classname == "wizspike" ||
            e.classname == "knightspike"
        ) {
            traceline(self.origin, e.origin, FALSE, self);
            if (!(trace_ent.flags & FL_MONSTER) &&
                !(e.classname == "ogreGrenade") &&
                !(e.classname == "wizspike") &&
                !(e.classname == "knightspike")
            ) {
                e = e.chain;
                continue;
            }

            self.fixangle = TRUE;
            makevectors(self.v_angle);
            v_forward    = e.origin - self.origin;
            v_forward_z  = v_forward_z * -1.5;
            self.angles  = vectoangles(v_forward);
            self.v_angle = self.angles;

            if (e.flags & FL_MONSTER) {
                highlightMonster(e, 63);
                self.killStreakPrevious = self.killStreak;
                self.killStreak         = self.killStreak + 1;
                self.lastKillTime       = time;
                W_Attack();
            } else {
                stuffcmd(self, "bf\n");
                local float oldWeapon = self.weapon;
                self.weapon = IT_AXE;
                W_Attack();
                self.weapon = oldWeapon;
                remove(e);
            }

            autoAirTrickShotCount = autoAirTrickShotCount + 1;

            self.nextthink = time + 0.2;
            self.think     = autoTrickShot;

            if (autoAirTrickShotCount == 3) {
                self.nextthink = time + 0.1;
                self.think     = afterTrickShot;
    
                autoAirTrickShotCount = 0;
            }

            return;
        }

        e = e.chain;
    }

    if (autoAirTrickShotCount == 0) {
        sprint(self, "No target found\n");
    }

    self.nextthink = time + 0.1;
    self.think     = afterTrickShot;

    autoAirTrickShotCount = 0;
};

void() airTrickShot = {
    if (self.flags & FL_ONGROUND) {
		return;
    }

    self.inAirTrickShot   = 1;
    self.doneAirTrickShot = 1;
    self.airTrickShotTime = time;

    local entity e = findradius(self.origin, 1000);

    while(e) {
        if (e.classname == "player" ||            // player
            e.flags & FL_MONSTER ||               // monster
            e.classname == "fireball" ||          // environment fireball
            e.classname == "trap_shooter" ||      // projectiles
            e.classname == "trap_spikeshooter" ||
            e.classname == "lavaBall" ||
            e.classname == "missile" ||
            e.classname == "grenade" ||
            e.classname == "ogreGrenade" ||
            e.classname == "spike" ||
            e.classname == "wizspike" ||
            e.classname == "knightspike"
        ) {
            e.oldTrickShotVelocity = e.velocity;
            e.oldThink             = e.think;
            e.oldNextThink         = e.nextthink - time;
            e.oldPauseTime         = e.pausetime - time;
            e.oldMoveType          = e.movetype;

            if (e.oldPauseTime < 0) {
                e.oldPauseTime = 0;
            }

            e.velocity             = '0 0 0';
            e.pausetime            = time + 2;
            e.nextthink            = time + 2;
            e.think                = afterTrickShot;
            e.movetype             = MOVETYPE_NONE;
        }
        e = e.chain;
    }
};
