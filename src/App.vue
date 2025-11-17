<script setup>
</script>

<template>
  <div class="app">
    <!-- 路由视图：使用具名插槽获取当前路由组件 -->
    <router-view v-slot="{ Component }">
      <!-- 路由过渡动画：淡入淡出效果，out-in模式确保旧页面先消失再显示新页面 -->
      <transition name="fade" mode="out-in">
        <!-- 动态组件：根据路由变化渲染对应的页面组件 -->
        <component :is="Component" />
      </transition>
    </router-view>
  </div>
</template>

<style lang="scss" scoped>
.app {
  width: 100%;
}
</style>

<style lang="scss">
// 路由过渡动画 - 淡入淡出效果 必须是全局
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}

.fade-enter-from {
  opacity: 0;
}

.fade-leave-to {
  opacity: 0;
}

.fade-enter-to,
.fade-leave-from {
  opacity: 1;
}
</style>

