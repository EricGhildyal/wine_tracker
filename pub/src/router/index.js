import Vue from 'vue'
import Router from 'vue-router'
import VueResource from 'vue-resource'
import Materials from 'vue-materials'

import Home from '@/components/Home'
import Batch from '@/components/Batch'
import Create from '@/components/Create'

Vue.use(Router)
Vue.use(VueResource)
Vue.use(Materials)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/create',
      name: 'Create',
      component: Create
    },
    {
      path: '/batch/:id',
      name: 'Batch',
      component: Batch
    }
  ]
})
