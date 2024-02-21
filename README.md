Dimscreen Enhanced, for Plasma 5.

This is a fork of kwin4\_effect\_dimscreen, as shipped by Debian with Plasma 5.27.10.

It does two important things: It adds pinentry to the list of things which will
trigger a dimmed screen, and it is not configurable.

This aims to fix both issues, where the list of window classes which will
trigger the dimming effect is configurable, along with the dimming brightness
and saturation, and the pinentry series of programs is now part of the default
list of window classes which will trigger the dimming effect.

The original authors are Martin Flöser, and Vlad Zahorodnii.
