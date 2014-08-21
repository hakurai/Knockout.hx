package test;
import knockout.DependentObservable;
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
        var observable:Observable<String> = Knockout.observable("hello");

        observable << "good by";

        var value:String = observable;
        value = observable.peek();
        value = observable.get();
        observable.valueWillMutate();
        observable.valueHasMutated();

        observable.subscribe(function(call) {
            trace(call);
        });

        Observable.fn.newMethod = function() {
            return 100;
        };

        var observable2:Observable<String> = Knockout.observable("test");
    }

    public static function observableArray() {
        var array1 = new Array<Float>();

        var observableArray:ObservableArray<Float> = Knockout.observableArray(array1);
        observableArray.push(10);
        var pos = observableArray.indexOf(10);

        var inner:Array<Float> = observableArray;

        var array2 = new Array<Float>();
        Utils.arrayPushAll(observableArray, array2);
        
        observableArray = Knockout.observableArray(1.0);

    }

    public static function dependentObservable() {
        var observable:Observable<String> = Knockout.observable("hello");

        var computed:DependentObservable<String> = Knockout.computed(function() {
            return observable.get();
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