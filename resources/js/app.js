/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

// Font Awesome Icon
import { library } from '@fortawesome/fontawesome-svg-core';
import { faMugHot } from '@fortawesome/free-solid-svg-icons';
import { faGithub } from '@fortawesome/free-brands-svg-icons';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
library.add(faMugHot, faGithub);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

Vue.component('font-awesome-icon', FontAwesomeIcon);
Vue.component('navbar', require('./components/Navbar.vue').default);
Vue.component('articles', require('./components/Articles.vue').default);
Vue.component('cfooter', require('./components/Footer.vue').default);

const app = new Vue({
  el: '#app'
});