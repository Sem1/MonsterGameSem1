
/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MenuScene : SEScene
{
	SESprite background;
	SESprite playnow;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width(), h = get_scene_height();
		rsc.prepare_image("background", "background", w, h);
		rsc.prepare_image("playnow", "playnow", w*0.25, h*0.10);
		background = add_sprite_for_image(SEImage.for_resource("background"));
		playnow = add_sprite_for_image(SEImage.for_resource("playnow"));
		background.move(0,0);
		playnow.move(550,700);
	}
	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if(pi.is_inside(550,700,get_scene_width()*0.5, get_scene_height()*0.5)) {
			switch_scene(new MainScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}
