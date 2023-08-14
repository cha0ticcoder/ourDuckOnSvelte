<script lang="ts">
    import { browser } from "$app/environment";
    import Egg from '$lib/index/egg.svelte'
    if (browser) {

    }

</script>

<svelte:head>
    <title>ourDuck - Home</title>
</svelte:head>

<body>
    <div class="nav">
        <a href="/login"><input type="button" class="button login" value="login"></a>
        <a href="/register"><input type="button" class="button register" value="sign up"></a>
    </div>
    <Egg></Egg>
</body>

<style>

    @font-face {
        font-family: Cozy;
        src: url("/fonts/Cozy-Regular.otf") format("opentype");
    }

    body {
        background: #043a73;
        font-family: Cozy, sans-serif;
        color: #ffed59;
        white-space: nowrap;
    }

    .nav {
        display:flex;
        justify-content: flex-end;
        margin-top: 1rem;

    }

    .button {

        border-radius: 0.5rem;

        height: 3rem;
        width: 6.5rem;

        font-size: 120%;
        font-family: Cozy, sans-serif;

        z-index: 1;

        text-decoration: none;
        vertical-align: middle;
    }

    .login {
        color: #ffed59;
        border: #f1c900 solid 0.15rem;
        background: transparent;
        transition: 0.4s ease;
        cursor: pointer;
        margin-right: 1rem;
    }

    .login:hover {
        transition: 0.3s ease-out;
        transform: scale(1.1);
    }

    .register {
        background: #f1c900;
        border: #f1c900 solid 0.15rem;
        transition: 0.4s ease;
        cursor: pointer;
    }

    .register:hover {
        transition: 0.3s ease-out;
        transform: scale(1.1);
    }

</style>
