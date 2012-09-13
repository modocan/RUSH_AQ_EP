/**
 * Created with IntelliJ IDEA.
 * User: gonzalocedillo
 * Date: 12/09/12
 * Time: 11:49
 * To change this template use File | Settings | File Templates.
 */
package {
import com.demonsters.debugger.MonsterDebugger;

import flash.display.Sprite;
import flash.events.Event;


public class PintaAzul extends Sprite {

    [Embed (source="../libs_custom/puton_assets.swf", symbol="CuadroAzul")]
    private var cuadro:Class;

    private var _this:PintaAzul;




    public function PintaAzul() {

        super();

        _this = this;
        _this.addEventListener(Event.ADDED_TO_STAGE, init);

    }

    private function init(e:Event):void
    {
        _this.removeEventListener(Event.ADDED_TO_STAGE, init);

        var _cuadro:Sprite = new cuadro() as Sprite;
        addChild(_cuadro);
    }
}


}
