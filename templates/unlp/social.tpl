{**
* templates/unlp/social.tpl*
* author gonetil
* Copyright (c) 2015 PREBI-SEDICI UNLP
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* Generates all social-network scripts and links for books
*}


{literal}
    <script>

        /** twitter share **/
        !function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
            if (!d.getElementById(id)) {
                js = d.createElement(s);
                js.id = id;
                js.src = p + '://platform.twitter.com/widgets.js';
                fjs.parentNode.insertBefore(js, fjs);
            }
        }(document, 'script', 'twitter-wjs');

        /** facebook share **/
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id))
                return;
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3&appId=1439620293025690";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));


        $(document).ready(function () {
            var share_fb = "#share_fb";
            var share_tw = "#share_tw";
            url = window.location.href;

            $(share_tw).append('<a href="https://twitter.com/share" class="twitter-share-button" data-via="sedici_unlp" data-lang="es"   data-count="none">Twittear</a>');
            $(share_fb).append('<div class="fb-like" data-layout="button_count" data-href="' + url + '" data-width="25" data-action="like" data-show-faces="false" data-share="true"></div>');
        });
    </script>
{/literal}