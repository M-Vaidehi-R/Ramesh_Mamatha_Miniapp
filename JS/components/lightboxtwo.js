export default{
    name: 'TheLightBoxTwo',

    props: ['mini'],

    template:
    `
    <section class="lightbox-two">
    <!--the data array should go here, if it doesn't, I honestly dont know hwta swrong with this-->
    <!--<pre>{{ mini }}</pre>-->

    <img @click="closeLB" src="Images/closeIcon.svg" class=lbclose>
    <article>
    <img id="lb2Img" :src='"Images/lightBox2" + mini.mini_disp_one' alt="car image">
    <img id="lb2Img" :src='"Images/lightBox2" + mini.mini_disp_two' alt="car image">
    <img id="lb2Img" :src='"Images/lightBox2" + mini.mini_disp_three' alt="car image">

    </article>
    </section>

    `,

    methods: {
        closeLB(){
            this.$emit('closelb');
        }
    }
}