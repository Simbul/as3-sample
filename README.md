AS3 Sample
==========

This is a sample AS3 application, meant to showcase a basic project structure, Ant build tasks and Unit tests.

The project is based on a root class, `sample.SampleApp`, which will include all the other required classes and UI elements.

The project is entirely code-based, it relies on Flex SDK to be compiled into an SWF file and thus does not require Flash Professional.


Compiling
---------
    $ ant

The compiled file will be saved in `target/bin/SampleApp.swf`. It can be opened by the Flash player projector and by every browser with the Flash plugin installed.


Testing
-------
    $ ant test

To look at a JUnit-like output from the tests, open `target/report/html/index.html` in a browser.

Remember to set the FLEX_HOME environment variable to the folder containing Flex SDK on your machine. E.g.:

    $ export FLEX_HOME=/path/to/flex_sdk_4.1.0.16076_mpl/


Requirements
------------
* To run the compilation/testing tasks you'll need Ant installed on your system (should be already installed on Mac OSX).
* To compile you'll need the Open Source [Flex SDK](http://opensource.adobe.com/wiki/display/flexsdk/Flex+SDK).
Download the ZIP file, uncompress it and move the folder to a place of your choice (e.g. `~/Developer/`).
There's no need to run any installer.
* To run the tests you'll need the [Flash player projector content debugger](http://www.adobe.com/support/flashplayer/downloads.html).

Tests are based on [FlexUnit 4](http://www.flexunit.org/) and [Hamcrest AS3](https://github.com/drewbourne/hamcrest-as3). Both libraries are already included in the `libs/` folder.


UI Components
-------------
To keep the code for this sample project lean, some pre-packaged UI components were used (buttons, text input fields).
The standard Flash CS components (in the `fl.*` package) are not contained in the Flex SDK and it is not clear whether they can be freely unpacked and redistributed.
For this reason, the sample projects uses some open source components from the [MinimalComps project](https://github.com/minimalcomps/minimalcomps).
