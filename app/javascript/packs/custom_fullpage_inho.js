let index = 0;

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
    window.removeEventListener('wheel', parseEvent);
    setTimeout(() => window.addEventListener('wheel', parseEvent), 1500);

  // Case click on arrows
  } else if (e.constructor.name === 'ClickEvent') {
    console.log(e.constructor.name);
  }

}

const applyPreventDefault = (event) => {
  event.preventDefault();
}

const eventHandler = () => {
  if (window.innerHeight > 500 && window.innerWidth > 755) {
    window.addEventListener('keydown', parseEvent);
    window.addEventListener('wheel', parseEvent);
    window.addEventListener('wheel', applyPreventDefault);
    scrollToTop.addEventListener('click', () => index = 0 );
  } else {
    window.removeEventListener('keydown', parseEvent);
    window.removeEventListener('wheel', parseEvent);
    window.removeEventListener('wheel', applyPreventDefault);
    scrollToTop.removeEventListener('click', () => index = 0 );
  }
}

window.addEventListener('load', eventHandler);
window.addEventListener('resize', eventHandler);
