import Toybox.Graphics;
import Toybox.WatchUi;

class BgGetMessageView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout

        dc.setColor(Graphics.COLOR_TRANSPARENT, Graphics.COLOR_BLACK);
        dc.clear();
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);

        if(needBreath == 1){
            dc.drawText(dc.getWidth() / 2, 60,  Graphics.FONT_SMALL, "Take a Breath", Graphics.TEXT_JUSTIFY_CENTER);
        } else {
            dc.drawText(dc.getWidth() / 2, 60,  Graphics.FONT_SMALL, "Running..", Graphics.TEXT_JUSTIFY_CENTER);
        }
        // View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}
