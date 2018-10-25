const projects = document.querySelectorAll('.edit-project-form');

projects.forEach(project => {
  const firstPicToEdit = project.querySelector('.project-pic');
  const elementsToInsert = firstPicToEdit.innerHTML;
  const imgTag = firstPicToEdit.querySelector('img');
  const lastFormElement = document.querySelector('.project-pic-btn');
  const formTag = document.createElement('form');

  const allInputs = firstPicToEdit.querySelectorAll('input');
  const allDivs = firstPicToEdit.querySelectorAll('div');

  const allElementsToDelete = [ allInputs, allDivs ];
  allElementsToDelete.forEach((nodes) => {
    nodes.forEach((el) => {
      el.parentNode.removeChild(el);
    });
  });

  const attributes = {
    novalidate: 'novalidate',
    class: 'simple_form edit_picture',
    class: 'edit_picture',
    id: firstPicToEdit.id,
    enctype: 'multipart/form-data',
    action: `/fr/projects/${project.id.split('-')[1]}/pictures/${firstPicToEdit.id.split('-')[2]}`,
    'accept-charset': 'UTF-8',
    method: 'post'
  };

  const setAttributes = (el, attrs) => {
    for (const key in attrs) {
      el.setAttribute(key, attrs[key]);
    }
  }

  setAttributes(formTag, attributes);

  function insertAfter(el, referenceNode) {
    // console.log(referenceNode === null);
    if (referenceNode !== null) {
      referenceNode.parentNode.insertBefore(el, referenceNode.nextSibling);
    } else {
      console.log('No images found for this project!');
    }
  }

  insertAfter(formTag, imgTag);

  formTag.innerHTML = elementsToInsert;
  const imgTagRepeitition = formTag.querySelector('img');

  if (imgTagRepeitition !== null) {
      imgTagRepeitition.parentNode.removeChild(imgTagRepeitition);
    } else {
      console.log('No images found for this project!');
    }

});
