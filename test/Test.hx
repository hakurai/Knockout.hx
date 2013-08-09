package test;
import knockout.ObservableArray;
import js.html.Node;
import knockout.Utils;
import knockout.Observable;
import knockout.Knockout;
import knockout.BindingContext;
class Test {

    public function new() {

    }

    public static function main() {
        var handler:BindingHandler = new MyHandler();
        Knockout.bindingHandlers["myHandler"] = handler;

        var h:BindingHandler = Knockout.bindingHandlers["myHandler"];

        Knockout.applyBindings({prop:observable});

    }

    public static function observable() {
        var observable:Observable<String> = "hello";

        observable << "good by";

        var value:String = observable;
        value = observable.peek();
        value = observable.getValue();
        observable.valueWillMutate();
        observable.valueHasMutated();

        observable.subscribe(function(call) {
            trace(call);
        });

        Observable.fn.newMethod = function() {
            return 100;
        };

        var observable2 = Knockout.observable("test");
    }

    public static function observableArray() {
        var array1 = new Array<Int>();

        var observableArray:ObservableArray<Int> = array1;
        observableArray.push(10);
        var pos = observableArray.indexOf(10);

        var inner:Array<Int> = observableArray;

        var array2 = new Array<Int>();
        Utils.arrayPushAll(observableArray, array2);

    }

    public static function dependentObservable() {
        var observable:Observable<String> = "hello";

        Knockout.computed(function() {
            return observable.getValue();
        });
    }

}

class MyHandler {

    public function new() {

    }

    public function init(element:js.html.Node, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void {

    }

    public function update(element:js.html.Node, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void {

    }

}