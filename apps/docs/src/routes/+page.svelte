<body>
  <div class="container">
    <iframe
      src="https://player.vimeo.com/video/766852849?background=1?h=66d05c3eb9&badge=0&autopause=0&autoplay=1&player_id=0&app_id=58479"
      allowfullscreen
      data-ready="true"
      title="Ólafur Bjarki video"></iframe>
  </div>
  <!-- Hack to be able to click anywhere on page and direct to my Spotify account -->
  <div class="container">
    <a
      href="https://open.spotify.com/artist/4WGn9awkSk0kpJyAuTjuwq?si=Eq7t9yPVSfiGjKG0LxzvqA"
      target="_blank"
      rel="noopener noreferrer"
    >
      <img
        src="https://upload.wikimedia.org/wikipedia/commons/c/ca/1x1.png"
        alt="Link to Spotify"
      />
    </a>
  </div>
</body>

<style>
  body {
    overflow: hidden;
    padding: 0;
    margin: 0;
  }
  .container {
    --videoRatio: calc(16 / 9);
    background-color: black;
    width: 100vw;
    height: 100vh;
    overflow: hidden;
    position: relative;
  }
  /* https://stackoverflow.com/a/67623758 */
  /* to start with assume that the viewport is wide enough for the video taking up full width the height will be at least 100vh */
  iframe {
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
  @media (max-aspect-ratio: 16 / 9) {
    /*the viewport is too narrow for the full video */
    iframe {
      --h: 100vh;
      --w: calc(var(--h) * var(--videoRatio));
      top: 0;
      left: calc(50% - (var(--w) / 2));
    }
  }
  img {
    position: fixed;
    top: 0;
    left: 0;
    height: 100vh;
    width: 100%;
  }
</style>
