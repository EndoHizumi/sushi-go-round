<template>
  <div v-bind:class="state" id="sushi">{{food}}</div>
</template>

<script>
export default {
  name: "Sushi",
  props: {
    state: String,
    food: String
  }
};
</script>

<style>
[id="sushi"] {
  font-family: "Segoe UI Emoji", "Segoe UI Symbol", "Apple Color Emoji",
    "Noto Color Emoji", "Noto Emoji", sans-serif;
  font-size: 1500%;
  margin-left: auto;
  margin-right: auto;
  display: inline-block;
}

.spin {
  animation: spin 1.5s linear infinite;
}

.sushi .stop {
  filter: grayscale(100%);
}

@keyframes spin {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
</style>

