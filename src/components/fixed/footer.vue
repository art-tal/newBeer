<template>
  <footer class="container-fluid bg-warning">
    <div class="container row justify-content-between">
      <div class="footer__nav col-3 text-left">
        <h4>Кружка пива</h4>
        <ul>
          <li><a href="/">Домашняя</a></li>
          <li><a href="/">Пивная карта</a></li>
          <li><a href="/">О нас</a></li>
          <li><a href="/">Контакты</a></li>
        </ul>
      </div>
      <div class="contacts col-4 text-left">
        <h4>Контакты</h4>
          <p>г.Николаев, пр-т Героев Украины 20</p>
          <p>+38 0512 42-47-87</p>
          <p>+38 097 542-47-87</p>
          <p>+38 095 542-47-87</p>
          <p>+38 093 542-47-87</p>
        <a @click="showFeedBack()" class="font-weight-bold">Обратная связь</a>

        <form v-if="show" action="/" method="post" name="feedback" class="feedback mt-3 p-4 bg-light position-relative">
          <div class="feedback__close btn-light position-absolute" @click="show = false">
            <b-icon-x-circle variant="dark" scale="2"></b-icon-x-circle>
          </div>
          <h5 class="text-secondary">Обратная связь</h5>
          <input type="text" name="name" placeholder="Ваше имя" class="form-control mb-3">
          <input type="email" name="email" placeholder="Ваш E-mail" class="form-control mb-3">
          <textarea name="msg" cols="30" rows="10" class="form-control mb-3">Сообщение</textarea>
          <button type="submit" class="btn btn-outline-secondary w-100">Отправить сообщение</button>
        </form>
      </div>
      <div class="connection col-3 text-left">
        <h4>Подписка на рассылку</h4>
        <p>Полезные обзоры, статьи, новинки, акции и спецпредложения</p>
        <form action="/" method="post" name="mailing">
          <div class="input-group mb-3">
            <input type="email" placeholder="Ваш email" class="form-control"  aria-label="email" aria-describedby="basic-addon1">
            <div class="input-group-append">
              <button class="btn btn-outline-warning input-group-text" id="basic-addon1">
                <b-icon-arrow-right-circle variant="dark" scale="1.55"></b-icon-arrow-right-circle>
              </button>
            </div>
          </div>

        </form>
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  name: "footer",
  data() {
    return {
      show: false,
    }
  },

  methods: {
    showFeedBack() {
      this.show = !this.show;
    }
  }
}
</script>

<style scoped>

h4 {
  color: #f0f0f0;
  font-weight: bolder;
}

a, p {
  font-size: 1.2rem;
  color: #e9e9e9;
  margin-bottom: 5px;
}

ul {
  list-style-type: none;
  padding: 0;
}

footer.container-fluid .container {
  margin: 0 auto;
  padding: 30px 0;
}

.footer__nav {

}

.feedback {
  /*border: 2px solid rgba(217, 181, 19, 0.7);*/
  border-radius: 10px;
  box-shadow: 0 0 5px 3px #fff;
}

.feedback__close {
  position: absolute;
  top: 15px;
  right: 15px;
}


</style>