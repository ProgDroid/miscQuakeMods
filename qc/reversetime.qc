void(entity e) discardOnePosition = {
    e.oldPosition1 = e.oldPosition2;
    e.oldPosition2 = e.oldPosition3;
    e.oldPosition3 = e.oldPosition4;
    e.oldPosition4 = e.oldPosition5;
    e.oldPosition5 = e.oldPosition6;
    e.oldPosition6 = e.oldPosition7;
    e.oldPosition7 = e.oldPosition8;
    e.oldPosition8 = e.oldPosition9;
    e.oldPosition9 = e.oldPosition10;
    e.oldPosition10 = e.oldPosition11;
    e.oldPosition11 = e.oldPosition12;
    e.oldPosition12 = e.oldPosition13;
    e.oldPosition13 = e.oldPosition14;
    e.oldPosition14 = e.oldPosition15;
    e.oldPosition15 = e.oldPosition16;
    e.oldPosition16 = e.oldPosition17;
    e.oldPosition17 = e.oldPosition18;
    e.oldPosition18 = e.oldPosition19;
    e.oldPosition19 = e.oldPosition20;
};

void(entity e) discardOneLookAt = {
    e.oldLookAt1 = e.oldLookAt2;
    e.oldLookAt2 = e.oldLookAt3;
    e.oldLookAt3 = e.oldLookAt4;
    e.oldLookAt4 = e.oldLookAt5;
    e.oldLookAt5 = e.oldLookAt6;
    e.oldLookAt6 = e.oldLookAt7;
    e.oldLookAt7 = e.oldLookAt8;
    e.oldLookAt8 = e.oldLookAt9;
    e.oldLookAt9 = e.oldLookAt10;
    e.oldLookAt10 = e.oldLookAt11;
    e.oldLookAt11 = e.oldLookAt12;
    e.oldLookAt12 = e.oldLookAt13;
    e.oldLookAt13 = e.oldLookAt14;
    e.oldLookAt14 = e.oldLookAt15;
    e.oldLookAt15 = e.oldLookAt16;
    e.oldLookAt16 = e.oldLookAt17;
    e.oldLookAt17 = e.oldLookAt18;
    e.oldLookAt18 = e.oldLookAt19;
    e.oldLookAt19 = e.oldLookAt20;
};

void(entity e) discardOneVelocity = {
    e.oldVelocity1 = e.oldVelocity2;
    e.oldVelocity2 = e.oldVelocity3;
    e.oldVelocity3 = e.oldVelocity4;
    e.oldVelocity4 = e.oldVelocity5;
    e.oldVelocity5 = e.oldVelocity6;
    e.oldVelocity6 = e.oldVelocity7;
    e.oldVelocity7 = e.oldVelocity8;
    e.oldVelocity8 = e.oldVelocity9;
    e.oldVelocity9 = e.oldVelocity10;
    e.oldVelocity10 = e.oldVelocity11;
    e.oldVelocity11 = e.oldVelocity12;
    e.oldVelocity12 = e.oldVelocity13;
    e.oldVelocity13 = e.oldVelocity14;
    e.oldVelocity14 = e.oldVelocity15;
    e.oldVelocity15 = e.oldVelocity16;
    e.oldVelocity16 = e.oldVelocity17;
    e.oldVelocity17 = e.oldVelocity18;
    e.oldVelocity18 = e.oldVelocity19;
    e.oldVelocity19 = e.oldVelocity20;
};

