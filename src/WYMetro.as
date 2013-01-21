package {

import flash.display.Sprite;
import flash.events.Event;
import flash.geom.Rectangle;
import flash.media.StageWebView;
import flash.net.URLRequest;
import flash.net.URLRequestMethod;
import flash.net.URLVariables;

public class WYMetro extends Sprite
    {
        private var webView:StageWebView = new StageWebView();

        public function WYMetro()
        {
            var buttons:Buttons = new Buttons();

            buttons.addEventListener("showOakwoodBuses", function(e:Event) : void {
                showBuses("45010311");
            });

            buttons.addEventListener("showCornExBuses", function(e:Event) : void {
                showBuses("45012984");
            });

            buttons.addEventListener("reloadWebview", function(e:Event) : void {
                webView.reload();
            });
            addChild(buttons);
        }

        private function showBuses(stopNumber:String) : void
        {
            var url:String = "http://wypte.acislive.com/pip/stop.asp";
            var urlRequest:URLRequest = new URLRequest(url);
            urlRequest.method = URLRequestMethod.POST;
            var urlVariables:URLVariables = new URLVariables();
            urlVariables.naptan = stopNumber;
            urlVariables.textOnly = 1;
            urlVariables.pda = 1;

            urlRequest.data = urlVariables;
            StageWebViewExample(urlRequest.url + "?" + urlRequest.data);
        }

        public function StageWebViewExample(url:String) : void
        {
            webView.stage = this.stage;
            webView.viewPort = new Rectangle( 0, 100, stage.stageWidth, stage.stageHeight );
            webView.loadURL(url);
        }
    }
}