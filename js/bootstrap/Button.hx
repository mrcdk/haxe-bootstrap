package js.bootstrap;

class Button {
	public static inline function button( j : JQuery, ?state:String = null ) : JQuery {
		return untyped j.button( state );
	}

	public static inline function buttonToggle( j : JQuery )  { return button(j, "toggle" ); }
	public static inline function buttonLoading( j : JQuery ) { return button(j, "loading" ); }
	public static inline function buttonReset( j : JQuery )   { return button(j, "reset" ); }

#if !noEmbedBootstrap
	public static function __init__() { bootstrap.Lib.includeFile("js/bootstrap-button.js"); }
#end	
}