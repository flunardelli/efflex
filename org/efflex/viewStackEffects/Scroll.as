/*
Copyright (c) 2008 Tink Ltd - http://www.tink.ws

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation 
the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and
to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions
of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO 
THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

package org.efflex.viewStackEffects
{
	
	import mx.core.UIComponent;
	import mx.effects.IEffectInstance;
	
	import org.efflex.viewStackEffects.effectClasses.ScrollInstance;
	


	public class Scroll extends ViewStackEffect
	{
		
		private static var AFFECTED_PROPERTIES	: Array = [ "x", "y" ];
		
		public static const HORIZONTAL			: String = "horizontal";
		public static const VERTICAL			: String = "vertical"; 
		
		[Inspectable(category="General", enumeration="horizontal,vertical", defaultValue="horizontal")]
		public var direction 					: String = Scroll.HORIZONTAL;
		
		[Inspectable(category="General", type="Boolean", enumeration="true,false", defaultValue="true")]
		public var scaleDurationByChange		: Boolean = true;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
	
		/**
		 *  Constructor.
		 *
		 *  @param target The Object to animate with this effect.
		 */
		public function Scroll( target:UIComponent = null )
		{
			super( target );

			instanceClass = ScrollInstance;
		}
	
	
		override public function getAffectedProperties():Array
		{
			return AFFECTED_PROPERTIES;
		}
	
	
		override protected function initInstance( instance:IEffectInstance ):void
		{
			super.initInstance( instance );
	
			var effectInstance:ScrollInstance = ScrollInstance( instance );
			effectInstance.direction = direction;
			effectInstance.scaleDurationByChange = scaleDurationByChange;
		}
	}
}