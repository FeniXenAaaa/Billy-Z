package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	/**
	 * ...
	 * @author FeniXenAaaa
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			stage.addEventListener(Event.ENTER_FRAME, bla);
			var timer:Timer = new Timer(1, 0);
			timer.start();
			timer.addEventListener(TimerEvent.TIMER, blaBLA);
		}
		
		private function blaBLA(e:TimerEvent):void 
		{
			trace('TIMER')
		}
		
		private function bla(e:Event):void 
		{
			trace('ENTER FRAME')
		}
		
	}
	
}