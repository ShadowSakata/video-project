<%@ tag pageEncoding="UTF-8" %>

<%@ attribute name="dir" required="true" type="java.lang.String"%>
<style>

    .video-player {
        width: 100%;
        max-width: 800px;
        height: auto;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #000;
    }
</style>
<div class="video-player">
    <video id="videoPlayer" controls style="height: 80vh; align-self: center"></video>
</div>
<script type="module">
    import {MediaPlayer} from 'https://cdn.dashjs.org/v5.0.0/modern/esm/dash.all.min.js';

    const player = MediaPlayer().create();
    player.initialize(document.querySelector('video'), '${dir}/video.mpd', true);
</script>
