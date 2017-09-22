package entities;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;

/**
 * ...
 * @author call on me
 */
class Jugador extends FlxSprite 
{

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
	}
	
	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		velocity.set(0, 0);
		
		if (FlxG.keys.pressed.RIGHT) 
			velocity.x += 150;
		if (FlxG.keys.pressed.LEFT) 
			velocity.x -= 150;
		if (FlxG.keys.pressed.DOWN) 
			velocity.y += 150;
		if (FlxG.keys.pressed.UP) 
			velocity.y -= 150;
	}
	
}