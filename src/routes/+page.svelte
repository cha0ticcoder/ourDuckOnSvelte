<script>
    import { clickOutside } from '$lib/clickOutside.js'
</script>

<svelte:body />


<div id="modalover" class="overlay" style="display: none">
    <div use:clickOutside on:click_outside={() => {
        let div = document.getElementById('modalover')
        div.setAttribute('style', 'display: none')
    }} class="loginmodal">

        <input type="text">

    </div>
</div>

<div class="nav">

    <p class="nono n2">Nono</p>

    <input on:click={() => {
        let div = document.getElementById('modalover')

        div.setAttribute('style', 'display: block')
    }} type="button" class="button register" value="sign up"
    >

    <input on:click={() => {
        let div = document.getElementById('modalover')

        div.setAttribute('style', 'display: block')
    }} type="button" class="button login" value="login"
    >

</div>

<style>

    @font-face {
        font-family: 'Justmore';
        src: url("/fonts/Justmore - Personal Use.ttf") format("truetype");
    }

    :root {
        --background-color: #4A55A2;
        --text: #FF8243;
        --buttoncolor: #F5F0BB;
    }

    :global(html, body) {
        background-color: var(--background-color);
        font-family: "Justmore", sans-serif;
        color: var(--text);
        z-index: 0;
    }

    .nav {
        transform: translate(-0.5rem, 0.5rem);
    }

    .nono {
        font-size: 3rem;
        margin: 0 auto;
        cursor: pointer;
        position: relative;
        float: left;
    }

    .n2 {
        margin-left: 1rem;
    }

    .button {
        width: 6.5rem;
        height: 3.5rem;
        z-index: 0;
        font-family: Justmore, sans-serif;
        font-size: 1.5rem;
        letter-spacing: 0.1rem;
        border-radius: 1rem;
        cursor: pointer;
        float: right;
    }

    .login {
        color: var(--buttoncolor);
        border: 0.3rem solid var(--buttoncolor);
        background-color: transparent;
        margin-right: 1rem;
    }

    .register {
        border: 0.3rem solid var(--buttoncolor);
        background-color: var(--buttoncolor);
        color: var(--background-color);
    }

    .login,
    .register {
        transition: 0.4s ease;
    }

    .login:hover,
    .register:hover {
        transform: scale(1.1);
        transition: 0.4s ease-out;
    }

    .overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100vw;
        height: 100vh;
        overflow: hidden;
        background-color: rgba(0, 0, 0, 0.6);
        box-shadow: 0 0 1px 5000px rgba(0, 0, 0, 0.8);
        z-index: 10;
    }

    .loginmodal {
        background: white;
        border-radius: 2rem;
        border: black solid 0.25rem;
        width: 40rem;
        height: 24rem;
        opacity: 2;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }
</style>