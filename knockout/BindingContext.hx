package knockout;

import js.Dom.HtmlDom;
class BindingContext {

    public var parent(get_parent, null):Null<Dynamic>;
    public var parents(get_parents, null):Null<Array<Dynamic>>;
    public var root(get_root, null):Dynamic;
    public var data(get_data, null):Null<Dynamic>;
    public var index(get_index, null):Null<Int>;
    public var parentContext(get_parentContext, null):Null<BindingContext>;
    public var context(get_context, null):BindingContext;
    public var element(get_element, null):HtmlDom;

    function get_parent():Null<Dynamic> {
        return untyped __js__("this.$parent");
    }

    private function get_parents():Null<Dynamic> {
        return untyped __js__("this.$parents");
    }

    private function get_root():Null<Dynamic> {
        return untyped __js__("this.$root");
    }

    private function get_data():Null<Dynamic> {
        return untyped __js__("this.$data");
    }

    private function get_index():Null<Dynamic> {
        return untyped __js__("this.$index");
    }

    private function get_parentContext():Null<Dynamic> {
        return untyped __js__("this.$parentContext");
    }

    private function get_context():Null<Dynamic> {
        return untyped __js__("this.$context");
    }

    private function get_element():Null<Dynamic> {
        return untyped __js__("this.$element");
    }
}