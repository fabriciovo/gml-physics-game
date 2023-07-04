image_speed = 0.01;
phy_rotation = 0
phy_fixed_rotation = true
drag_state = false;
grounded = false;
state = player_states.normal
max_stamina = 3;
max_hp = 3
stamina = max_stamina;
hp = max_hp;
can_take_damage = true
sprite[player_states.normal] = s_player_idle;
sprite[player_states.hold] = s_player_prepare_to_jump;
sprite[player_states.jump] = s_player_jump;
sprite[player_states.fall] = s_player_falling;
sprite[player_states.damage] = s_player_damage;


var fix = physics_fixture_create();
physics_fixture_set_box_shape(fix, 16,16)
physics_fixture_set_density(fix, 1)
//physics_fixture_set_restitution(fix, 0.1)
//physics_fixture_set_collision_group(fix, 1)
//physics_fixture_set_linear_damping (fix, 0.1)
//physics_fixture_set_angular_damping(fix, 0.1)
//physics_fixture_set_friction(fix, 5);

fix_id = physics_fixture_bind(fix, self);
physics_fixture_delete(fix);
