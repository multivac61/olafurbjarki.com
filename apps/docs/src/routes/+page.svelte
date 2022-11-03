<script lang="ts" src="https://player.vimeo.com/api/player.js">
</script>

<style>
    body {
  overflow: hidden;
}
.container {
     --videoRatio: calc(16 / 9); /* CHANGE THIS IF THE VIDEO CHANGES */
    background-color: yellow;
    padding: 0;
    margin: 0;
    width: 100vw;
    height: 100vh;
    overflow: hidden;
    position: relative;
    }
    /* to start with assume that the viewport is wide enough for the video taking up full width the height will be at least 100vh */
iframe {
    padding: 0;
    margin: 0;
    position: relative;
    --w: 100vw;
    --h: calc(var(--w) / var(--videoRatio));
    height: var(--h);
    width: var(--w);
    top: calc(50% - (var(--h) / 2));
    left: 0;
    width: var(--w);
    height: var(--h);
}
    /* Maximum aspect ratio */
@media (max-aspect-ratio: 16/9) {/*the viewport is too narrow for the full vider: none; margin: 0; padding: 0;  }
}
</style>


<div>
  <!-- <a
    href="https://open.spotify.com/artist/4WGn9awkSk0kpJyAuTjuwq?si=Eq7t9yPVSfiGjKG0LxzvqA"
    target="_blank"
    rel="noopener noreferrer"
  >
    <img
      src="https://upload.wikimedia.org/wikipedia/commons/c/ca/1x1.png"
      style="position: fixed;
          top: 0;
          left: 0;
          height: 100vh;
          width: 100%;
          background: black;
        "
      alt="Black Box"
    />
  </a> -->
  <!-- <iframe
    src="https://player.vimeo.com/video/766852849?background=1?h=66d05c3eb9&badge=0&autopause=0&autoplay=1&player_id=0&app_id=58479"
    frameborder="0"
    allow="autoplay; fullscreen; picture-in-picture"
    allowfullscreen
    data-ready="true"
    style="
          height: 100%;
          background: black;
        "
    title="hlustunarp_03"></iframe> -->
    <!-- <div class="row-container">
        <div class="first-row">
          <p>Some text</p>
          <p>And some more text</p>
        </div>
        <iframe src="https://player.vimeo.com/video/766852849?background=1?h=66d05c3eb9&badge=0&autopause=0&autoplay=1&player_id=0&app_id=58479" class="second-row"></iframe>
      </div> -->
</div>
