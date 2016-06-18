package js.bootstrap;

class Alert {

	public static inline function alert( j : JQuery ) : JQuery {
		return untyped j.alert();
	}

	public static inline function alertClose( j : JQuery ) : JQuery {
		return untyped j.alert("close");
	}

	#if !noEmbedBootstrap
	public static function __init__() {
		bootstrap.Lib.includeFile("js/bootstrap-alert.js");
	}
	#end

}
