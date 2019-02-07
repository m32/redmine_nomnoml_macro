function nomnomlapp(divid) {
    var text = divid.text();
    var pre = document.createElement('pre');
    pre.innerText = text;
    divid.text("");
    divid.append(pre);
    var canvas = document.createElement('canvas');
    var model = nomnoml.draw(canvas, text, 1.0)
    divid.append(canvas);
/*
    var zoomLevel = 0
    var offset = {x:0, y:0}
    var mouseDownPoint = false
    var vm = skanaar.vector
    var canvasElement = document.getElementById('canvas')

    function mouseDown(e){
        canvasPanner.style.width = '100%'
        mouseDownPoint = vm.diff({ x: e.pageX, y: e.pageY }, offset)
    }

    function mouseMove(e){
        if (mouseDownPoint){
            offset = vm.diff({ x: e.pageX, y: e.pageY }, mouseDownPoint)
            sourceChanged()
        }
    }

    function mouseUp(){
        mouseDownPoint = false
        canvasPanner.style.width = '33%'
    }

    function magnify(e){
        zoomLevel = Math.min(10, zoomLevel - (e.deltaY < 0 ? -1 : 1))
        sourceChanged()
    }
*/
}
