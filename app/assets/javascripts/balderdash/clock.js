Balderdash = window.Balderdash = window.Balderdash || {};

Balderdash.Clock = function(args) {
  this.elementId = arguments[0];
  interval = arguments[1] || 100; 
  this.interval = Math.max(10, parseInt(interval,10))
};

Balderdash.Clock.prototype.updateTime = function() {
  var c = document.getElementById(this.elementId);
  var now = new Date();
  var hours = now.getHours();
  if (hours > 12) { hours = hours - 12; }
  var minutes = now.getMinutes();
  var secs = now.getSeconds();
  c.innerHTML = [this.twoDigits(hours), this.twoDigits(minutes), this.twoDigits(secs)].join(":");
  var msecs = (secs * 1000 + now.getMilliseconds());
};

Balderdash.Clock.prototype.twoDigits = function(v) {
  return ("0" + v).slice(-2);
};

Balderdash.Clock.prototype.start = function() {
  _that = this
  _that.updateTime();
  setInterval(function() { _that.updateTime(); }, _that.interval);
};
