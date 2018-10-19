let index = 0;
const fullpage = document.getElementById('your-project-fullpage');
const nbOfSections = 12;

const scroll = (direction) => {
  const h = window.innerHeight;
  if (direction === 'down' && index <= h * nbOfSections) {
    index >= h * nbOfSections ? index = h * nbOfSections : index += h;
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
      if (e.deltaY > 0) {
        scroll('down');
      } else if (e.deltaY < 0) {
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
  if (event.constructor.name === 'WheelEvent' || event.keyCode === 38 || event.keyCode === 40) {
    event.preventDefault();
  }
}

const eventHandler = () => {
  if (window.innerHeight > 500 && window.innerWidth > 755 && window.location.pathname.includes('your_project')) {
    window.addEventListener('keyup', parseEvent);
    window.addEventListener('keydown', applyPreventDefault);
    fullpage.addEventListener('wheel', parseEvent);
    fullpage.addEventListener('wheel', applyPreventDefault);
    scrollToTop.addEventListener('click', () => index = 0 );
  } else {
    window.removeEventListener('keyup', parseEvent);
    window.removeEventListener('keydown', applyPreventDefault);
    fullpage.removeEventListener('wheel', parseEvent);
    fullpage.removeEventListener('wheel', applyPreventDefault);
    scrollToTop.removeEventListener('click', () => index = 0 );
  }
};

eventHandler();
window.addEventListener('resize', eventHandler);