void(vector position, vector lookAt, vector velocity, entity e) setOldValues = {
    if (e.oldPosition1 == '0 0 0') {
        e.oldPosition1 = position;
        e.oldLookAt1   = lookAt;
        e.oldVelocity1 = velocity;
        return;
    }

    if (e.oldPosition2 == '0 0 0') {
        e.oldPosition2 = position;
        e.oldLookAt2   = lookAt;
        e.oldVelocity2 = velocity;
        return;
    }

    if (e.oldPosition3 == '0 0 0') {
        e.oldPosition3 = position;
        e.oldLookAt3   = lookAt;
        e.oldVelocity3 = velocity;
        return;
    }

    if (e.oldPosition4 == '0 0 0') {
        e.oldPosition4 = position;
        e.oldLookAt4   = lookAt;
        e.oldVelocity4 = velocity;
        return;
    }

    if (e.oldPosition5 == '0 0 0') {
        e.oldPosition5 = position;
        e.oldLookAt5   = lookAt;
        e.oldVelocity5 = velocity;
        return;
    }

    if (e.oldPosition6 == '0 0 0') {
        e.oldPosition6 = position;
        e.oldLookAt6   = lookAt;
        e.oldVelocity6 = velocity;
        return;
    }

    if (e.oldPosition7 == '0 0 0') {
        e.oldPosition7 = position;
        e.oldLookAt7   = lookAt;
        e.oldVelocity7 = velocity;
        return;
    }

    if (e.oldPosition8 == '0 0 0') {
        e.oldPosition8 = position;
        e.oldLookAt8   = lookAt;
        e.oldVelocity8 = velocity;
        return;
    }

    if (e.oldPosition9 == '0 0 0') {
        e.oldPosition9 = position;
        e.oldLookAt9   = lookAt;
        e.oldVelocity9 = velocity;
        return;
    }

    if (e.oldPosition10 == '0 0 0') {
        e.oldPosition10 = position;
        e.oldLookAt10   = lookAt;
        e.oldVelocity10 = velocity;
        return;
    }

    if (e.oldPosition11 == '0 0 0') {
        e.oldPosition11 = position;
        e.oldLookAt11   = lookAt;
        e.oldVelocity11 = velocity;
        return;
    }

    if (e.oldPosition12 == '0 0 0') {
        e.oldPosition12 = position;
        e.oldLookAt12   = lookAt;
        e.oldVelocity12 = velocity;
        return;
    }

    if (e.oldPosition13 == '0 0 0') {
        e.oldPosition13 = position;
        e.oldLookAt13   = lookAt;
        e.oldVelocity13 = velocity;
        return;
    }

    if (e.oldPosition14 == '0 0 0') {
        e.oldPosition14 = position;
        e.oldLookAt14   = lookAt;
        e.oldVelocity14 = velocity;
        return;
    }

    if (e.oldPosition15 == '0 0 0') {
        e.oldPosition15 = position;
        e.oldLookAt15   = lookAt;
        e.oldVelocity15 = velocity;
        return;
    }
    
    if (e.oldPosition16 == '0 0 0') {
        e.oldPosition16 = position;
        e.oldLookAt16   = lookAt;
        e.oldVelocity16 = velocity;
        return;
    }

    if (e.oldPosition17 == '0 0 0') {
        e.oldPosition17 = position;
        e.oldLookAt17   = lookAt;
        e.oldVelocity17 = velocity;
        return;
    }

    if (e.oldPosition18 == '0 0 0') {
        e.oldPosition18 = position;
        e.oldLookAt18   = lookAt;
        e.oldVelocity18 = velocity;
        return;
    }

    if (e.oldPosition19 == '0 0 0') {
        e.oldPosition19 = position;
        e.oldLookAt19   = lookAt;
        e.oldVelocity19 = velocity;
        return;
    }

    if (e.oldPosition20 != '0 0 0') {
        discardOnePosition(e);
        discardOneLookAt(e);
        discardOneVelocity(e);
    }

    e.oldPosition20 = position;
    e.oldLookAt20   = lookAt;
    e.oldVelocity20 = velocity;
};

