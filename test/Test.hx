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
        var observable:Observable<String> = "hello";
        
        observable << "good by";

        var value:String = observable;
        value = observable.peek();
        value = observable.getValue();
        observable.valueWillMutate();
        observable.valueHasMutated();

        observable.subscribe(function(call){
            trace(call);
        });
        
        Observable.fn.newMethod = function() {
            return 100;
        };
        
        var observable2 = Knockout.observable("test");

//        observable.set("new text");

        var array1 = new Array<Int>();
        var array2 = new Array<Int>();
        
        var observableArray:ObservableArray<Int> = array1;
        observableArray.push(10);
        var pos = observableArray.indexOf(10);
        
        var inner:Array<Int> = observableArray;

        Utils.arrayPushAll(observableArray, array2);

        Knockout.bindingHandlers.put("myHandler", new MyHandler());

        Knockout.applyBindings({prop:observable});

    }
}

class MyHandler {

    public function new() {

    }

    public function init(element:Node, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void {
        var parent = bindingContext.parent;
    }

    public function update(element:Node, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void {

    }

}