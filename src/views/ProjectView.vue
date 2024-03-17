<template>
  <div class="about">
    <h1>This is an project page {{ $route.params.id }}</h1>
  </div>
</template>

<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
