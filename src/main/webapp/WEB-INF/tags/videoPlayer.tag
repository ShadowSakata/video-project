<%@ tag pageEncoding="UTF-8" %>

<video id="videoPlayer" controls style="height: 80vh; align-self: center"></video>
<script type="module">
    import {MediaPlayer} from 'https://cdn.dashjs.org/v5.0.0/modern/esm/dash.all.min.js';

    const player = MediaPlayer().create();
    player.initialize(document.querySelector('video'), 'car-mpd/car.mpd', true);
</script>
