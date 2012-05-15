package box2d.dynamics;


#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

import box2d.common.math.B2Vec2;


class B2World {


	public var allowSleeping (getAllowSleeping, setAllowSleeping):Bool;
	public var autoClearForces (getAutoClearForces, setAutoClearForces):Bool;
	public var bodyCount (getBodyCount, null):Int;
	public var contactCount (getContactCount, null):Int;
	public var continuousPhysics (getContinuousPhysics, setContinuousPhysics):Bool;
	public var isLocked (getIsLocked, null):Bool;
	public var jointCount (getJointCount, null):Int;
	public var proxyCount (getProxyCount, null):Int;
	public var subStepping (getSubStepping, setSubStepping):Bool;
	public var treeBalance (getTreeBalance, null):Int;
	public var treeHeight (getTreeHeight, null):Int;
	public var treeQuality (getTreeQuality, null):Float;
	public var warmStarting (getWarmStarting, setWarmStarting):Bool;

	/** @private */
	public var handle:Dynamic;


	public function new (gravity:B2Vec2):Void {
		
		handle = box2d_b2world_new (gravity.handle);
		
	}
	

	public function clearForces ():Void {
		
		box2d_b2world_clear_forces (handle);
		
	}
	
	public function drawDebugData ():Void {
		
		box2d_b2world_draw_debug_data (handle);
		
	}
	
	public function dump ():Void {
		
		box2d_b2world_dump (handle);
		
	}
	


	// Get & Set Methods



	private function getAllowSleeping ():Bool {
		
		return box2d_b2world_get_allow_sleeping (handle);
		
	}
	
	private function getAutoClearForces ():Bool {
		
		return box2d_b2world_get_auto_clear_forces (handle);
		
	}
	
	private function getBodyCount ():Int {
		
		return box2d_b2world_get_body_count (handle);
		
	}
	
	private function getContactCount ():Int {
		
		return box2d_b2world_get_contact_count (handle);
		
	}
	
	private function getContinuousPhysics ():Bool {
		
		return box2d_b2world_get_continuous_physics (handle);
		
	}
	
	private function getIsLocked ():Bool {
		
		return box2d_b2world_get_is_locked (handle);
		
	}
	
	private function getJointCount ():Int {
		
		return box2d_b2world_get_joint_count (handle);
		
	}
	
	private function getProxyCount ():Int {
		
		return box2d_b2world_get_proxy_count (handle);
		
	}
	
	private function getSubStepping ():Bool {
		
		return box2d_b2world_get_sub_stepping (handle);
		
	}
	
	private function getTreeBalance ():Int {
		
		return box2d_b2world_get_tree_balance (handle);
		
	}
	
	private function getTreeHeight ():Int {
		
		return box2d_b2world_get_tree_height (handle);
		
	}
	
	private function getTreeQuality ():Float {
		
		return box2d_b2world_get_tree_quality (handle);
		
	}
	
	private function getWarmStarting ():Bool {
		
		return box2d_b2world_get_warm_starting (handle);
		
	}
	
	private function setAllowSleeping (value:Bool):Bool {
		
		box2d_b2world_set_allow_sleeping (handle, value);
		return value;
		
	}
	
	private function setAutoClearForces (value:Bool):Bool {
		
		box2d_b2world_set_auto_clear_forces (handle, value);
		return value;
		
	}
	
	private function setContinuousPhysics (value:Bool):Bool {
		
		box2d_b2world_set_continuous_physics (handle, value);
		return value;
		
	}
	
	private function setSubStepping (value:Bool):Bool {
		
		box2d_b2world_set_sub_stepping (handle, value);
		return value;
		
	}
	
	private function setWarmStarting (value:Bool):Bool {
		
		box2d_b2world_set_warm_starting (handle, value);
		return value;
		
	}
	


	// Native Methods



	private static var box2d_b2world_clear_forces = Lib.load ("box2d", "box2d_b2world_clear_forces", 1);
	private static var box2d_b2world_draw_debug_data = Lib.load ("box2d", "box2d_b2world_draw_debug_data", 1);
	private static var box2d_b2world_dump = Lib.load ("box2d", "box2d_b2world_dump", 1);
	private static var box2d_b2world_get_allow_sleeping = Lib.load ("box2d", "box2d_b2world_get_allow_sleeping", 1);
	private static var box2d_b2world_get_auto_clear_forces = Lib.load ("box2d", "box2d_b2world_get_auto_clear_forces", 1);
	private static var box2d_b2world_get_body_count = Lib.load ("box2d", "box2d_b2world_get_body_count", 1);
	private static var box2d_b2world_get_contact_count = Lib.load ("box2d", "box2d_b2world_get_contact_count", 1);
	private static var box2d_b2world_get_continuous_physics = Lib.load ("box2d", "box2d_b2world_get_continuous_physics", 1);
	private static var box2d_b2world_get_is_locked = Lib.load ("box2d", "box2d_b2world_get_is_locked", 1);
	private static var box2d_b2world_get_joint_count = Lib.load ("box2d", "box2d_b2world_get_joint_count", 1);
	private static var box2d_b2world_get_proxy_count = Lib.load ("box2d", "box2d_b2world_get_proxy_count", 1);
	private static var box2d_b2world_get_sub_stepping = Lib.load ("box2d", "box2d_b2world_get_sub_stepping", 1);
	private static var box2d_b2world_get_tree_balance = Lib.load ("box2d", "box2d_b2world_get_tree_balance", 1);
	private static var box2d_b2world_get_tree_height = Lib.load ("box2d", "box2d_b2world_get_tree_height", 1);
	private static var box2d_b2world_get_tree_quality = Lib.load ("box2d", "box2d_b2world_get_tree_quality", 1);
	private static var box2d_b2world_get_warm_starting = Lib.load ("box2d", "box2d_b2world_get_warm_starting", 1);
	private static var box2d_b2world_new = Lib.load ("box2d", "box2d_b2world_new", 1);
	private static var box2d_b2world_set_allow_sleeping = Lib.load ("box2d", "box2d_b2world_set_allow_sleeping", 2);
	private static var box2d_b2world_set_auto_clear_forces = Lib.load ("box2d", "box2d_b2world_set_auto_clear_forces", 2);
	private static var box2d_b2world_set_continuous_physics = Lib.load ("box2d", "box2d_b2world_set_continuous_physics", 2);
	private static var box2d_b2world_set_sub_stepping = Lib.load ("box2d", "box2d_b2world_set_sub_stepping", 2);
	private static var box2d_b2world_set_warm_starting = Lib.load ("box2d", "box2d_b2world_set_warm_starting", 2);


}