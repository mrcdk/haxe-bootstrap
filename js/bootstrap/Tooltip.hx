package js.bootstrap;

typedef TooltipOptions = {
	?animation 	: Bool,
	?placement 	: Dynamic, // or function...
	?selector 	: String,
	?title 		: Dynamic,
	?content 	: Dynamic,
	?delay 		: Dynamic
}

class Tooltip {
	public static inline function tooltip( j : JQuery , ?opts:TooltipOptions = null ) : JQuery {
		return untyped j.tooltip( opts );
	}

	public static inline function tooltipToggle( j : JQuery ) : JQuery { return untyped j.tooltip( "toggle" ); }
	public static inline function tooltipShow( j : JQuery )   : JQuery { return untyped j.tooltip( "show" ); }
	public static inline function tooltipHide( j : JQuery )   : JQuery { return untyped j.tooltip( "hide" ); }

#if !noEmbedBootstrap
	public static function __init__() { bootstrap.Lib.includeFile( "js/bootstrap-tooltip.js" ); }
#end

}