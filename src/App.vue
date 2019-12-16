<template>
  <div id="app">
    <div id="header">
      <h1>Welcome to sushi-go-round App</h1>
      <p>{{message}}</p>
      <span id="nowState">state:</span>
      <button id="rotateControll" v-on:click="toggle">{{state}}</button>
      <p>
        <span>controller:</span>
        <button id="add" v-on:click="addSushi">Add</button>
        <button id="reduce" v-on:click="reduceSushi">Reduce</button>
      </p>
    </div>
    <ul>
      <li v-for="foodItem in foods" v-bind:key="foodItem">
        <Sushi v-bind:state="state" v-bind:food="foodItem.food"/>
      </li>
    </ul>
  </div>
</template>

<script>
import Sushi from "./components/sushi";
export default {
  name: "app",
  data() {
    return {
      state: "spin",
      food: "🍣",
      message:
        "Japanese Common People Supporter is kaiten-zushi. I expressed gratitude for that kaiten-zushi.",
      foods: [{ state: "spin", food: "🍣" }],
    };
  },
  components: {
    Sushi
  },
  methods: {
    toggle() {
      if (this.state == "spin") {
        this.state = "stop";
        this.message = "oh? were you full of stomach?";
      } else {
        this.state = "spin";
        this.message =
          "Japanese Common People Supporter is kaiten-zushi. <br> I expressed gratitude for that kaiten-zushi.";
      }
    },
    addSushi() {
      this.foods.push({ state: this.state, food: "🍣" });
    },
    reduceSushi() {
      if (this.foods.length > 1) {
        this.foods.pop();
      }
    }
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

ul li {
  display: inline;
}
</style>
