package knockout;

import knockout.DependentObservable;
import knockout.ObservableArray;
import knockout.Observable;
import js.Dom.HtmlDom;

@:native("ko")
extern
class Knockout {

    public static var extenders:Dynamic;

    public static var bindingHandlers:Hash<BindingHandler>;

    public static function observable<T>(?value:T):Observable<T>;

    public static function observableArray<T>(?value:Array<T>):ObservableArray<T>;

    public static function computed<T>(evaluatorFunctionOrOptions:Void -> T):DependentObservable<T>;
}

typedef BindingHandler = {
    @:optional function init(element:HtmlDom, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void;

    @:optional function update(element:HtmlDom, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void;
}
