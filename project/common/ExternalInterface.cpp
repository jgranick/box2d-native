#ifndef IPHONE
#define IMPLEMENT_API
#endif

#if defined(HX_WINDOWS) || defined(HX_MACOS) || defined(HX_LINUX)
#define NEKO_COMPATIBLE
#endif

#include <hx/CFFI.h>

#include <Box2D/Common/b2Math.h>
#include <Box2D/Dynamics/b2World.h>


value box2d_b2vec2_get_x (value handle) {

	return alloc_float(((b2Vec2*)val_data(handle))->x);

}
DEFINE_PRIM (box2d_b2vec2_get_x, 1)


value box2d_b2vec2_get_y (value handle) {

	return alloc_float(((b2Vec2*)val_data(handle))->y);

}
DEFINE_PRIM (box2d_b2vec2_get_y, 1)


value box2d_b2vec2_is_valid (value handle) {

	return alloc_bool(((b2Vec2*)val_data(handle))->IsValid());

}
DEFINE_PRIM (box2d_b2vec2_is_valid, 1)


value box2d_b2vec2_length (value handle) {

	return alloc_float(((b2Vec2*)val_data(handle))->Length());

}
DEFINE_PRIM (box2d_b2vec2_length, 1)


value box2d_b2vec2_length_squared (value handle) {

	return alloc_float(((b2Vec2*)val_data(handle))->LengthSquared());

}
DEFINE_PRIM (box2d_b2vec2_length_squared, 1)


value box2d_b2vec2_new (value x, value y) {

	b2Vec2 *instance = new b2Vec2 (val_float(x), val_float(y));
	return alloc_abstract (0, instance);

}
DEFINE_PRIM (box2d_b2vec2_new, 2)


value box2d_b2vec2_normalize (value handle) {

	return alloc_float(((b2Vec2*)val_data(handle))->Normalize());

}
DEFINE_PRIM (box2d_b2vec2_normalize, 1)


value box2d_b2world_get_allow_sleeping (value handle) {

	return alloc_bool(((b2World*)val_data(handle))->GetAllowSleeping());

}
DEFINE_PRIM (box2d_b2world_get_allow_sleeping, 1)


value box2d_b2world_get_auto_clear_forces (value handle) {

	return alloc_bool(((b2World*)val_data(handle))->GetAutoClearForces());

}
DEFINE_PRIM (box2d_b2world_get_auto_clear_forces, 1)


value box2d_b2world_get_body_count (value handle) {

	return alloc_int(((b2World*)val_data(handle))->GetBodyCount());

}
DEFINE_PRIM (box2d_b2world_get_body_count, 1)


value box2d_b2world_get_contact_count (value handle) {

	return alloc_int(((b2World*)val_data(handle))->GetContactCount());

}
DEFINE_PRIM (box2d_b2world_get_contact_count, 1)


value box2d_b2world_get_continuous_physics (value handle) {

	return alloc_bool(((b2World*)val_data(handle))->GetContinuousPhysics());

}
DEFINE_PRIM (box2d_b2world_get_continuous_physics, 1)


value box2d_b2world_get_is_locked (value handle) {

	return alloc_bool(((b2World*)val_data(handle))->IsLocked());

}
DEFINE_PRIM (box2d_b2world_get_is_locked, 1)


value box2d_b2world_get_joint_count (value handle) {

	return alloc_int(((b2World*)val_data(handle))->GetJointCount());

}
DEFINE_PRIM (box2d_b2world_get_joint_count, 1)


value box2d_b2world_get_proxy_count (value handle) {

	return alloc_int(((b2World*)val_data(handle))->GetProxyCount());

}
DEFINE_PRIM (box2d_b2world_get_proxy_count, 1)


value box2d_b2world_get_sub_stepping (value handle) {

	return alloc_bool(((b2World*)val_data(handle))->GetSubStepping());

}
DEFINE_PRIM (box2d_b2world_get_sub_stepping, 1)


