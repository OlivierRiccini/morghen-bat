const allCheckBoxBtns = document.querySelectorAll('.check-box-btn');

const activateCheckBox = (event) => {
  const btn = event.target.parentElement;
  const input = btn.querySelector('input');

  if (btn.classList.contains('check-box-cliked')) {
    btn.classList.remove('check-box-cliked');
    input.checked = false;
  } else {
    btn.classList.add('check-box-cliked');
    input.checked = true;
  }
}

allCheckBoxBtns.forEach( e => e.addEventListener('click', activateCheckBox) );
