import js.Dom.HtmlDom;
import knockout.Knockout;
import knockout.Observable;
import knockout.Utils;
import knockout.BindingContext;

class Test {

// test
    public static function main() {
        var observable = Knockout.observable("hello");
        var value = observable.get();

        Observable.fn.newMethod = function() {
            return 100;
        };

        observable.set("new text");

        var array1 = new Array<Int>();
        var array2 = new Array<Int>();

        Utils.arrayPushAll(array1, array2);

        Knockout.bindingHandlers.put("myHandler", new MyHandler());

        Knockout.applyBindings({prop:observable});
    }
}

class MyHandler {

    public function new() {

    }

    public function init(element:HtmlDom, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void {
        var parent = bindingContext.parent;
    }

    public function update(element:HtmlDom, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void {

    }

}