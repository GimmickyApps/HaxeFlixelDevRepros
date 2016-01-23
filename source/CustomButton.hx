package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxSpriteUtil;
import openfl.Assets;

/**
 * Like a FlxTypedButton, but with custom drawing.  One callback for both (OnActivate).
 * 
 * @author Gimmicky Apps
 */
class CustomButton extends FlxTypedButton<FlxSprite>
{
	public function new()
	{
		super();
		var labelHeight:Int = 20;
		var fillColour:Int = FlxColor.BLUE;
		var word:String = "T";

		this.makeGraphic(labelHeight, labelHeight, FlxColor.BLACK, true); // show dark through alpha when not mousing over
		
		label = new FlxSprite().makeGraphic(labelHeight, labelHeight, fillColour, true); 

		var stampText:FlxText = new FlxText( 0, 0, 0, word, Std.int(labelHeight * 0.75) );
		trace( stampText.frameHeight, Std.int((labelHeight - stampText.frameHeight) / 2) + 2 ); // +2 to show it's not about negative Y values or anything...
		label.stamp( stampText, Std.int((labelHeight - stampText.fieldWidth) / 2), Std.int((labelHeight - stampText.frameHeight) / 2) + 2 );
		trace( stampText.frameHeight, Std.int((labelHeight - stampText.frameHeight) / 2) + 2 );
		stampText = null;
	}
}