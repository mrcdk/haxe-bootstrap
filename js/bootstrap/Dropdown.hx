package js.bootstrap;

class Dropdown {

	public static inline function dropdown( j : JQuery ) : JQuery {
		return untyped j.dropdown();
	}
	

	#if !noEmbedBootstrap
	public static function __init__ () {
		bootstrap.Lib.includeFile("js/bootstrap-dropdown.js");
	}
	#end

}