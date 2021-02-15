<template>
  <footer class="container-fluid bg-warning">
    <div class="row">
      <div class="col-4">
        <h4>Кружка пива</h4>
        <ul>
          <li><a href="/">Домашняя</a></li>
          <li><a href="/">Пивная карта</a></li>
          <li><a href="/">О нас</a></li>
          <li><a href="/">Контакты</a></li>
        </ul>
      </div>
      <div class="col-4">
        <h4>Контакты</h4>
        <p>г.Николаев, пр-т Героев Украины 20</p>
        <p>+38 0512 42-47-87</p>
        <p>+38 097 542-47-87</p>
        <p>+38 095 542-47-87</p>
        <p>+38 093 542-47-87</p>

        <a href="/">Обратная связь</a>
      </div>
      <div class="col-4">
        <h4>Подписка на рассылку</h4>
        <p>Полезные обзоры, статьи, новинки, акции и спецпредложения</p>
        <form action="/" method="post" name="mailing">
          <input type="email" placeholder="Ваш email">
          <button>
            <b-icon-arrow-right-circle-fil variant="dark" scale="1.25"></b-icon-arrow-right-circle-fil>
          </button>
        </form>
      </div>
    </div>
  </footer>
</template>

<script>
export default {
name: "footer"
}
</script>

<style scoped>



</style>