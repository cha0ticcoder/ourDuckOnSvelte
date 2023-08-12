<script lang="ts">

    let eggStatus: number = 0;

    function egg(){
        let egg:HTMLElement = document.getElementById('egg')
        let line1: HTMLElement = document.createElement("div")
        let line2: HTMLElement = document.createElement("div")
        let line3: HTMLElement = document.createElement("div")
        let line4: HTMLElement = document.createElement("div")
        let line5: HTMLElement = document.createElement("div")
        const baseStyle = 'width: 0.1rem; height: 2rem; background-color: grey; z-index: 1;'

        if(eggStatus === 0) {
            // First Line

            let lineStyle = baseStyle + 'transform: rotate(-100deg) translate(-3.4rem, -0.1rem);'
            line1.setAttribute('style', lineStyle)
            egg.appendChild(line1)

            // Second Line

            let lineStyle2 = baseStyle + 'transform: rotate(210deg) translate(-3.5rem, 4.3rem)'
            line2.setAttribute('style', lineStyle2)
            egg.appendChild(line2)


            // Third Line

            eggStatus++
        } else if (eggStatus === 1) {
            let lineStyle = baseStyle + 'transform: rotate(-100deg) translate(-3.4rem, -0.1rem);'
            line1.setAttribute('style', lineStyle)
            egg.appendChild(line1)
            eggStatus++
        }
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