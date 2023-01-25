function mobile() {
  xrdb -load ~/.Xresources.mobile
  echo 'awesome.restart()' | awesome-client
}
function docked() {
  xrdb -load ~/.Xresources
  echo 'awesome.restart()' | awesome-client
}
