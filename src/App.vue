<template>
  <div id="app">
    <app-header></app-header>
    <div class="showNav btn btn-light position-absolute text-center" @click="showAside()">
      <b-icon-list variant="dark" scale="1.25"></b-icon-list>
    </div>
    <app-aside v-if="show" />

    <home/>
<!--    <router-view></router-view>-->

    <app-footer></app-footer>
  </div>
</template>

<script>
import AppHeader from './components/fixed/header';
import AppFooter from './components/fixed/footer';
import AppAside from './components/fixed/Aside';
import Home from './components/userComponent/Home';

export default {
  name: 'App',
  components: {
    AppHeader,
    AppFooter,
    AppAside,
    Home
  },

  data() {
    return {
      show: false,
    }
  },

  methods: {
    showAside() {
      this.show = !this.show;
    }
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

.showNav {
  position: absolute;
  top: 90px;
  left: 10px;
  background: #fff;
  /*width: 25px;*/
  /*height: 25px;*/
  z-index: 10;
}
</style>
