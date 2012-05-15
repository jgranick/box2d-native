Box2D (Native)
=============

This is an NME extension to use the native Box2D C++ library.

I am using BuildHX to generate both the Haxe classes and the "ExternalInterface.cpp" file which provides the glue between Haxe and the native Box2D classes. This library will continue to improve as BuildHX handles the generation for more types.


Generating Classes
------------------

Make sure you have BuildHX installed:
	
	
	haxelib install buildhx
	
	
...then you can process the "build.xml" definition file:
	
	
	haxelib run buildhx build.xml
	
	

Compiling
---------

Similar to most native extensions for NME, go to the "project" directory and use HXCPP to build for each target you want to support:
	
	
	cd project
	haxelib run hxcpp Build.xml
	haxelib run hxcpp Build.xml -Dandroid
	haxelib run hxcpp Build.xml -Diphoneos
	haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARMV7
	haxelib run hxcpp Build.xml -Diphonesim
	haxelib run hxcpp Build.xml -Dblackberry
	haxelib run hxcpp Build.xml -Dwebos
	
	
Using the Library
-----------------

If this were on haxelib, you would use "haxelib install box2d" and add <haxelib name="box2d" /> to your project's NMML file. Since it is not on haxelib, the easiest way to test the library is to install "box2d" using haxelib first, then set a development path, like this:
	
	
	haxelib install box2d
	haxelib dev box2d path/to/box2d-native