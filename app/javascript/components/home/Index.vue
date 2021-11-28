<template>
  <div>
    <HeaderView
      v-bind:title="initialData.title"
      v-bind:description="initialData.description"
    />
    <Contents v-bind:contens="initialData.contents" />
  </div>
</template>

<script>
import Header from "../Header.vue";
import Contents from "./Contents.vue";

export default {
  components: {
    Header,
    Contents,
  },
  props: {
    initialData: {
      type: Object,
      default: () => {},
    },
  },
};
</script>

<style scoped></style>
