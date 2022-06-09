window.editDef = function(event) {
  event.preventDefault();
  document.getElementById('term-definition').style.display = 'none';
  document.getElementById('term-definition-field').style.display = 'block';
  document.getElementById('term-edit-button').style.display = 'none';
  document.getElementById('cancel-term-edit').style.display = 'block';
}

