<template>
    <main-header />
    <section class="hero__section">
        <div class="container">


            <div class="svg">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg" x="0px" y="0px" width="150px" height="150px" viewBox="0 0 213.235 241.176" enable-background="new 0 0 213.235 241.176" xml:space="preserve" fill="#0057B8">
                <path d="M108.581,64.968V14.124l44.007,25.422L108.581,64.968" />
                <path fill-opacity="0.9" d="M153.591,92.101V41.258L109.582,66.68L153.591,92.101" />
                <path d="M155.586,92.062V41.221l44.009,25.42L155.586,92.062" />
                <path fill-opacity="0.7" d="M200.299,119.14V68.297l-44.004,25.421L200.299,119.14" />
                <path fill-opacity="0.85" d="M155.586,146.255V95.412l44.009,25.422L155.586,146.255" />
                <path fill-opacity="0.7" d="M200.299,173.35v-50.844l-44.004,25.422L200.299,173.35" />
                <path fill-opacity="0.6" d="M155.586,200.482v-50.84l44.009,25.417L155.586,200.482" />
                <path fill-opacity="0.5" d="M153.591,200.521v-50.84l-44.009,25.418L153.591,200.521" />
                <path fill-opacity="0.6" d="M108.581,227.696v-50.844l44.007,25.421L108.581,227.696" />
                <path fill-opacity="0.5" d="M106.62,227.696v-50.844l-44.005,25.421L106.62,227.696" />
                <path fill-opacity="0.7" d="M61.562,200.553V149.71l44.007,25.423L61.562,200.553" />
                <path fill-opacity="0.7" d="M59.709,200.56v-50.843l-44.008,25.422L59.709,200.56" />
                <path fill-opacity="0.7" d="M14.699,173.467v-50.843l44.01,25.42L14.699,173.467" />
                <path fill-opacity="0.5" d="M59.709,146.235V95.392l-44.008,25.42L59.709,146.235" />
                <path fill-opacity="0.7" d="M14.699,119.141V68.297l44.01,25.421L14.699,119.141" />
                <path fill-opacity="0.6" d="M59.709,92.101V41.258L15.701,66.68L59.709,92.101" />
                <path fill-opacity="0.85" d="M61.562,92.092V41.249l44.007,25.419L61.562,92.092" />
                <path fill-opacity="0.9" d="M106.62,64.968V14.124L62.614,39.546L106.62,64.968" />
            </svg>
        </div>

            <div class="hero__text">
                <h4>Trade-in-offer</h4>
                <h1>Super value deals</h1>
                <h2>On all products</h2>
                <p>Save more with coupons & get up to 70% off!</p>
                <router-link to="/shop">
                    <action-button btnvalue="Start Shopping" />
                </router-link>
            </div>
        </div>
    </section>
    <service-section />
    <section class="feature__section">
        <div class="container">
            <featured-products :featuredProducts="featuredProducts" />
        </div>
    </section>

    <new-arrivals :newArrivals="newArrivals" />
    <main-footer />
</template>

<script>
import NewArrivals from "@/components/products/NewArrivals.vue";
import FeaturedProducts from "@/components/products/FeaturedProducts.vue";
import ActionButton from "@/components/ActionButton.vue";
import MainHeader from "@/components/MainHeader.vue";
import MainFooter from "@/components/MainFooter.vue";

import axios from "axios";
import { mapActions, mapState } from "vuex";

export default {
    name: "HomeView",
    data() {
        return {
            product: [],
        };
    },
    methods: {
        ...mapState(["products"]),
        ...mapActions(["set_products"]),
    },
    components: {
        
    
        NewArrivals,
        FeaturedProducts,
        ActionButton,
        MainHeader,
        MainFooter,
    },
    computed: {
        featuredProducts() {
            return this.product.slice(1, 5);
        },
        newArrivals() {
            return this.product.slice(5, 9);
        },
    },
    async created() {
        let res1 = await axios.get("http://127.0.0.1:8001/api/products");
        this.product = res1.data.results;
        this.set_products(this.product);
        console.log(this.$store.state.products[0].name);
        
    },
};
</script>

<style scoped>
/* Hero Section */


.hero__section {
    display: flex;
    align-items: center;
    justify-content: center;
    height: calc(100vh - 65px);
    background-image: url("@/assets/images/hero4.png");
    background-position: 60% 30%;
    background-size: cover;
    animation: changeBackground 18s infinite;

}


@keyframes changeBackground {
    0%, 100% {
        background-image: url("@/assets/images/hero4.png");
    }
    33% {
        background-image: url("@/assets/images/hero3.jpg");
    }
    66% {
        background-image: url("@/assets/images/hero2.png");
    }
}

.hero__text {
    display: flex;
    align-items: flex-start;
    justify-content: center;
    flex-direction: column;
}

.hero__text h4 {
    padding-bottom: 1rem;
}

.hero__text h1 {
    color: var(--dim-blue);
}

.hero__text p {
    margin-bottom: 1rem;
}

@media (min-width: 2000px) {
    .hero__section {
        background-position: 70% 12%;
        background-size: contain;
        background-repeat: no-repeat;
        background-color: #e3e6f3;
        height: 50vh;
    }
}

@media (min-width: 3000px) {
    .hero__section {
        background-position: 60% 30%;
    }
}

@media (max-width: 768px) {
    .hero__section {
        background-position: 70% 30%;
        background-size: cover;

    }
}



body {
    background-color: #0057B8;
    text-align: center;
    line-height: 100vh;
}

.svg {
    display: inline-block;
    height: 200px;
    width: 200px;
    line-height: 200px;
    text-align: center;
    transform: translateX(-50px);
    border-radius: 50%;
}

#svg {
    display: inline-block;
    vertical-align: middle;
    fill: #0057B8;
    animation: pweek 5s infinite;
}

@keyframes pweek {

    0%,
    100% {
        fill: #0057B8;
    }

    20% {
        fill: #F11E4A;
    }

    40% {
        fill: #F8A527;
    }

    60% {
        fill: #266D7F;
    }
        80% {
            fill: #82A;
        }
    }

</style>
