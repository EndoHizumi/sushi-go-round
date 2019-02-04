<template>
  <div id="app">
    <div id="sushi">🍣</div>
    <HelloWorld msg="Welcome to Your Sushi App"/>
    <button id="rotate controll">Pause</button>
  </div>
</template>

<script>

export default {
  name: 'app',
  // components: {
  //   HelloWorld
  // }
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
    font-size: 1500%;
    animation: spin 1.5s linear infinite;
 }

 @keyframes spin {
	0% {transform: rotate(0deg);}
	100% {transform: rotate(360deg);}
}
</style>