void(entity e) clearOldValues = {
    e.oldPosition1 = '0 0 0';
    e.oldPosition2 = '0 0 0';
    e.oldPosition3 = '0 0 0';
    e.oldPosition4 = '0 0 0';
    e.oldPosition5 = '0 0 0';
    e.oldPosition6 = '0 0 0';
    e.oldPosition7 = '0 0 0';
    e.oldPosition8 = '0 0 0';
    e.oldPosition9 = '0 0 0';
    e.oldPosition10 = '0 0 0';
    e.oldPosition11 = '0 0 0';
    e.oldPosition12 = '0 0 0';
    e.oldPosition13 = '0 0 0';
    e.oldPosition14 = '0 0 0';
    e.oldPosition15 = '0 0 0';
    e.oldPosition16 = '0 0 0';
    e.oldPosition17 = '0 0 0';
    e.oldPosition18 = '0 0 0';
    e.oldPosition19 = '0 0 0';
    e.oldPosition20 = '0 0 0';

    e.oldLookAt1 = '0 0 0';
    e.oldLookAt2 = '0 0 0';
    e.oldLookAt3 = '0 0 0';
    e.oldLookAt4 = '0 0 0';
    e.oldLookAt5 = '0 0 0';
    e.oldLookAt6 = '0 0 0';
    e.oldLookAt7 = '0 0 0';
    e.oldLookAt8 = '0 0 0';
    e.oldLookAt9 = '0 0 0';
    e.oldLookAt10 = '0 0 0';
    e.oldLookAt11 = '0 0 0';
    e.oldLookAt12 = '0 0 0';
    e.oldLookAt13 = '0 0 0';
    e.oldLookAt14 = '0 0 0';
    e.oldLookAt15 = '0 0 0';
    e.oldLookAt16 = '0 0 0';
    e.oldLookAt17 = '0 0 0';
    e.oldLookAt18 = '0 0 0';
    e.oldLookAt19 = '0 0 0';
    e.oldLookAt20 = '0 0 0';

    e.oldVelocity1 = '0 0 0';
    e.oldVelocity2 = '0 0 0';
    e.oldVelocity3 = '0 0 0';
    e.oldVelocity4 = '0 0 0';
    e.oldVelocity5 = '0 0 0';
    e.oldVelocity6 = '0 0 0';
    e.oldVelocity7 = '0 0 0';
    e.oldVelocity8 = '0 0 0';
    e.oldVelocity9 = '0 0 0';
    e.oldVelocity10 = '0 0 0';
    e.oldVelocity11 = '0 0 0';
    e.oldVelocity12 = '0 0 0';
    e.oldVelocity13 = '0 0 0';
    e.oldVelocity14 = '0 0 0';
    e.oldVelocity15 = '0 0 0';
    e.oldVelocity16 = '0 0 0';
    e.oldVelocity17 = '0 0 0';
    e.oldVelocity18 = '0 0 0';
    e.oldVelocity19 = '0 0 0';
    e.oldVelocity20 = '0 0 0';
};

