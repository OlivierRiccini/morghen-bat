// const reboot = () => {
//   if (!window.location.pathname.includes('your_project')) {
//     console.log('REBOOT');
    // (function (){
    //   var rep = /.*\?.*/,
    //       links = document.getElementsByTagName('link'),
    //       scripts = document.getElementsByTagName('script'),
    //       process_scripts = false;
    //   for (var i=0;i<links.length;i++){
    //     var link = links[i],
    //         href = link.href;
    //     if(rep.test(href)){
    //       link.href = href+'&'+Date.now();
    //     }
    //     else{
    //       link.href = href+'?'+Date.now();
    //     }

    //   }
    //   if(process_scripts){
    //     for (var i=0;i<scripts.length;i++){
    //       var script = scripts[i],
    //           src = script.src;
    //       if(rep.test(src)){
    //         script.src = src+'&'+Date.now();
    //       }
    //       else{
    //         script.src = src+'?'+Date.now();
    //       }

    //     }
    //   }
    // })();

//   }
// }

console.log('Hello from fullpage custom');

let index = 0;
const fullpage = document.getElementById('your-project-fullpage');

const scroll = (direction) => {
  const h = window.innerHeight;
  if (direction === 'down') {
    index >= h * 13 ? index = h * 13 : index += h;
  } else if (direction === 'up') {
    index <= 0 ? index = 0 : index -= h;
  }
  $('html, body').animate({scrollTop : index},800);
}

const parseEvent = (e) => {

  // Check if event is set on project page
  if (e.target.baseURI.includes('your_project')) {

    // Case arrows keyboard
    if (e.constructor.name === 'KeyboardEvent') {
      if (e.key === "ArrowDown") {
        scroll('down');
      } else if(e.key === "ArrowUp") {
        scroll('up');
      }

    // Case Wheel
    } else if (e.constructor.name === 'WheelEvent') {
      if (e.wheelDelta < 0) {
        scroll('down');
      } else if (e.wheelDelta > 0) {
        scroll('up');
      }
      // Call function just once
      fullpage.removeEventListener('wheel', parseEvent);
      setTimeout(() => fullpage.addEventListener('wheel', parseEvent), 1500);

    // Case click on arrows
    } else if (e.constructor.name === 'ClickEvent') {
      console.log(e.constructor.name);
    }

  }
}

const applyPreventDefault = (event) => {
  event.preventDefault();
}

const eventHandler = () => {
  if (window.innerHeight > 500 && window.innerWidth > 755 && window.location.pathname.includes('your_project')) {
    window.addEventListener('keydown', parseEvent);
    fullpage.addEventListener('wheel', parseEvent);
    fullpage.addEventListener('wheel', applyPreventDefault);
    scrollToTop.addEventListener('click', () => index = 0 );
  } else {
    window.removeEventListener('keydown', parseEvent);
    fullpage.removeEventListener('wheel', parseEvent);
    fullpage.removeEventListener('wheel', applyPreventDefault);
    scrollToTop.removeEventListener('click', () => index = 0 );
  }
};

eventHandler();
window.addEventListener('resize', eventHandler);
