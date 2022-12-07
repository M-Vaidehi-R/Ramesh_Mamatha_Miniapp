export default{
    name: 'TheLightBox',

    props: ['mini'],

    template:
    `
    <section class="lightbox">
    <!--the data array should go here, if it doesn't, I honestly dont know hwta swrong with this-->
    <!--<pre>{{ mini }}</pre>-->

    <img @click="closeLB" src="Images/closeIcon.svg" class=lbclose>
    <article>
    <img id="lbImg" :src='"Images/" + mini.mini_img' alt="car image">
    <h2>{{ mini.mini_name }}</h2>
    <h3>{{ mini.mini_price }}</h3>
    <h3>{{ mini.mini_engine }}</h3>
    <h3>{{ mini.mini_speedometer }}</h3>
    <h3>{{ mini.mini_maxspeed }}</h3>
    <h3>{{ mini.mini_tankcapacity }}</h3>
    <h3>{{ mini.mini_wheels }}</h3>
    <h3>{{ mini.mini_wheelsize }}</h3>
    </article>
    </section>

    `,

    methods: {
        closeLB(){
            this.$emit('closelb');
        }
    }
}