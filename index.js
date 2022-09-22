const nameInput = document.querySelector('.nameinp');
const ageInput = document.querySelector('.ageinp');
const submit = document.querySelector('.subBtn');
const collect = document.querySelector('.get')
const dataPoint = document.querySelector('.users')

const submitData = async(name1, age1) => {
  const url = 'http://localhost:3000/users'
  fetch(url, {
    method: "POST",
    body: JSON.stringify({
      name: name1,
      age: age1
    }),
    headers: { 'Content-Type': 'application/json' }
  }).then((reply) => reply.text()).then((val) => console.log(val));
}
const fillDom = async() => {
  dataPoint.innerHTML += `p.`
}
const getUsers = async() => {
  const url = 'http://localhost:3000/users'
  const getData = await fetch(url)
  const parseData = await getData.json()
  console.log(parseData)
}
submit.addEventListener('click', (e) => {
  e.preventDefault();
  submitData(nameInput.value, ageInput.value)
  //Test
  const test = document.querySelector('.test')
  test.textContent = 'I am ' + nameInput.value + '. I am ' + ageInput.value + ' years old';
  nameInput.value = '';
  ageInput.value = '';
})

collect.addEventListener('click', getUsers)
