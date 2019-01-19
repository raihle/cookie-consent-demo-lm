<consent-guard v-bind:required-consent-level="3" v-bind:consent-level="consentLevel">
  <youtube-embed video-id="${content.videoId}"></youtube-embed>
  <div slot="fallback">
    Give us consent :)
  </div>
</consent-guard>
