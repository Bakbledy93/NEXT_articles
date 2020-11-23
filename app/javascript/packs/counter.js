console.log("hello world");

const table =  document.getElementsByTagName("table");

const button = document.getElementById("Counter");

button.addEventListener('click', e =>{
  document.getElementById("counterArticles").innerHTML = table[0].rows.length-1
  console.log(table[0].rows.length-1)
})