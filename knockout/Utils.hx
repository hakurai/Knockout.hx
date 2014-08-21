package knockout;
import js.html.Element;
import js.html.Node;
import knockout.Utils.Either;
import knockout.Subscribable;
@:native("ko.utils")
extern
class Utils {
    
    public static var fieldsIncludedWithJsonPost:Array<Dynamic>;
    
    public static function arrayForEach<T>(array:Array<T>, action:T -> Void):Void;
    
    public static function arrayFirst<T>(array:Array<T>, predicate:T -> Bool, ?predicateOwner:Dynamic):Null<T>;
    
    public static function arrayFilter<T>(array:Array<T>, predicate:T -> Bool):Array<T>;
    
    public static function arrayGetDistinctValues<T>(array:Array<T>):Array<T>;
    
    public static function arrayIndexOf<T>(array:Array<T>, item:T):Int;
    
    public static function arrayMap<T1, T2>(array:Array<T1>, mapping:T1 -> T2):Array<T2>;
    
    public static function arrayPushAll<T>(array:Either<Array<T>, ObservableArray<T>>, valuesToPush:Array<T>):Array<T>;
    
    public static function arrayRemoveItem<T>(array:Either<Array<T>, ObservableArray<T>>, itemToRemove:T):Void;
    
    public static function extend(target:Dynamic, source:Dynamic):Void;
    
    public static function getFormFields(form:Element, fieldName:Either<String, EReg>):Array<Node>;
    
    public static function peekObservable<T>(value:Either<T, Subscribable<T>>):T;
    
    public static function postJson(urlOrForm:Either<String, Element>, data:Either<Dynamic, Subscribable<Dynamic>>, options:Dynamic):Void;
    
    public static function parseJson(jsonString:String):Dynamic;
    
    public static function registerEventHandler(element:Node, eventType:String, handler:js.html.EventListener):Void;
    
    public static function stringifyJson(data:Dynamic):String;
    
    public static function range(min:Either<Int, Subscribable<Int>>, max:Either<Int, Subscribable<Int>>):Array<Int>;
    
    public static function toggleDomNodeCssClass(node:Element, className:String, shouldHaveClass:Bool):Void;
    
    public static function triggerEvent(element:Node, eventType:String):Void;
    
    public static function unwrapObservable<T>(value:Either<T, Subscribable<T>>):T;
    
    public static function objectForEach(obj:Dynamic, action:String -> Dynamic -> Void):Void;
    
    public static function addOrRemoveItem<T>(array:Array<T>, value:T, included:Bool):Void;

    public static function parseHtmlFragment(template:Dynamic):Dynamic;
    
    public static function setHtml(node:Node, html:Dynamic):Void;

}

abstract Either<T1, T2>(Dynamic) from T1 from T2 to T1 to T2 {}