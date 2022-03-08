<template>
  <div class="container">
    <p>ボタンをホバーすると透過されます</p>
    <button class="button">ボタン</button>
  </div>
</template>

<style lang="scss" scoped>
.container {
  margin: 24px;
}

.button {
  padding: 8px 16px;
  color: #fff;
  background-color: red;
  border: none;

  &:hover {
    opacity: 0.7;
    cursor: pointer;
  }
}
</style>