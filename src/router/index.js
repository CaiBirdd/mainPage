import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import Community from '../views/Community.vue'
import Price from '../views/Price.vue'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/community',
    name: 'Community',
    component: Community
  },
  {
    path: '/price',
    name: 'Price',
    component: Price
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router

