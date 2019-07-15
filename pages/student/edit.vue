<template>
  <div>
    <h1>Student Edit</h1>
    <v-text-field v-model="firstName" label="ชื่อ" />
    <v-text-field v-model="lastName" label="นามสกุล" />
    <v-btn @click="save">บันทึก</v-btn>
    <!-- <simplert/> -->

      <!-- <div class="links">
        <a href="" @click.prevent="go" class="button--green">Get Started!</a>
        <a href="https://github.com/anteriovieria/vue-swal" target="_blank" class="button--grey">GitHub</a>
      </div> -->
  </div>
</template>
<script>
// http://localhost:3000/#/student/edit?id=1
export default {
  data() {
    return {
      firstName: "",
      lastName: ""
    };
  },
  async created() {
    let res = await this.$http.get("/student/id/" + this.$route.query.id);
    this.firstName = res.data.student.fname || "";
    this.lastName = res.data.student.lname || "";
  },

  components: {},
  methods: {
    go() {
      this.$swal("Success!", "You are ready to start!", "success").then(() => {
        // window.location = "https://github.com/anteriovieira/vue-swal#vueswal";
        // router.back()
        this.$router.go(-1)
      });
    },

    async save() {
      let res = await this.$http.post("/student/save", {
        id: this.$route.query.id,
        fname: this.firstName,
        lname: this.lastName
      });
      if (!res.data.ok) {
        // TODO: แสดงข้อความ ว่าบันทึกไม่สำเร็จ
        console.log("OK");
        // let obj = {
        //     title: 'Alert Title',
        //     message: 'Alert Message',
        //     type: 'info'
        //   }
        //   this.$Simplert.open(obj)
        this.$swal("Error!", "Cannot save!", "error");
      } else {
        // TODO: แสดงข้อความ ว่าบันทึกสำเร็จ
        console.log("OK");
        // this.go();
        this.$swal("Success!", "You are ready to start11!", "success").then(() =>{
          this.$router.go(-1)
        })
        
        // .then(() => {
        //   // this.$router.back()
        // }
      }
    }
  }
};
</script>
