export default{
    name: 'TheLightBox',

    props: ['mini'],

    template:
    `
    <section class="lightbox">
    <!--the data array should go here, if it doesn't, I honestly dont know hwta swrong with this-->
    <!--<pre>{{ mini }}</pre>-->

    <img @click="closeLB" src="Images/closeIcon.svg" class=lbclose>
 
    <img id="lbImg" :src='"Images/" + mini.mini_img' alt="car image">

    <div>
    <h2>{{ mini.mini_name }}</h2>
    <h3>Price:   {{ mini.mini_price }}</h3>
    <h3>Enggine:   {{ mini.mini_engine }}</h3>
    <h3>0-100:   {{ mini.mini_speedometer }}</h3>
    <h3>Maxspeed:   {{ mini.mini_maxspeed }}</h3>
    <h3>Tank Capcity:   {{ mini.mini_tankcapacity }}</h3>
    <h3>Wheels:   {{ mini.mini_wheels }}</h3>
    <h3>Wheelsize:    {{ mini.mini_wheelsize }}</h3>
    </div>
    </section>

    `,

    methods: {
        closeLB(){
            this.$emit('closelb');
        }
    }
}