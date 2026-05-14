<template>
  <div id="app" class="">
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: "app",
};
</script>

<style lang="scss">
*{
  padding: 0;
  margin:0;
  box-sizing: border-box;
}
html,body{
  width: 100%;
  height: 100%;
}
#app{
  height:100%;
}
body {
  padding: 0;
  margin: 0;
  
}

body {
  color: #111;
  font-weight: 500;
}

.el-menu-item,
.el-breadcrumb__inner,
.el-tabs__item,
.el-form-item__label,
.el-table,
.el-input__inner {
color: #111 !important;
font-weight: 600 !important;
}
</style>
