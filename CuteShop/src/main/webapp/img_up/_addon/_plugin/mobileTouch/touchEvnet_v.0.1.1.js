/*
	@ 사용법
	$(this).tabClick({
		touchStart : function() { console.log('영역에 손을대면 실행'); }
		,touchMove : function() { console.log('영역에 손을 댄 상태에서 이동할때마다 실행'); }
		,touchEnd : function() { console.log('화면에서 손을 떼면실행'); }
	});
*/

;(function($){
	// 화면에 누르고나서 이동하지 않고 화면에서 떼면 complete메서드가 실행된다.
	$.fn.tabClick = function(options)
	{
		var
			$this = $(this),
			$defaults = {
				touchStart : function($this) {},
				touchMove : function($this) {},
				touchEnd : function($this) {}
			},
			$opts = $.extend($defaults, options),
			$move,
			is_touch_device = function() {
				return !!('ontouchstart' in window) // works on most browsers 
					|| !!('onmsgesturechange' in window && window.navigator.msMaxTouchPoints) // works on ie10
				;
			},
			_init = function()
			{
				//console.log(window.navigator.msMaxTouchPoints);
				//console.log(is_touch_device());
				if (is_touch_device()) {
					$this.bind('touchstart', onTouchStart);
					$this.bind('touchmove', onTouchMove);
					$this.bind('touchend', onTouchEnd);
					//console.log('touch');
				} else {
					$this.bind('click', function(){
						$opts.touchEnd($(this));
						return false;
					});
				}
			}
		;

		function onTouchStart()
		{
			$move = false;
			$opts.touchStart($(this));
		}
		
		function onTouchMove()
		{
			$move = true;
			$opts.touchMove($(this));
		}
		
		function onTouchEnd()
		{
			if (!$move) {
				$opts.touchEnd($(this));
				return false;
			}
		}

		_init();
	}
})(jQuery);