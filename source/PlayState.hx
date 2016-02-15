package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
    override public function create():Void
    {
		var stampText = new FlxText(0, 0, 0, "    [Other Text]", 24);
		stampText.font = "assets/fonts/graduate-regular-webfont.ttf";
		stampText.color = FlxColor.GREEN;
		stampText.text = stampText.frameWidth + ", " + stampText.frameHeight;

		var sprite = new FlxSprite().makeGraphic(300, 300, FlxColor.BLUE);
		sprite.stamp(stampText);
		add(sprite);
    }
}