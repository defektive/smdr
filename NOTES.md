# This should help in the future

go [here](http://steve-wilkinson.co.uk/Mitel_%203300_%20ver5/sysadmin/features_optional/smdr_extended_reporting.html) inspect the tbody in question
then let the code below do the rest

```
String.prototype.toKey = function (){
  return this.trim().toLowerCase().replace(/[^0-9a-z_]+/g, "_")
}

String.prototype.toIndexValues = function (){
  if(this.indexOf("-") === -1) {
    return [parseInt(this, 10) - 1, parseInt(this, 10) - 1];
  } else {
    var st = this.split("-");
    st[0] = parseInt(st[0]) - 1;
    st[1] = parseInt(st[1]) - 1;

    return st
  }
  return this.trim().replace(/\s+/g, "_")
}

function getMatcher(tbody) {
  var tr = tbody.querySelectorAll("tr"),
    trLen = tr.length,
    data = {},
    tds;

  var str = "{\n"
  for(var i=1; i < trLen; i++) {
    tds = tr[i].querySelectorAll("td")
    if(tds[0].textContent == "Spacer") continue

    str += "\t" + tds[0].textContent.toKey() +": " + JSON.stringify(tds[1].textContent.toIndexValues()) +",\n"
  }
  str += "}"
  console.log(str)
}
getMatcher($0)
```
