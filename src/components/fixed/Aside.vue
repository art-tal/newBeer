<template>
<aside>
  <b-navbar-nav class="nav">
    <b-nav-item class="nav-item px-1" href="#">Home</b-nav-item>
    <b-nav-item class="nav-item px-1" href="#">Пивная карта</b-nav-item>
    <b-nav-item class="nav-item px-1" href="#">О нас</b-nav-item>
    <b-nav-item class="nav-item px-1" href="#">Контакты</b-nav-item>
  </b-navbar-nav>
</aside>
</template>

<script>
export default {
  name: "Aside"
}
</script>

<style scoped>
  aside {
    position: absolute;
    top: 80px;
    left: 0;
    width: 300px;
    height: 600px;
    padding: 175px 10px 20px;
    background-image: url(../../image/bg-aside.png);
    background-repeat: no-repeat;
    background-position: 0 0;
    -webkit-background-size: 100%;
    background-size: 100%;
  }

  a {
    font-size: 1.4rem;
    color: black;
  }
</style>