void() reverseTime = {
    self.velocity = '0 0 0';

    if (self.classname == "player") {
        self.fixangle = TRUE;
    }

    if (time < self.pausetime) {
        self.nextthink = time + 0.1;
        self.think = reverseTime;
    }

    if (self.oldPosition20 != '0 0 0') {
        setorigin(self, self.oldPosition20);
        self.oldPosition20 = '0 0 0';

        self.angles = self.oldLookAt20;
        self.oldLookAt20 = '0 0 0';
        if (self.classname == "player") stuffcmd (self, "bf\n");
        return;
    }

    if (self.oldPosition19 != '0 0 0') {
        setorigin(self, self.oldPosition19);
        self.oldPosition19 = '0 0 0';

        self.angles = self.oldLookAt19;
        self.oldLookAt19 = '0 0 0';
        return;
    }

    if (self.oldPosition18 != '0 0 0') {
        setorigin(self, self.oldPosition18);
        self.oldPosition18 = '0 0 0';

        self.angles = self.oldLookAt18;
        self.oldLookAt18 = '0 0 0';
        return;
    }

    if (self.oldPosition17 != '0 0 0') {
        setorigin(self, self.oldPosition17);
        self.oldPosition17 = '0 0 0';

        self.angles = self.oldLookAt17;
        self.oldLookAt17 = '0 0 0';
        return;
    }

    if (self.oldPosition16 != '0 0 0') {
        setorigin(self, self.oldPosition16);
        self.oldPosition16 = '0 0 0';

        self.angles = self.oldLookAt16;
        self.oldLookAt16 = '0 0 0';
        return;
    }

    if (self.oldPosition15 != '0 0 0') {
        setorigin(self, self.oldPosition15);
        self.oldPosition15 = '0 0 0';

        self.angles = self.oldLookAt15;
        self.oldLookAt15 = '0 0 0';
        return;
    }

    if (self.oldPosition14 != '0 0 0') {
        setorigin(self, self.oldPosition14);
        self.oldPosition14 = '0 0 0';

        self.angles = self.oldLookAt14;
        self.oldLookAt14 = '0 0 0';
        return;
    }

    if (self.oldPosition13 != '0 0 0') {
        setorigin(self, self.oldPosition13);
        self.oldPosition13 = '0 0 0';

        self.angles = self.oldLookAt13;
        self.oldLookAt13 = '0 0 0';
        return;
    }

    if (self.oldPosition12 != '0 0 0') {
        setorigin(self, self.oldPosition12);
        self.oldPosition12 = '0 0 0';

        self.angles = self.oldLookAt12;
        self.oldLookAt12 = '0 0 0';
        return;
    }

    if (self.oldPosition11 != '0 0 0') {
        setorigin(self, self.oldPosition11);
        self.oldPosition11 = '0 0 0';

        self.angles = self.oldLookAt11;
        self.oldLookAt11 = '0 0 0';
        return;
    }

    if (self.oldPosition10 != '0 0 0') {
        setorigin(self, self.oldPosition10);
        self.oldPosition10 = '0 0 0';

        self.angles = self.oldLookAt10;
        self.oldLookAt10 = '0 0 0';

        if (self.classname == "player") stuffcmd (self, "bf\n");
        return;
    }

    if (self.oldPosition9 != '0 0 0') {
        setorigin(self, self.oldPosition9);
        self.oldPosition9 = '0 0 0';

        self.angles = self.oldLookAt9;
        self.oldLookAt9 = '0 0 0';
        return;
    }

    if (self.oldPosition8 != '0 0 0') {
        setorigin(self, self.oldPosition8);
        self.oldPosition8 = '0 0 0';

        self.angles = self.oldLookAt8;
        self.oldLookAt8 = '0 0 0';
        return;
    }

    if (self.oldPosition7 != '0 0 0') {
        setorigin(self, self.oldPosition7);
        self.oldPosition7 = '0 0 0';

        self.angles = self.oldLookAt7;
        self.oldLookAt7 = '0 0 0';
        return;
    }

    if (self.oldPosition6 != '0 0 0') {
        setorigin(self, self.oldPosition6);
        self.oldPosition6 = '0 0 0';

        self.angles = self.oldLookAt6;
        self.oldLookAt6 = '0 0 0';
        return;
    }

    if (self.oldPosition5 != '0 0 0') {
        setorigin(self, self.oldPosition5);
        self.oldPosition5 = '0 0 0';

        self.angles = self.oldLookAt5;
        self.oldLookAt5 = '0 0 0';
        return;
    }

    if (self.oldPosition4 != '0 0 0') {
        setorigin(self, self.oldPosition4);
        self.oldPosition4 = '0 0 0';

        self.angles = self.oldLookAt4;
        self.oldLookAt4 = '0 0 0';
        return;
    }

    if (self.oldPosition3 != '0 0 0') {
        setorigin(self, self.oldPosition3);
        self.oldPosition3 = '0 0 0';

        self.angles = self.oldLookAt3;
        self.oldLookAt3 = '0 0 0';
        return;
    }

    if (self.oldPosition2 != '0 0 0') {
        setorigin(self, self.oldPosition2);
        self.oldPosition2 = '0 0 0';

        self.angles = self.oldLookAt2;
        self.oldLookAt2 = '0 0 0';
        return;
    }

    if (self.oldPosition1 != '0 0 0') {
        setorigin(self, self.oldPosition1);
        self.oldPosition1 = '0 0 0';

        self.angles = self.oldLookAt1;
        self.oldLookAt1 = '0 0 0';
        if (self.classname == "player") stuffcmd (self, "bf\n");
        self.velocity  = self.oldVelocity1;
        self.nextthink = time + self.oldNextThink;
        self.think     = self.oldThink;

        if (self.pausetime > time + 0.1) {
            if (self.classname != "player" && self.flags | FL_MONSTER) {
                if (self.classname == "lavaBall") {
                    self.owner.currentammo = self.owner.ammo_lava = self.owner.ammo_lava + 1;
                }

                if (self.classname == "grenade" || self.classname == "missile") {
                    self.owner.currentammo = self.owner.ammo_rockets = self.owner.ammo_rockets + 1;
                }

                if (self.classname == "spike" && self.model == "progs/s_spike.mdl") {
                    dprint(self.model);
                    self.owner.currentammo = self.owner.ammo_nails = self.owner.ammo_nails + 2;
                }

                if (self.classname == "spike" && self.model == "progs/spike.mdl") {
                    self.owner.currentammo = self.owner.ammo_nails = self.owner.ammo_nails + 1;
                }

                remove(self);
            }
        }

        if (self.classname == "player") {
            WriteByte (MSG_ALL, SVC_CDTRACK);
            WriteByte (MSG_ALL, currentMusic);
            WriteByte (MSG_ALL, currentMusic);
        }
    }
};

void() reverseTimeEnt = {
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
            e.oldThink     = e.think;
            e.pausetime    = time + 2;
            e.nextthink    = time + 0.1;
            e.think        = reverseTime;
            e.oldNextThink = e.nextthink - time;
        }
        e = e.chain;
    }

    WriteByte (MSG_ALL, SVC_CDTRACK);
    WriteByte (MSG_ALL, 15);
    WriteByte (MSG_ALL, 15);
};
