<script setup>
import WelcomeItem from './WelcomeItem.vue'
import DocumentationIcon from './icons/IconDocumentation.vue'
</script>

<template>
  <WelcomeItem v-for="x in 10">
    <template #icon>
      <DocumentationIcon />
    </template>
    <template #heading>Item {{ x }}</template>
  </WelcomeItem>
</template>
