
document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new FullCalendar.Calendar(calendarEl, {
    plugins: ['interaction', 'dayGrid'],
    selectable: true,
    header: {
      left: '',
      center: 'title',
    },
    locale: 'ko',
    select: function(info) {
      alert('selected ' + info.startStr + ' to ' + info.endStr);
    }
  });

  calendar.render();
});

      
