export default{
    name: 'TheMiniThumb',

    props: {
        mini: Object
    },

    template: 
    `
    <li @click="loadlightboxdata">
    <img :src='"Images/" + mini.carimg' alt="Mini Cooper Image">
    </li>
    `,

    methods: {
        loadlightboxdata(){
            this.$emit('loadlb', this.mini);
        }
             }
}