package knockout;

import knockout.Utils.Either;
import knockout.Utils.Either;
import knockout.DependentObservable;
import knockout.Observable;
import knockout.ObservableArray;
import knockout.TemplateEngine;


@:native("ko")
extern
class Knockout {

    public static var version:String;
    
    public static var extenders:Dynamic;

    public static var bindingHandlers:BindingHandlerMap;
    
    public static var nativeTemplateEngine:TemplateEngine;
    
    public static var jqueryTmplTemplateEngine:TemplateEngine;

    public static function observable<T>(?value:T):ObservableExtern<T>;

    public static function observableArray<T>(?value:Either<Array<T>, T>):ObservableArrayExtern<T>;

    public static function computed<T>(evaluatorFunctionOrOptions:Either<Void -> T, DependentObservableOption<T>>):DependentObservableExtern<T>;

    public static function applyBindings(viewModel:Dynamic,?rootNode:js.html.Node):Void;

    public static function unwrap<T>(value:Either<T, Subscribable<T>>):T;
    
    public static function isObservable(instance:Dynamic):Bool;
    
    public static function isWriteableObservable(instance:Dynamic):Bool;

    public static function isComputed(instance:Dynamic):Bool;

    public static function renderTemplate(template:Dynamic, dataOrBindingContext:Dynamic, options:Dynamic, targetNodeOrNodeArray:Dynamic, ?renderMode:String):Dynamic;
    
    public static function setTemplateEngine(templateEngine:TemplateEngine):Void;
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
