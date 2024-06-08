<template>
  <main-header />
  <sub-header heading="#WhoWeAre" />
  <div class="container">
      <div class="cards">
    <h1>Who We Are ?</h1>
    <div class="card card__one">
      <div class="card__bg"></div>
      <img class="card__img" src="@/assets/images/a6.webp" />
      <div class="card__text">
        <p class="card__title">Princess Mononoke</p>
      </div>
    </div>
    <h3>At the core of our values is a commitment to prompt delivery and prioritizing customer satisfaction.
                  Through our platform, we seamlessly link you with top-notch service providers in your vicinity.
                  Our dynamic team consists of enthusiastic individuals who are devoted to delivering unparalleled service
                  excellence.</h3>
  
                  
  </div>
      <article>
  
  
  
  
      </article>
  
  
  
  
  
  </div>
  <main-footer />
  </template>
  
  <script>
  import SubHeader from "@/components/SubHeader.vue";
  import MainHeader from "@/components/MainHeader.vue";
  import MainFooter from "@/components/MainFooter.vue";
  
  export default {
      components: {
          SubHeader,
          MainHeader,
          MainFooter
      },
      name: "AboutView",
      mounted() {
      // Đặt mã JavaScript của bạn ở đây
      const cards = document.querySelector(".cards");
      const images = document.querySelectorAll(".card__img");
      const backgrounds = document.querySelectorAll(".card__bg");
      const range = 40;
  
      // Hàm tính giá trị
      const calcValue = (a, b) => (a / b * range - range / 2).toFixed(1);
  
      let timeout;
      document.addEventListener('mousemove', ({ x, y }) => {
        if (timeout) {
          window.cancelAnimationFrame(timeout);
        }
  
        timeout = window.requestAnimationFrame(() => {
          const yValue = calcValue(y, window.innerHeight);
          const xValue = calcValue(x, window.innerWidth);
  
          cards.style.transform = `rotateX(${yValue}deg) rotateY(${xValue}deg)`;
  
          [].forEach.call(images, (image) => {
            image.style.transform = `translateX(${-xValue}px) translateY(${yValue}px)`;
          });
  
          [].forEach.call(backgrounds, (background) => {
            background.style.backgroundPosition = `${xValue * 0.45}px ${-yValue * 0.45}px`;
          });
        });
      }, false);
    }
  };
  
  </script>
  
  <style scoped>
  article {
      display: flex;
      gap: 4rem;
      margin-bottom: 2.5rem;
  }
  
  .about-img {
      height: 50vh;
      width: 50%;
      object-fit: cover;
  }
  
  .about-text {
      width: 50%;
  }
  
  .about-text p {
      line-height: 25px;
  }
  
  @media (max-width: 700px) {
      article {
          flex-direction: column;
      }
  
      .about-text {
          width: 100%;
      }
  
      .about-img {
          height: 40vh;
          width: 100%;
      }
  
      h1 {
          font-size: 4rem;
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
      background-color: #FFF;
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
  
          80% {
              fill: #82A;
          }
      }
  }
  
  
  
  @import url('https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800');
  html, body { height: 100%}
  
  body {
    align-items: center;
    background: #642B73;
    background: linear-gradient(to bottom, #C6426E, #642B73);
    display: flex;
    font-family: 'Open Sans', sans;
    justify-content: center;
    overflow: hidden;
    perspective: 1800px;
    text-align: center;
    margin: 0 20px;
  }
  
  h1 {
    color: #3e3e42;
    font-size:32px;
    font-weight: 800;
    letter-spacing: -1px;
    margin-bottom: 30px;
    transform: translateZ(35px);
  }
  
  h3 {
    color: #eb285d;
    font-size: 16px;
    margin-bottom: 6px;
    transform: translateZ(25px);
  }
  
  .cards {
    background: #fff;
    border-radius: 15px;
    box-shadow: 0px 10px 20px 20px rgba(0,0,0,0.17);
    display: inline-block;
    padding: 30px 35px;
    perspective: 1800px;
    text-align: left;
    transform-origin: 50% 50%;
    transform-style: preserve-3d;
    transform: rotateX(11deg) rotateY(16.5deg);
    min-width: 595px;
  }
  
  .card {
    border-radius: 15px;
    box-shadow: 5px 5px 20px -5px rgba(0,0,0,0.6);
    cursor: pointer;
    display: inline-block;
    height: 450px;
    width: 800px;
    left: 150px;
    overflow: hidden;
    perspective: 1200px;
    position: relative;
    transform-style: preserve-3d;
    transform: translatez(35px);
    transition: transform 200ms ease-out;
    text-align: center;
    
    
    
    &:not(:last-child) {
      margin-right: 30px;
    }
  }
  
  .card__img {
    position: relative;
    height: 100%;
  }
  
  .card__bg {
    bottom: -50px;
    left: -50px;
    position: absolute;
    right: -50px;
    top: -50px;
    transform-origin: 50% 50%;
    transform: translateZ(-50px);
    z-index: 0;
  }
  
  .card__one {
    .card__img {
      top: 14px;
      right: -10px;
      height: 90%;
    }
    .card__bg {
      background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/62105/3dr_monobg.jpg') center / cover no-repeat;
    }
    .card__text {
      //background-color: #254b60;
    }
  }
  
  .card__text {
    align-items: center;
    background: linear-gradient(to bottom, rgba(0,0,0,0) 0%,rgba(0,0,0,0.55) 100%);
    bottom: 0;
    display: flex;
    flex-direction: column; 
    height: 70px;
    justify-content: center;
    position: absolute;
    width: 100%;
    z-index: 2;
  }
  
  .card__title {
    color: #fff;
    font-size: 18px;
    font-weight: 700;
    padding: 0 10px;
    margin-bottom: 3px;
  }
  
  .notice {
    background: gold;
    border-top-left-radius: 6px;
    bottom: 0;
    font-family: monospace;
    font-size: 14px;
    padding: 8px 10px;
    position: absolute;
    right: -20px;
  }
  
  
  </style>
  