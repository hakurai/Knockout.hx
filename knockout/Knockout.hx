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

    public static function computed<T>(evaluatorFunctionOrOptions:Either<Void -> T, DependentObservableOption<T>>):DependentObservableExtern<T>;

    public static function applyBindings(viewModel:Dynamic,?rootNode:js.html.Node):Void;

    public static function unwrap<T>(value:ObservableExtern<T>):T;
    
    public static function isObservable<T>(instance:Dynamic):Bool;
    
    public static function isWriteableObservable<T>(instance:Dynamic):Bool;
}


abstract BindingHandlerMap({}){
    @:arrayAccess public inline function arrayAccess(key:String):BindingHandler {
        return Reflect.field(this, key);
    }

    @:arrayAccess public inline function arrayWrite(key:String, value:BindingHandler):Void {
        Reflect.setField(this, key, value);
    }
}


typedef BindingHandler = {
    function init(element:js.html.Node, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void;

    function update(element:js.html.Node, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void;
}
