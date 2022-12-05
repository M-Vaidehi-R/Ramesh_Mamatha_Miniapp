export default{
    name: 'TheMiniThumb',

    props: {
        mini: Object
    },

    template: 
    `
    <li @click="loadlightboxdata">
    <img :src='"Images/" + mini.carimg' alt="Mini Cooper Image">
    <h2> {{ mini.name }} </h2>
    <h3> {{ mini.price }} </h3>
    </li>
    `,

    methods: {
        loadlightboxdata(){
            this.$emit('loadlb', this.mini);
        }
             }
}