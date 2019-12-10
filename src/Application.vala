public class Myapp : Gtk.Application {

    public Myapp () {
        Object (
            application_id: "com.github.ujnana.gtk-hello",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {

        var maigit commit -m "Create initial structure. Create window with button."n_window = new Gtk.ApplicationWindow (this);
        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello Word ";

        var button_hello = new Gtk.Button.with_label ("Click me!");
        button_hello.margin = 30;
        button_hello.clicked.connect (() => {
            button_hello.label = "Hello World!";
            button_hello.sensitive = false;
        });


        main_window.add (button_hello);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        var app = new Myapp ();
        return app.run (args);
    }
}

