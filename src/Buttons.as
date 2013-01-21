package
{
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.text.TextField;
import flash.text.TextFormat;

public class Buttons extends Sprite
    {
        public function Buttons()
        {
            var textFormat:TextFormat = new TextFormat();
            textFormat.size = 16;

            var oakwoodBuses:TextField = new TextField();
            oakwoodBuses.text = "Oakwood Buses";
            oakwoodBuses.setTextFormat(textFormat);

            var cornExBuses:TextField = new TextField();
            cornExBuses.text = "Corn Ex Busses";
            cornExBuses.setTextFormat(textFormat);
            cornExBuses.y = 50;

            var reload:TextField = new TextField();
            reload.text = "Reload";
            reload.setTextFormat(textFormat);
            reload.x = 200;

            reload.addEventListener(MouseEvent.CLICK, function(e:MouseEvent) : void {
                dispatchEvent(new Event("reloadWebview"));
            });

            oakwoodBuses.addEventListener(MouseEvent.CLICK, function(e:MouseEvent) : void {
                dispatchEvent(new Event("showOakwoodBuses"));
            });

            cornExBuses.addEventListener(MouseEvent.CLICK, function(e:MouseEvent) : void {
                dispatchEvent(new Event("showCornExBuses"));
            });

            addChild(reload);
            addChild(oakwoodBuses);
            addChild(cornExBuses);
        }
    }
}
