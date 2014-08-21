package knockout;

import js.html.Document;
import knockout.BindingContext;

@:native("ko.templateEngine")
extern
class TemplateEngine {
    public var allowTemplateRewriting:Bool;
    
    public function renderTemplateSource(templateSource:Dynamic, bindingContext:BindingContext, option:Dynamic):Dynamic;
    
    public function createJavaScriptEvaluatorBlock(script:String):String;
    
    public function makeTemplateSource(template:Dynamic, ?templateDocument:Document):Dynamic;

    public function renderTemplate(template:Dynamic, bindingContext:BindingContext, options:Dynamic, ?templateDocument:Document):Dynamic;

    public function isTemplateRewritten(template:Dynamic, ?templateDocument:Document):Bool;

    public function rewriteTemplate(template:Dynamic, rewriterCallback:Dynamic -> Dynamic, ?templateDocument:Document):Void;
}