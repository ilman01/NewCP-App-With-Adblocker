// https://www.reddit.com/r/ClubPenguin/comments/170wgnw/guide_how_to_remove_ads_from_newcp_client/
// https://www.reddit.com/r/ClubPenguin/comments/171q6tb/guide_how_to_make_newcp_client_fullscreen/
// https://stackoverflow.com/questions/46562192/electron-execute-javascript-as-very-first-thing-on-a-page

/*
function CheckNotFocused(){
    if (!document.hasFocus()){
        document.exitFullscreen();
        document.activeElement.blur();
    }
}
function CheckFocused(){
    if (document.activeElement.tagName === 'IFRAME') {
        document.querySelector("#D_F_GameSection").requestFullscreen()
    }
}
setInterval(CheckNotFocused, 500)
setInterval(CheckFocused, 500)
*/

function removeAds() {
    const ads = document.querySelectorAll("[data-google-query-id]");
    ads.forEach(ad => ad.remove());
}

setInterval(removeAds, 5000)
