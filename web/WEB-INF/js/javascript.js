const menuprofile = document.getElementsByClassName("menu_profile")[0]
const profile = document.getElementsByClassName("nameSignIn")[0]
profile.addEventListener("click",()=>{
    if (menuprofile.classList.contains("menu_profile_hide"))
        menuprofile.classList.remove("menu_profile_hide")
    else menuprofile.classList.add("menu_profile_hide")
})

