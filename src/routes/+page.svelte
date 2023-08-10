<body>
    <div class="nav">
        <input class="button register" type="button" value="signup" />
        <input class="button login" type="button" value="login"/>
    </div>
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
    }

    .button {

        border-radius: 0.5rem;

        height: 3rem;
        width: 6.5rem;

        font-size: 120%;
        font-family: Cozy, sans-serif;
    }

    .login {
        color: #ffed59;
        border: #f1c900 solid 0.15rem;
        background: transparent;
        transition: 0.4s ease;
    }

    .login:hover {
        transition: 0.4s ease-out;
        transform: scale(1.1);
    }

    .register {
        background: #f1c900;
        border: #f1c900 solid 0.15rem;
        transition: 0.4s ease;
        margin-right: 0.6rem;
    }

    .register:hover {
        transition: 0.4s ease-out;
        transform: scale(1.1);
    }
</style>
