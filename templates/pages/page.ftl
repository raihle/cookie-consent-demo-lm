<!DOCTYPE html>
<html xml:lang="${cmsfn.language()}" lang="${cmsfn.language()}">
  <head>
    [@cms.page /]
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${content.windowTitle!content.title!}</title>
    <meta name="description" content="${content.description!""}" />
    <meta name="keywords" content="${content.keywords!""}" />

    ${resfn.css(["/cookie-consent-demo-lm/.*css"])!}
    <style>
      body {
        margin: 0;
      }
    </style>
  </head>
  <body class="page ${cmsfn.language()}">
    <div id="app">
      [@cms.area name="main" /]
    </div>

    <script src="https://unpkg.com/vue@2.5.22/dist/vue.min.js"></script>
    ${resfn.js(["/cookie-consent-demo-lm/.*js"])!}
    <script>
      Vue.component('YoutubeEmbed', cookieConsentDemo.YoutubeEmbed);
      Vue.component('ConsentGuard', cookieConsentDemo.ConsentGuard);
      Vue.component('CookieConsent', cookieConsentDemo.CookieConsent);
      new Vue({
        comments: true,
        el: '#app',
        data: {
          consentLevel: 2,
          displayConsentControl: true
        },
        methods: {
          levelSelected: function(level) {
            this.consentLevel = level;
          },
          dismissCookieConsent: function() {
            this.displayConsentControl = false;
          }
        }
      });
    </script>
  </body>
</html>
