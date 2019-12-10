<template>
  <div class="sushi">
    <div id="sushiArea">
      <div v-bind:class="state" id="sushi">🍣</div>
    </div>
    <h1>Welcome to sushi-go-round App</h1>
    <p>{{message}}</p>
    <span id="nowState">state:</span>
    <button id="rotateControll" v-on:click="toggle">{{state}}</button>
  </div>
</template>

<script>
export default {
  name: "Sushi",
  data() {
    return {
      state: "spin",
      message:
        "Japanese Common People Supporter is kaiten-zushi. I expressed gratitude for that kaiten-zushi."
    };
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
    }
  }
};
</script>

<style>
[id*="sushi"] {
  font-family: "Segoe UI Emoji", "Segoe UI Symbol", "Apple Color Emoji",
    "Noto Color Emoji", "Noto Emoji", sans-serif;
  font-size: 500%;
  width: 60%;
  margin-left: auto;
  margin-right: auto;
  display: inline-block;
}

.spin {
  animation: spin 1.5s linear infinite;
}

.stop {
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

