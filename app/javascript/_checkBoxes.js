const allCheckBoxBtns = document.querySelectorAll('.check-box-btn');

const activateCheckBox = (event) => {
  const btn = event.target.parentElement;
  const input = btn.querySelector('input');

  if (!input.checked && !btn.classList.contains('metier-checkboxes')) {
    btn.classList.add('check-box-cliked');
    input.checked = true;
  } else {
    btn.classList.remove('check-box-cliked');
    input.checked = false;
  }
}

allCheckBoxBtns.forEach( e => e.addEventListener('click', activateCheckBox) );

