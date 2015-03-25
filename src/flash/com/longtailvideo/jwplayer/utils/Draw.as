package com.longtailvideo.jwplayer.utils {
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.display.Sprite;
	
	public class Draw {
		
		
		/**
		 * Draw a rectangle on stage.
		 *
		 * @param tgt	Displayobject to add the rectangle to.
		 * @param col	Color of the rectangle.
		 * @param wid	Width of the rectangle.
		 * @param hei	Height of the rectangle.
		 * @param xps	X offset of the rectangle, defaults to 0.
		 * @param yps	Y offset of the rectangle, defaults to 0.
		 * @param alp	Alpha value of the rectangle, defaults to 0.
		 * @return		A reference to the newly drawn rectangle.
		 **/
		public static function rect(tgt:Sprite, col:String, wid:Number, hei:Number, xps:Number = 0, yps:Number = 0, alp:Number = 1):Sprite {
			var rct:Sprite = new Sprite();
			rct.x = xps;
			rct.y = yps;
			rct.graphics.beginFill(uint('0x' + col), alp);
			rct.graphics.drawRect(0, 0, wid, hei);
			tgt.addChild(rct);
			return rct;
		}
		
		/**
		 * Smooths the bitmap in a Loader object.  The try/catch will handle any security errors generated by the operation, resulting in a non-smoothed image.
		 * 
		 * @param tgt	Loader whose content bitmap to smooth.
		 */
		public static function smooth(tgt:Loader):void {
			try {
				(tgt.content as Bitmap).smoothing = true;
			} catch(e:Error) {
				Logger.log("Could not smooth image");
			}
		}
		
	}
}