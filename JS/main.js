import miniThumbnails from './components/thumbnails.js';
import miniLightBox from './components/lightbox.js';

(() => {

    console.log("hey"); 
    const { createApp } = Vue  //lifecycle of vue => create, mount, update, destroyed

   
    createApp({  //vue object

        created() {   
              //fetching datab from data.json    
              fetch('./data.json')  //go and get the remote data
              .then(res => res.json()) //convert the json object to plain JS object
              .then(data => this.miniData = data)  //store the data in the vue instance
              .catch(error => console.error(error)); 
        },

        data(){
            return{
                miniData: {},
                lightboxData: {},
                showLightBox: false
            }
        },

        methods: {
            loadLightBox(item) {  //when u click on thumbnail, this function invokes
                this.lightboxData = item;
                this.showLightBox=true;
                //document.getElementsByTagName("body").style.opacity = "0";
            }

        },

        components: {
            minithumb: miniThumbnails,
            minilb: miniLightBox
        }

    }).mount('#app')

})()