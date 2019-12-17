<template>
  <div id="app">
    <div id="header">
      <h1>Welcome to sushi-go-round App</h1>
      <p>{{message}}</p>
    </div>
    <div id="controller">
      <span id="nowState">state:</span>
      <button id="rotateControll" v-on:click="toggle">{{state}}</button>
      <p>
        <span>Sushi:{{index}} yen</span><br>
        <button id="add" v-on:click="addSushi">+</button>
        <button id="reduce" v-on:click="reduceSushi">-</button>
      </p>
    </div>
    <ul>
      <li v-for="foodItem in foods" v-bind:key="foodItem.id" v-on:click="onchange(foodItem.id)">
        <Sushi v-bind:state="['foodItem.state','foodItem.name']" v-bind:food="foodItem.food"/>
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
      message:
        "Japanese Common People Supporter is kaiten-zushi. I expressed gratitude for that kaiten-zushi.",
      foods: [{id:0, state: "spin", name:"sushi", food: "🍣" }],
      index: 100
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
          "Japanese Common People Supporter is kaiten-zushi. I expressed gratitude for that kaiten-zushi.";
      }
    },
    onchange(id) {
      this.$set(this.foods, id, {id:id, state: "stop", name:"tea", food: "🍵" });
    },
    addSushi() {
      var foodNum = this.foods.length
      this.foods.push({id: foodNum, state: this.state, name:"sushi", food: "🍣" });
      this.index = foodNum * 100
    },
    reduceSushi() {
      if (this.foods.length > 1) {
        this.foods.pop();
        this.index = this.foods.length * 100
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
