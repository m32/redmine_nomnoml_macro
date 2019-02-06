function nomnomlinit() {
    var v, text;
    try {
        v = $(".wiki-page");
        var text = v.children()[2].innerText
    } catch {
        v = null;
        text = null;
    }
    if( v != null && text != null ) {
        // debugger;
        var canvas = document.createElement('canvas');
        var model = nomnoml.draw(canvas, text, 1.0)
        v.append(canvas);
    }
}
nomnomlinit();
