package knockout;
class Main {

// test
    public static function main() {
        var observable = Knockout.observable("hello");
        var value = observable.get();
    }
}