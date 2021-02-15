<template>
  <div id="app">
    <app-header></app-header>

    <app-footer></app-footer>
  </div>
</template>

<script>
import AppHeader from './components/fixed/header';
import AppFooter from './components/fixed/footer';

export default {
  name: 'App',
  components: {
    AppHeader,
    AppFooter
  }
}
</script>

<style>
#app {
  margin: 0;
  padding: 0;
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #000000;
  font-size: 10px;
}
</style>
