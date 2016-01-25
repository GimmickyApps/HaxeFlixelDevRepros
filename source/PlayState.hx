package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxAxes;
import flixel.util.FlxColor;
import flixel.util.FlxDestroyUtil;
import openfl.Lib;
using flixel.util.FlxSpriteUtil;
using layout.LayoutCreator;

class PlayState extends FlxState
{
	private var _btnPlay:FlxButton;
	private var _backgroundColour:FlxSprite;
	private var _logo:FlxSprite;
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		super.create();
		
		_backgroundColour = new FlxSprite();
		add(_backgroundColour);
		_backgroundColour.simpleScale();
		
		_logo = new CustomButton();
		add( _logo );
		
		_btnPlay = new FlxButton( 0, 0, "Play", clickPlay );
		add(_btnPlay);
		
		//onResize( Lib.current.stage.stageWidth, Lib.current.stage.stageHeight ); // do layout
	}
	
	private function clickPlay():Void
	{
		FlxG.switchState( new OtherState() );
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
		_btnPlay = FlxDestroyUtil.destroy( _btnPlay );
		_backgroundColour = FlxDestroyUtil.destroy( _backgroundColour );
		_logo = FlxDestroyUtil.destroy( _logo );
	}

	//override public function onResize(Width:Int, Height:Int):Void {
		//trace( Width, Height );
		//
		//_backgroundColour.makeGraphic( Width, Height, FlxColor.WHITE, true);
		//_backgroundColour.setPosition();
		//
		//_logo.setGraphicSize( Width );
		//_logo.updateHitbox();
		//_logo.screenCenter( FlxAxes.X );
		//
		//_btnPlay.screenCenter();
	//}
}