package knockout;

import knockout.DependentObservable;
import knockout.ObservableArray;
import knockout.Observable;
import js.Dom.HtmlDom;

@:native("ko")
extern
class Knockout {

    public static var extenders:Dynamic;

    public static var bindingHandlers:BindingHandlerMap;

    public static function observable<T>(?value:T):Observable<T>;

    public static function observableArray<T>(?value:Array<T>):ObservableArray<T>;

    public static function computed<T>(evaluatorFunctionOrOptions:Void -> T):DependentObservable<T>;

    public static function applyBindings(viewModel:Dynamic,?rootNode:HtmlDom):Void;
}

class BindingHandlerMap {

    public inline function put(key:String, handler:BindingHandler):Void untyped {
        this[key] = handler;
    }

    public inline function get(key:String):BindingHandler untyped {
        return this[key];
    }
}


typedef BindingHandler = {
    function init(element:HtmlDom, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void;

    function update(element:HtmlDom, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void;
}
