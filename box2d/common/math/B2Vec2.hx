package box2d.common.math;


#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end


class B2Vec2 {


	public var x (getX, setX):Float;
	public var y (getY, setY):Float;

	/** @private */
	public var handle:Dynamic;


	public function new (x:Float, y:Float):Void {
		
		handle = box2d_b2vec2_new (x, y);
		
	}
	

	public function isValid ():Bool {
		
		return box2d_b2vec2_is_valid (handle);
		
	}
	
	public function length ():Float {
		
		return box2d_b2vec2_length (handle);
		
	}
	
	public function lengthSquared ():Float {
		
		return box2d_b2vec2_length_squared (handle);
		
	}
	
	public function normalize ():Float {
		
		return box2d_b2vec2_normalize (handle);
		
	}
	
	public function set (x:Float, y:Float):Void {
		
		box2d_b2vec2_set (handle, x, y);
		
	}
	
	public function setZero ():Void {
		
		box2d_b2vec2_set_zero (handle);
		
	}
	


	// Get & Set Methods



	private function getX ():Float {
		
		return box2d_b2vec2_get_x (handle);
		
	}
	
	private function getY ():Float {
		
		return box2d_b2vec2_get_y (handle);
		
	}
	
	private function setX (value:Float):Float {
		
		box2d_b2vec2_set_x (handle, value);
		return value;
		
	}
	
	private function setY (value:Float):Float {
		
		box2d_b2vec2_set_y (handle, value);
		return value;
		
	}
	


	// Native Methods



	private static var box2d_b2vec2_get_x = Lib.load ("box2d", "box2d_b2vec2_get_x", 1);
	private static var box2d_b2vec2_get_y = Lib.load ("box2d", "box2d_b2vec2_get_y", 1);
	private static var box2d_b2vec2_is_valid = Lib.load ("box2d", "box2d_b2vec2_is_valid", 1);
	private static var box2d_b2vec2_length = Lib.load ("box2d", "box2d_b2vec2_length", 1);
	private static var box2d_b2vec2_length_squared = Lib.load ("box2d", "box2d_b2vec2_length_squared", 1);
	private static var box2d_b2vec2_new = Lib.load ("box2d", "box2d_b2vec2_new", 2);
	private static var box2d_b2vec2_normalize = Lib.load ("box2d", "box2d_b2vec2_normalize", 1);
	private static var box2d_b2vec2_set = Lib.load ("box2d", "box2d_b2vec2_set", 3);
	private static var box2d_b2vec2_set_x = Lib.load ("box2d", "box2d_b2vec2_set_x", 2);
	private static var box2d_b2vec2_set_y = Lib.load ("box2d", "box2d_b2vec2_set_y", 2);
	private static var box2d_b2vec2_set_zero = Lib.load ("box2d", "box2d_b2vec2_set_zero", 1);


}