Compass Placeholders
====================

@extendable %placeholders for common CSS3 code provided by Compass. For example use `@extend %hide-text;` instead of `@include hide-text;` this

  * obiously reduces the file size of the CSS
  * and speeds up rendering. Read [‘Different CSS techniques and their performance’](http://screwlewse.com/2010/08/different-css-techniques-and-their-performance/) for details.


Example: hover-link
-------------------

Traditional way via [Compass](http://compass-style.org/):

    @import "compass";

    a.first-link {
      @include hover-link;
    }

    a.second-link {
      @include hover-link;
    }

Result:

    a.first-link {
      text-decoration: none;
    }

    a.first-link:hover {
      text-decoration: underline;
    }

    a.second-link {
      text-decoration: none;
    }

    a.second-link:hover {
      text-decoration: underline;
    }

----

Optimized way via **Compass Placeholders:**

    @import "compass";
    @import "compass-placeholders";

    a.first-link {
      @extend %hover-link;
    }

    a.second-link {
      @extend %hover-link;
    }

Result (DRY – don’t repeat yourself):

    a.first-link,
    a.second-link {
      text-decoration: none;
    }

    a.first-link:hover,
    a.second-link:hover {
      text-decoration: underline;
    }




Compass CSS3 Placeholders
-------------------------

* **[Appearance](http://compass-style.org/reference/compass/css3/appearance/):**
    * `@extend %appearance-none;`
    * `@extend %appearance-normal;`
    * `@extend %appearance-icon;`
    * `@extend %appearance-window;`
    * `@extend %appearance-button;`
    * `@extend %appearance-menu;`
    * `@extend %appearance-field;`
    * [Customize list](#using-customized-placeholders) by setting `$appearance-placeholders: none, normal;`

* **[Background clip](http://compass-style.org/reference/compass/css3/background_clip/):**
    * `@extend %background-clip-padding-box;`
    * `@extend %background-clip-border-box;`
    * `@extend %background-clip-text;`
    * [Customize list](#using-customized-placeholders) by setting `$background-clip-placeholders: padding-box, border-box;`

* **[Background origin](http://compass-style.org/reference/compass/css3/background_origin/):**
    * `@extend %background-origin-padding-box;`
    * `@extend %background-origin-border-box;`
    * `@extend %background-origin-content-box;`

* **[Border radius](http://compass-style.org/reference/compass/css3/border_radius/):**
    * `@extend %no-border-radius;` (equals border-radius: 0)
    * [Create placeholders](#using-customized-placeholders) for `border-radius` by setting `$border-radius-placeholders: 0, 3px, 10px;` which results in:
        * `@extend %border-radius-0;`
        * `@extend %border-radius-3px;`
        * `@extend %border-radius-10px;`

    You should prefer to use custom names like `%small-border-radius` and `%big-border-radius` over those listed above.

* **[Box](http://compass-style.org/reference/compass/css3/box/):**
    * `@extend %display-box;`
    * `@extend %box-orient-horizontal;`
    * `@extend %box-orient-vertical;`
    * `@extend %box-orient-inline-axis;`
    * `@extend %box-orient-block-axis;`
    * `@extend %box-orient-inherit;`
    * `@extend %box-align-start;`
    * `@extend %box-align-end;`
    * `@extend %box-align-center;`
    * `@extend %box-align-baseline;`
    * `@extend %box-align-stretch;`
    * `@extend %box-direction-normal;`
    * `@extend %box-direction-reverse;`
    * `@extend %box-direction-inherit;`
    * `@extend %box-lines-single;`
    * `@extend %box-lines-multiple;`
    * `@extend %box-pack-start;`
    * `@extend %box-pack-end;`
    * `@extend %box-pack-center;`
    * `@extend %box-pack-justify;`
    * [Customize lists](#using-customized-placeholders) by setting `$box-orient-placeholders`, `$box-align-placeholders`, `$box-direction-placeholders`, `$box-lines-placeholders` and `$box-pack-placeholders`.
    * Create placeholders for `box-flex` by setting `$box-flex-placeholders: 0, 1;` which results in:
        * `@extend %box-flex-0;`
        * `@extend %box-flex-1;`
    * Create placeholders for `box-flex-group` by setting `$box-flex-group-placeholders: 1, 2;` which results in:
        * `@extend %box-flex-1;`
        * `@extend %box-flex-2;`
    * Create placeholders for `box-ordinal-group` by setting `$box-ordinal-group-placeholders: 1, 2;` which results in:
        * `@extend %box-flex-1;`
        * `@extend %box-flex-2;`

* **[Box shadow](http://compass-style.org/reference/compass/css3/box_shadow/):**
    * `@extend %no-box-shadow;`

* **[Box sizing](http://compass-style.org/reference/compass/css3/box_sizing/):**
    * `@extend %box-sizing-content-box;`
    * `@extend %box-sizing-border-box;`
    * [Customize list](#using-customized-placeholders) by setting `$box-sizing-placeholders: border-box;`

* **[Opacity](http://compass-style.org/reference/compass/css3/opacity/):**
    * `@extend %transparent;`
    * `@extend %opaque;`
    * [Create placeholders](#using-customized-placeholders) for `opacity` by setting `$opacity-placeholders: 0.25, 0.5;` which results in:
        * `@extend %opacity-25;`
        * `@extend %opacity-50;`

* **[Text shadow](http://compass-style.org/reference/compass/css3/text-shadow/):**
    * `@extend %no-text-shadow;`

* **[Transform](http://compass-style.org/reference/compass/css3/transform/):**
    * `@extend %transform-style-flat;`
    * `@extend %transform-style-preserve-3d;`
    * `@extend %backface-visibility-visible;`
    * `@extend %backface-visibility-hidden;`

* **[User interface](http://compass-style.org/reference/compass/css3/user_interface/):**
    * `@extend %user-select-none;`
    * `@extend %user-select-text;`
    * `@extend %user-select-toggle;`
    * `@extend %user-select-element;`
    * `@extend %user-select-elements;`
    * `@extend %user-select-all;`
    * `@extend %user-select-inherit;`
    * [Customize list](#using-customized-placeholders) by setting `$user-select-placeholders: none, text;`


Compass Typography Placeholders
-------------------------------

* **[Links](http://compass-style.org/reference/compass/typography/links/):**
    * `@extend %hover-link;`
    * `@extend %unstyled-link;`

* **[Lists](http://compass-style.org/reference/compass/typography/lists/):**
    * `@extend %no-bullet;`
    * `@extend %no-bullets;`

* **[Inline list](http://compass-style.org/reference/compass/typography/lists/inline_list/):**
    * `@extend %inline-list;`

* **[Text](http://compass-style.org/reference/compass/typography/text/):**
    * `@extend %ellipsis;`
    * `@extend %no-ellipsis;`
    * `@extend %force-wrap;`
    * `@extend %nowrap;`
    * `@extend %hide-text;`
    * `@extend %squish-text;`


Compass Utilities Placeholders
-------------------------------

* **[Clearfix](http://compass-style.org/reference/compass/utilities/general/clearfix/):**
    * `@extend %clearfix;`
    * `@extend %pie-clearfix;`


Non Compass-related Placeholders
-------------------------------

* **Resets:**
    * `@extend %no-background;` (equals background: transparent)
    * `@extend %no-border;` (equals border: 0)
    * `@extend %no-margin;` (equals margin: 0)
    * `@extend %no-padding;` (equals padding: 0)

* **Display:**
    * `@extend %display-none;`
    * `@extend %display-block;`
    * `@extend %display-inline-block;`
    * `@extend %display-table;`
    * `@extend %display-table-cell;`
    * `@extend %display-table-row;`
    * [Customize list](#using-customized-placeholders) by setting `$display-placeholders: none, block;`

* **Float:**
    * `@extend %float-none;`
    * `@extend %float-left;`
    * `@extend %float-right;`

* **Typography:**
    * `@extend %font-weight-bold;`
    * `@extend %font-weight-normal;`
    * `@extend %font-style-italic;`
    * `@extend %font-style-normal;`
    * `@extend %text-decoration-underline;`
    * `@extend %text-decoration-none;`
    * `@extend %text-align-left;`
    * `@extend %text-align-center;`
    * `@extend %text-align-right;`
    * `@extend %text-align-justify;`

* **User interface:**
    * `@extend %cursor-default;`
    * `@extend %cursor-pointer;`


Using Customized Placeholders
-----------------------------

Some placeholders/value combinations are optionional. For example the
`appearance` will have placeholders for `none` and `normal` by default:

    @import "compass";
    @import "compass-placeholders";

    .my-class {
      @extend %appearance-none;     // OK
      @extend %appearance-button;   // Error
      @extend %border-radius-none;  // OK
      @extend %border-radius-3px;   // Error
    }

You need to set the customized list before you call `@import "compass-placeholders";`:

    $appearance-placeholders: none, normal, button;
    $border-radius-placeholders: none, 3px;
    @import "compass";
    @import "compass-placeholders";

    .my-class {
      @extend %appearance-none;     // OK
      @extend %appearance-button;   // OK
      @extend %border-radius-none;  // OK
      @extend %border-radius-3px;   // OK
    }


Setup
-----

First install the gems and create a project:

    gem install compass
    gem install compass-placeholders --pre
    compass create my-project

Second add to your my-project/**compass.rb**:

    require "compass-placeholders"

Third import _Compass-Placeholders_ after _Compass_ in your Sass/SCSS
file:

    @import "compass";
    @import "compass-placeholders";

    // now you can use `@extend %hover-link` etc.


Copyright
---------

Copyright (c) 2012 – 2013 [Nico Hagenburger](http://www.hagenburger.net).
See blob/master/MIT-LICENSE.md for details.
[Follow me](http://twitter.com/hagenburger) on twitter.