value box2d_b2world_get_tree_balance (value handle) {

	return alloc_int(((b2World*)val_data(handle))->GetTreeBalance());

}
DEFINE_PRIM (box2d_b2world_get_tree_balance, 1)


value box2d_b2world_get_tree_height (value handle) {

	return alloc_int(((b2World*)val_data(handle))->GetTreeHeight());

}
DEFINE_PRIM (box2d_b2world_get_tree_height, 1)


value box2d_b2world_get_tree_quality (value handle) {

	return alloc_float(((b2World*)val_data(handle))->GetTreeQuality());

}
DEFINE_PRIM (box2d_b2world_get_tree_quality, 1)


value box2d_b2world_get_warm_starting (value handle) {

	return alloc_bool(((b2World*)val_data(handle))->GetWarmStarting());

}
DEFINE_PRIM (box2d_b2world_get_warm_starting, 1)


value box2d_b2world_new (value gravity) {

	b2World *instance = new b2World (*(b2Vec2*)val_data(gravity));
	return alloc_abstract (0, instance);

}
DEFINE_PRIM (box2d_b2world_new, 1)


void box2d_b2vec2_set (value handle, value x, value y) {

	((b2Vec2*)val_data(handle))->Set(val_float(x), val_float(y));

}
DEFINE_PRIM (box2d_b2vec2_set, 3)


void box2d_b2vec2_set_x (value handle, value newValue) {

	((b2Vec2*)val_data(handle))->x = val_float(newValue);

}
DEFINE_PRIM (box2d_b2vec2_set_x, 2)


void box2d_b2vec2_set_y (value handle, value newValue) {

	((b2Vec2*)val_data(handle))->y = val_float(newValue);

}
DEFINE_PRIM (box2d_b2vec2_set_y, 2)


void box2d_b2vec2_set_zero (value handle) {

	((b2Vec2*)val_data(handle))->SetZero();

}
DEFINE_PRIM (box2d_b2vec2_set_zero, 1)


void box2d_b2world_clear_forces (value handle) {

	((b2World*)val_data(handle))->ClearForces();

}
DEFINE_PRIM (box2d_b2world_clear_forces, 1)


void box2d_b2world_draw_debug_data (value handle) {

	((b2World*)val_data(handle))->DrawDebugData();

}
DEFINE_PRIM (box2d_b2world_draw_debug_data, 1)


void box2d_b2world_dump (value handle) {

	((b2World*)val_data(handle))->Dump();

}
DEFINE_PRIM (box2d_b2world_dump, 1)


void box2d_b2world_set_allow_sleeping (value handle, value newValue) {

	((b2World*)val_data(handle))->SetAllowSleeping(val_bool(newValue));

}
DEFINE_PRIM (box2d_b2world_set_allow_sleeping, 2)


void box2d_b2world_set_auto_clear_forces (value handle, value newValue) {

	((b2World*)val_data(handle))->SetAutoClearForces(val_bool(newValue));

}
DEFINE_PRIM (box2d_b2world_set_auto_clear_forces, 2)


void box2d_b2world_set_continuous_physics (value handle, value newValue) {

	((b2World*)val_data(handle))->SetContinuousPhysics(val_bool(newValue));

}
DEFINE_PRIM (box2d_b2world_set_continuous_physics, 2)


void box2d_b2world_set_sub_stepping (value handle, value newValue) {

	((b2World*)val_data(handle))->SetSubStepping(val_bool(newValue));

}
DEFINE_PRIM (box2d_b2world_set_sub_stepping, 2)


void box2d_b2world_set_warm_starting (value handle, value newValue) {

	((b2World*)val_data(handle))->SetWarmStarting(val_bool(newValue));

}
DEFINE_PRIM (box2d_b2world_set_warm_starting, 2)



extern "C" int box2d_register_prims() { return 0; }
