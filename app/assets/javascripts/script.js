$(document).on('turbolinks:load', 
  function() { 
    
    let menu = document.querySelector('#menu-bar');
    let navbar = document.querySelector('.navbar');
    
    menu.onclick = () =>{
      menu.classList.toggle('fa-times');
      navbar.classList.toggle('active');
    };
    
    window.onscroll = () =>{
      
      menu.classList.remove('fa-times');
      navbar.classList.remove('active');
      
      if(window.scrollY > 60){
        document.querySelector('#scroll-top').classList.add('active');
      }else{
        document.querySelector('#scroll-top').classList.remove('active');
      }
      
    };
    
  }
);

$(document).on('turbolinks:load', 
  function checkSubmit() {
    let btn_id = document.querySelector('#btn_id');
    btn_id.onclick = () =>{
      window.confirm('送信してよろしいですか？');
    };
  }
);