<template>
  <header class="container-fluid">

    <b-navbar toggleable="lg" variant="warning">
      <b-navbar-brand href="#">
        <img src="../../image/header_logo.png" alt="logo" width="32">
      </b-navbar-brand>

      <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

      <b-collapse id="nav-collapse" is-nav class="w-50" >
<!--        <b-navbar-nav class="text-left align-baseline">-->
<!--          <b-nav-item class="nav-item px-1" href="#">Home</b-nav-item>-->
<!--          <b-nav-item class="nav-item px-1" href="#">Пивная карта</b-nav-item>-->
<!--          <b-nav-item class="nav-item px-1" href="#">О нас</b-nav-item>-->
<!--          <b-nav-item class="nav-item px-1" href="#">Контакты</b-nav-item>-->
<!--        </b-navbar-nav>-->


        <div class="work-panel ml-auto mx-3 text-right">
          <b-icon-cart4 variant="dark" scale="1.25"></b-icon-cart4>
        </div>
        <b-navbar-nav class="ml-3">
          <b-nav-item-dropdown text="RU" class="mr-4 " right>
            <!--            <b-dropdown-item href="#">EN</b-dropdown-item>-->
            <!--            <b-dropdown-item href="#">ES</b-dropdown-item>-->
            <b-dropdown-item href="#">RU</b-dropdown-item>
            <!--            <b-dropdown-item href="#">FA</b-dropdown-item>-->
          </b-nav-item-dropdown>

          <b-button-group>
            <b-button variant="outline-dark">Sing In</b-button>
            <b-button variant="outline-dark">Sign Out</b-button>
          </b-button-group>

        </b-navbar-nav>
      </b-collapse>

    </b-navbar>

  </header>
</template>

<script>
export default {
  name: "header"
}
</script>

<style scoped>

header.container-fluid {
  padding: 0;
  font-size: 1.4rem;
}

.navbar-light .navbar-nav .nav-link {
  color: black !important;
}

.nav-item {
  border-radius: 0.25rem;
}

.nav-item:hover {
  background: rgba(0, 0, 0, 0.1);
}

.active {
  font-weight: bolder;
  text-decoration: underline;
  background: rgba(0, 0, 0, 0.1);
}

.work-panel {
  //font-size: 2rem;
}
</style>