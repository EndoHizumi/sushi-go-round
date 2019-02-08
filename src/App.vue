<template>
  <div id="app">
    <Sushi msg="Welcome to sushi-go-round App"/>
  </div>
</template>

<script>
import Sushi from "./components/sushi";
export default {
  name: "app",
  data() {
    return {
      state: "spin"
    };
  },
  components: {
    Sushi
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

</style>
