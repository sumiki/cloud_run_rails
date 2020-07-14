<template>
  <div class="animation-wrapper">
    <div>Vue Version: <span v-text="version"></span></div>
    <svg viewBox="0 0 120 120">

      <circle r="3" cx="60" cy="60" style="stroke: transparent; fill: red;">
        <animate attributeName="cx"
                 :calcMode="calc_mode"
                 values="10;110;10;"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 begin="0"
        />
      </circle>

      <circle r="3" cx="60" cy="60" style="stroke: transparent; fill: red;">
        <animate attributeName="cx"
                 :calcMode="calc_mode"
                 :values="position1_cx"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="1 * base_speed"
        />
        <animate attributeName="cy"
                 :calcMode="calc_mode"
                 :values="position1_cy"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="1 * base_speed"
        />
      </circle>

      <circle r="3" cx="60" cy="60" style="stroke: transparent; fill: red;">
        <animate attributeName="cx"
                 :calcMode="calc_mode"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :values="position2_cx"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="2 * base_speed"
        />
        <animate attributeName="cy"
                 :calcMode="calc_mode"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :values="position2_cy"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="2 * base_speed"
        />
      </circle>

      <circle r="3" cx="60" cy="60" style="stroke: transparent; fill: red;">
        <animate attributeName="cx"
                 :calcMode="calc_mode"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :values="position3_cx"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="3 * base_speed"
        />
        <animate attributeName="cy"
                 :calcMode="calc_mode"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :values="position3_cy"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="3 * base_speed"
        />
      </circle>

      <circle r="3" cx="60" cy="60" style="stroke: transparent; fill: red;">
        <animate attributeName="cy"
                 :calcMode="calc_mode"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 values="10;110;10;"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="4 * base_speed"
        />
      </circle>

      <circle r="3" cx="60" cy="60" style="stroke: transparent; fill: red;">
        <animate attributeName="cx"
                 :calcMode="calc_mode"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :values="position4_cx"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="5 * base_speed"
        />
        <animate attributeName="cy"
                 :calcMode="calc_mode"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :values="position4_cy"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="5 * base_speed"
        />
      </circle>

      <circle r="3" cx="60" cy="60" style="stroke: transparent; fill: red;">
        <animate attributeName="cx"
                 :calcMode="calc_mode"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :values="position5_cx"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="6 * base_speed"
        />
        <animate attributeName="cy"
                 :calcMode="calc_mode"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :values="position5_cy"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="6 * base_speed"
        />
      </circle>

      <circle r="3" cx="60" cy="60" style="stroke: transparent; fill: red;">
        <animate attributeName="cx"
                 :calcMode="calc_mode"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :values="position6_cx"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="7 * base_speed"
        />
        <animate attributeName="cy"
                 :calcMode="calc_mode"
                 :keySplines="key_splines"
                 :keyTimes="key_times"
                 :values="position6_cy"
                 :dur="loop_sec"
                 repeatCount="indefinite"
                 :begin="7 * base_speed"
        />
      </circle>

    </svg>
  </div>

</template>

<script>
  import Vue from 'vue'
  export default {
    name: 'app',
    data: function () {
      return {
        r: 50,
        center_x: 60,
        center_y: 60,
        base_speed: 0.25,
        loop_sec: '4s',
        calc_mode: 'spline',
        key_splines: '0.42 0.0 0.58 1.0;0.42 0.0 0.58 1.0',
        key_times: '0;0.5;1',
        version: Vue.version
      }
    },
    components: {
    },
    mounted: function () {
    },
    methods: {
    },
    computed: {
      position1_cx: function () {
        var bigining = this.center_x - Math.cos(22.5 * Math.PI / 180.0) * 50
        var middle = this.center_x + Math.cos(22.5 * Math.PI / 180.0) * 50
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
      position1_cy: function(){
        var bigining = this.center_y - Math.sin(22.5 * Math.PI / 180.0) * 50
        var middle = this.center_y + Math.sin(22.5 * Math.PI / 180.0) * 50
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
      position2_cx: function () {
        var bigining = this.center_x - (Math.cos(45 * Math.PI / 180.0) * 50)
        var middle = this.center_x + (Math.cos(45 * Math.PI / 180.0) * 50)
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
      position2_cy: function(){
        var bigining = this.center_y - (Math.sin(45 * Math.PI / 180.0) * 50)
        var middle = this.center_y + (Math.sin(45 * Math.PI / 180.0) * 50)
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
      position3_cx: function () {
        var bigining = this.center_x - (Math.cos(67.5 * Math.PI / 180.0) * 50)
        var middle = this.center_x + (Math.cos(67.5 * Math.PI / 180.0) * 50)
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
      position3_cy: function(){
        var bigining = this.center_y - (Math.sin(67.5 * Math.PI / 180.0) * 50)
        var middle = this.center_y + (Math.sin(67.5 * Math.PI / 180.0) * 50)
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
      position4_cx: function(){
        var bigining = this.center_x - (Math.cos(112.5 * Math.PI / 180.0) * 50)
        var middle = this.center_x + (Math.cos(112.5 * Math.PI / 180.0) * 50)
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
      position4_cy: function(){
        var bigining = this.center_y - (Math.sin(112.5 * Math.PI / 180.0) * 50)
        var middle = this.center_y + (Math.sin(112.5 * Math.PI / 180.0) * 50)
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
      position5_cx: function(){
        var bigining = this.center_x - (Math.cos(135.0 * Math.PI / 180.0) * 50)
        var middle = this.center_x + (Math.cos(135.0 * Math.PI / 180.0) * 50)
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
      position5_cy: function(){
        var bigining = this.center_y - (Math.sin(135.0 * Math.PI / 180.0) * 50)
        var middle = this.center_y + (Math.sin(135.0 * Math.PI / 180.0) * 50)
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
      position6_cx: function(){
        var bigining = this.center_x - (Math.cos(157.5 * Math.PI / 180.0) * 50)
        var middle = this.center_x + (Math.cos(157.5 * Math.PI / 180.0) * 50)
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
      position6_cy: function(){
        var bigining = this.center_y - (Math.sin(157.5 * Math.PI / 180.0) * 50)
        var middle = this.center_y + (Math.sin(157.5 * Math.PI / 180.0) * 50)
        return Math.round(bigining).toString() + ';' + Math.round(middle).toString() + ';' + Math.round(bigining).toString() + ';'
      },
    }
  }
</script>

<style scoped>
  div.animation-wrapper{
    text-align: center;
    width: 300px;
    margin-left: auto;
    margin-right: auto;
  }
  svg{
    margin-top: 0px;
    width: 180px;
  }
</style>
