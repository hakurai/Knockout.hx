package knockout;

import knockout.Utils.Either;
import knockout.Utils.Either;
import knockout.DependentObservable;
import knockout.Observable;
import knockout.ObservableArray;


@:native("ko")
extern
class Knockout {

    public static var extenders:Dynamic;

    public static var bindingHandlers:BindingHandlerMap;

    public static function observable<T>(?value:T):ObservableExtern<T>;

    public static function observableArray<T>(?value:Either<Array<T>, T>):ObservableArrayExtern<T>;

    public static function computed<T>(evaluatorFunctionOrOptions:Either<Void -> T, DependentObservableOption<T>>):DependentObservable<T>;

    public static function applyBindings(viewModel:Dynamic,?rootNode:js.html.Node):Void;
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
    function init(element:js.html.Node, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void;

    function update(element:js.html.Node, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void;
}
