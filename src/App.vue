<template>
  <div id="app">
    <div v-bind:class="state" id="sushi">🍣</div>
    <HelloWorld msg="Welcome to Your sushi-go-round App"/>
    <button id="rotateControll" v-on:click="toggle">Pause</button>
  </div>
</template>

<script>
import HelloWorld from "./components/HelloWorld"
export default {
  name: 'app',
  data(){
    return{
      state:"spin"
    }
  },
  components: {
    HelloWorld
  },
  methods:{
    toggle(){
      if (this.state=="spin") {
        this.state="stop"       
      } else {
        this.state="spin"
      }
    }
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
#sushi {
    font-family: "Segoe UI Emoji",
                 "Segoe UI Symbol",
                 "Apple Color Emoji",
                 "Noto Color Emoji",
                 "Noto Emoji",
                 sans-serif;
    font-size: 1000%;
 }

.spin{
    animation: spin 1.5s linear infinite;
}

 @keyframes spin {
	0% {transform: rotate(0deg);}
	100% {transform: rotate(360deg);}
}
</style>
