package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
    override public function create():Void
    {
        var stampText = new FlxText(0, 0, 0, "[Text]", 24);
        //stampText.color = FlxColor.RED;

        var sprite = new FlxSprite().makeGraphic(300, 300, FlxColor.BLUE);
        //sprite.stamp(stampText);

        stampText = new FlxText(0, 0, 0, "    [Other Text]", 24);
		stampText.font = "assets/fonts/graduate-regular-webfont.ttf";
        stampText.color = FlxColor.GREEN;
		stampText.text = stampText.frameWidth + ", " + stampText.frameHeight;
        sprite.stamp(stampText);

        add(sprite);
    }
}

//package;
//
//import flixel.FlxG;
//import flixel.FlxSprite;
//import flixel.FlxState;
//import flixel.text.FlxText;
//import flixel.ui.FlxButton;
//import flixel.util.FlxAxes;
//import flixel.util.FlxColor;
//import flixel.util.FlxDestroyUtil;
//import openfl.Lib;
//using flixel.util.FlxSpriteUtil;
//
//class PlayState extends FlxState
//{
	//private var _btnPlay:FlxButton;
	//private var _backgroundColour:FlxSprite;
	//private var _logo:FlxSprite;
	///**
	 //* Function that is called up when to state is created to set it up. 
	 //*/
	//override public function create():Void
	//{
		//super.create();
		//
		//_backgroundColour = new FlxSprite();
		//add(_backgroundColour);
		//
		//_logo = new FlxSprite();
		//_logo.makeGraphic( 640, 100, FlxColor.GREEN, true );
		//FlxSpriteUtil.drawRect( _logo, 3, 3, 634, 94, FlxColor.RED );
		//add( _logo );
		//
		//_btnPlay = new FlxButton( 0, 0, "Play", clickPlay );
		//add(_btnPlay);
		//
		//onResize( Lib.current.stage.stageWidth, Lib.current.stage.stageHeight ); // do layout
	//}
	//
	//private function clickPlay():Void
	//{
		//FlxG.switchState( new PlayState() );
	//}
	//
	///**
	 //* Function that is called when this state is destroyed - you might want to 
	 //* consider setting all objects this state uses to null to help garbage collection.
	 //*/
	//override public function destroy():Void
	//{
		//super.destroy();
		//_btnPlay = FlxDestroyUtil.destroy( _btnPlay );
		//_backgroundColour = FlxDestroyUtil.destroy( _backgroundColour );
		//_logo = FlxDestroyUtil.destroy( _logo );
	//}
//
	//override public function onResize(Width:Int, Height:Int):Void {
		//FlxG.camera.x = 0;
		//FlxG.camera.y = 0;
		//FlxG.camera.scroll.x = 0;
		//FlxG.camera.scroll.y = 0;
		//forEach( function (spr:Dynamic) {
			//if (Reflect.isFunction( Reflect.field( spr, "updateHitbox" ) ))
				//spr.updateHitbox();
		//}, true );
		//var aspectRatio = Width / Height;
		//var minHeight = 100; // logo height
		//var minWidth = 640; // logo width
		//if (minHeight * aspectRatio < minWidth) { // i.e. if the window is skinnier than what we want to show (the red box with border)
			//// then make sure we show the full area width, and any extra height
			//FlxG.camera.zoom = Width / minWidth;
			//trace( "skinnier", Width, Height, aspectRatio, FlxG.camera.zoom );
		//} else { // window is wider
			//// then make sure we show the full area height, and any extra width
			//FlxG.camera.zoom = Height / minHeight;
			//trace( "wider", Width, Height, aspectRatio, FlxG.camera.zoom );
		//}
		//// correct for width = 640 or height = 100:
		////FlxG.camera.width = Std.int( Width / FlxG.camera.zoom );
		////FlxG.camera.height = Std.int( Height / FlxG.camera.zoom );
		////FlxG.camera.scroll.x = (Width - Width / FlxG.camera.zoom) / 2;
		////FlxG.camera.scroll.y = (Height - Height / FlxG.camera.zoom) / 2;
		//// correct for width = 1280 and height = 200:
		//FlxG.camera.width = Width;
		//FlxG.camera.height = Height;
		////FlxG.camera.scroll.x = - (Width - Width / FlxG.camera.zoom) / 2;
		////FlxG.camera.scroll.y = - (Height - Height / FlxG.camera.zoom) / 2;
		//trace( FlxG.camera.scroll, FlxG.camera.width, FlxG.camera.height );
////		FlxG.camera.update(1);
	//}
//}