<script lang="ts">

    let eggStatus: number = 0;

    function egg(){
        console.log('egg clicked', eggStatus)
        eggStatus++
    }

</script>

<div id="egg" class="egg" on:click={egg}></div>

<style>

    .egg {
        position: absolute;
        transform: translate(-50%, -50%);
        top: 50%;
        left: 50%;
        height: 10rem;
        aspect-ratio: 3 / 4;
        border-radius: 100% / 125% 125% 80% 80%;
        background-color: lightyellow;
        overflow: hidden;
        z-index: 0;
    }

</style>