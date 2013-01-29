/**
 * Created with IntelliJ IDEA.
 * User: chris.ramsden
 * Date: 29/01/13
 * Time: 13:25
 * To change this template use File | Settings | File Templates.
 */
package
{
	import flash.display.JointStyle;
	import flash.display.Sprite;
	import flash.events.TouchEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;

	public class Button extends Sprite
	{
		public function Button(label:String)
		{
			var textFormat:TextFormat = new TextFormat();
			textFormat.size = 16;

			graphics.beginFill(0xAEDCA9);
			graphics.lineStyle(2, 0x232323, 1, true, "normal", null, JointStyle.ROUND);
			graphics.drawRect(0, 0, 160, 50);
			graphics.endFill();

			var buttonLabel:TextField = new TextField();
			buttonLabel.text = label;
			buttonLabel.setTextFormat(textFormat);

			buttonLabel.x = width/2 - buttonLabel.textWidth/2
			buttonLabel.y = height/2 - buttonLabel.textHeight/2;

			addChild(buttonLabel);

			addEventListener(TouchEvent.TOUCH_BEGIN, function(e:TouchEvent) : void {
				graphics.beginFill(0xFFFFFF);
				graphics.endFill();
			});

			addEventListener(TouchEvent.TOUCH_END, function(e:TouchEvent) : void {
			graphics.beginFill(0xAEDCA9);
			graphics.endFill();
		});

		}
	}
}
