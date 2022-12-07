export default{
    name: 'TheMiniThumb',

    props: {
        mini: Object
    },

    template: 
    `
    <li @click="loadlightboxdata" class="mini-thumb-display">
    <img :src='"Images/" + mini.mini_img' alt="Mini Cooper Image">
    <div class="car-intro">
    <h2> {{ mini.mini_name }} </h2>
    <h3> {{ mini.mini_price }} </h3>
    </div>
    </li>
    `,

    methods: {
        loadlightboxdata(){
            this.$emit('loadlb', this.mini);
        }
             }
}