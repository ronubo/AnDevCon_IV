AnDevCon_IV
===========

Android-X86 device tree for the session I presented at AndevCon IV, San Francisco

Easy getting started:
0. Download the source code from http://android-x86.org
1. Clone the project
2. Put the project files under a directory called "nubo" - this is the vendor name.
Explanation: Device tree, as I said in the presentation is partitioned as  "device/<vendor>/<project>".
This is exactly the AOSP way.
3. . build/envsetup.sh && lunch desktop_generic-eng  && make -j8 iso_img 
You can of course replace the "-j" parameter with something that would work better for your machine.
4. Now that you understand how stuff works, and made sure the project builds, you can just rename every reference
to "nubo" to a <vendor> name of your own, and every reference to "desktop_generic" to a product name of your own.
5. Ethernet Patch - Search the Google Groups for a post from "Ron M" discussiong the Ethernet Patch for IMM76I_L.
With minor modifications this will also work for JB_4.1.1, and probably for 4.2 as well.
I may post the patch here later.


It is good practice to keep a .git repo per device, this is why I stored my git within the nubo directory.
Unfortunately when I uploaded to github it uploaded the project directly under AnDevCon_IV and I had a flight to catch,
so if it is really critical to anyone I will do the renaming later.
Ditto for the Ethernet Patch

Happy hacking,

-Ron