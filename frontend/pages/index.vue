<template>
  <div>
    <p>
      {{ users }}
    </p>
  </div>
</template>

<script lang="ts">
import { defineComponent, ref, useContext, useFetch } from '@nuxtjs/composition-api';

export default defineComponent({
  setup() {
    const { $http } = useContext();

    // data
    const users = ref({});

    useFetch(async () => {
      users.value = await $http.$get('/');
    });

    return {
      users,
    };
  },
});
</script>
