<script lang="ts">
    import { currentUser, pb } from "./pocketbase";

    let username: string;
    let password: string;
    let email: string;

    async function login() {
        await pb.collection('users').authWithPassword(username, password)
    }

    async function register() {
        try {
            const data = {
                username,
                password,
                passwordConfirm: password,
                email
            }
            const createdUser = await pb.collection('users').create(data);
            await login();
        } catch (err) {
            console.error(err)
        }
    }

    function signOut() {
        pb.authStore.clear()
    }
</script>

{#if $currentUser}
    <p>Signed in as {$currentUser.username}</p>
    <button on:click={signOut}>sign out</button>
{:else}
    <form on:submit|preventDefault>
        <input
        placeholder="Username"
        type="text"
        bind:value={username}
        >

        <input
        placeholder="Password"
        type="password"
        bind:value={password}
        >

        <input
        placeholder="email"
        type="email"
        bind:value={email}
        >
        <button on:click={register}>Sign Up</button>
        <button on:click={login}>Login</button>
    </form>
{/if}