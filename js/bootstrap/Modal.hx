package js.bootstrap;

typedef ModalOptions = {
	?backdrop 	: Bool,
	?keyboard 	: Bool,
	?show 		: Bool
}

class Modal {
	public static inline function modal( j : JQuery , conf : ModalOptions = null ) : JQuery {
		return untyped j.modal( conf );
	}
	
	public static inline function modalToggle( j : JQuery ) : JQuery { return untyped j.modal( "toggle" ); }
	public static inline function modalShow( j : JQuery )   : JQuery { return untyped j.modal( "show" ); }
	public static inline function modalHide( j : JQuery )   : JQuery { return untyped j.modal( "hide" ); }

#if !noEmbedBootstrap
	public static function __init__() { bootstrap.Lib.includeFile("js/bootstrap-modal.js"); }
#end
	
}