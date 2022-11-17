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
    <img :src="Images/" +`$this[mini].carimg` alt="car image">
    <h2>{{ mini.name }}</h2>
    <h3>{{ mini.price }}</h3>
    <h3>{{ mini.engine }}</h3>
    <h3>{{ mini.speedometer }}</h3>
    <h3>{{ mini.maxspeed }}</h3>
    <h3>{{ mini.tankcapacity }}</h3>
    <h3>{{ mini.wheels }}</h3>
    <h3>{{ mini.wheelsize }}</h3>
    </article>
    </section>

    `,

    methods: {
        closeLB(){
            this.$emit('closelb');
        }
    }
}