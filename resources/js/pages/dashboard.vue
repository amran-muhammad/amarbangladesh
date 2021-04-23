<template>
  <div>
    <div class="row">
      <div class="col-12 col-md-12 col-lg-12">
        <div class="_1card _mar_b15 _b_radious7 _5box_shadow _0border">
          <div class="_1card_header _padd20">
            <!-- <p
              v-if="authUser.userType == 'journalist'"
              class="_1card_header_title"
            >
              Journalist Area
            </p>
            <p v-if="authUser.userType == 'admin'" class="_1card_header_title">
              Owner Area
            </p> -->
            <template v-if="loaderCycle">
              <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                  <p class="_1card_header_title">Coming soon</p>
                </div>
                <div class="col-md-4"></div>
              </div>
            </template>

            <div class=""></div>
          </div>
          <div class="_table_responsive">
            <template v-if="!loaderCycle">
              <!-- <table class="_table">
              <thead v-if="!nodata" class="bg-200 text-900">
                <tr>
                  <th>ID</th>
                  <th>User</th>
                  <th>Game Title</th>
                  <th>Score</th>
                </tr>
              </thead>
                <template v-if="nodata">
              <div class="row">
                  <div class="col-md-4"></div>
                  <div class="col-md-4"> <p class="_1card_header_title">No Data Found</p></div>
                  <div class="col-md-4"></div>
              </div>
            </template>
                <tbody>
                  <tr v-for="(item,index) in dashboardlist" :key="index">
                    <td>
                      {{item.id}}
                    </td>
                    <td>
                     <span v-if="item.user">{{item.user.name}}</span>
                    </td>
                    <td>
                      <span v-if="item.game">{{item.game.title}}</span>
                    </td>
                    <td>
                      {{item.score}}
                    </td>
                  </tr>
              </tbody>
              </table> -->
              <!-- Pagination -->
              <div class="pagin">
                <Page
                  :current="1"
                  :total="pagination.total"
                  @on-change="pagination_result"
                  :page-size="10"
                />
              </div>
              <!-- Pagination -->
            </template>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // dashboardlist:[] ,
      // nodata: false,
      pagination: {},
      page: 1,
      loaderCycle: true,
    };
  },
  methods: {
    async pagination_result(e) {
      // this.page = e
      // const res = await this.callApi('get',`dashboard?page=${this.page}`)
      // if(res.status == 200){
      //     this.dashboardlist = res.data.dashboard.data
      //     this.pagination = res.data.dashboard
      // }
    },
  },

  //   async created() {
  //     const res1 = await this.callApi('get','dashboard')
  //     if(res1.status!=200) this.loaderCycle = true
  //     if(res1.status==200){
  //         this.loaderCycle = false
  //         this.dashboardlist = res1.data.dashboard.data
  //         this.pagination = res1.data.dashboard
  //         if(this.dashboardlist.length == 0) this.nodata = true
  //     }
  //   },
};
</script>





