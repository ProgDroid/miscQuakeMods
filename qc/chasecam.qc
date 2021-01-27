.entity camera;
void() chasecamUpdate;
void(entity ent) setViewPoint;

void() chasecamOn = {
    self.camera           = spawn();
    self.camera.classname = "camera";
    self.camera.movetype  = MOVETYPE_NONE;
    self.camera.solid     = SOLID_NOT;

    setmodel(self.camera, "progs/s_bubble.spr");
    setsize(self.camera, '0 0 0', '0 0 0');

    chasecamUpdate();

    stuffcmd(self, "r_drawviewmodel 0\ncl_bob 0\ncl_rollangle 0\nv_kickpitch 0\nv_kickroll 0\n");
    setViewPoint(self.camera);
};

void() chasecamOff = {
    stuffcmd(self, "r_drawviewmodel 1\ncl_bob 0.02\ncl_rollangle 2.0\nv_kickpitch 0.6\nv_kickroll 0.6\n");
    setViewPoint(self);
    if (self.camera) remove(self.camera);
};

void() chasecamUpdate = {
    if (!self.camera) {
        return;
    }
    
    local vector cameraOrigin;

    makevectors(self.v_angle);
    traceline(self.origin + self.view_ofs, self.origin + (self.view_ofs * 2) + (v_forward * -64) + (v_up * -6), FALSE, self);

    cameraOrigin_x = trace_endpos_x;
    cameraOrigin_y = trace_endpos_y;
    cameraOrigin_z = trace_endpos_z - self.view_ofs_z;
    cameraOrigin   = cameraOrigin + trace_plane_normal;
    setorigin(self.camera, cameraOrigin);
};

void(entity ent) setViewPoint = {
    msg_entity = self;
    WriteByte(1, SVC_SETVIEW);
    WriteEntity(1, ent);
};
