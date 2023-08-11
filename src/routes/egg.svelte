<script>
    function consoleLog(){
        let egg = document.getElementById('egg')
    }
</script>

<div id="egg" class="egg" on:click={consoleLog}></div>

<style>

    .crack1 {
        background-color: red;
    }

    .egg {
        position: absolute;
        transform: translate(-50%, -50%);
        top: 50%;
        left: 50%;
        height: 10rem;
        aspect-ratio: 3 / 4;
        border-radius: 100% / 125% 125% 80% 80%;
        background-color: lightyellow;
    }

</style>