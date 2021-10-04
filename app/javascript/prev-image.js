document.addEventListener('DOMContentLoaded', function(){
  const ImageList = document.getElementById('prev-image')
  if (!ImageList){ return false;}
  document.getElementById('prev-image-form').addEventListener('change', function(e){
    const file = e.target.files[0]
    const blob = window.URL.createObjectURL(file)
    ImageList.setAttribute('src',blob)
  })
})