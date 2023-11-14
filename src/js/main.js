import { Calendar } from '@fullcalendar/core'
import interactionPlugin from '@fullcalendar/interaction'
import dayGridPlugin from '@fullcalendar/daygrid'
import timeGridPlugin from '@fullcalendar/timegrid'
import listPlugin from '@fullcalendar/list'
import data from '../data.json' assert { type: 'JSON' };

const calendarEl = document.getElementById('calendar')

const calendar = new Calendar(calendarEl, {
  initialView: 'timeGridWeek',
  plugins: [
    interactionPlugin,
    dayGridPlugin,
    timeGridPlugin,
    listPlugin,
  ],
  views:{},
  themeSystem:"standard",
  headerToolbar: {
    left: 'prev,next today',
    center: 'title',
    right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
  },
  
  eventTimeFormat:{
      hour: 'numeric',
      minute: '2-digit',
      meridiem: false
  },
  navLinks: true, // can click day/week names to navigate views
  editable: true,
  selectable: true,
  businessHours: false,
  nowIndicator: true,
  events:data,
  select: function(arg) {
    var title = prompt('Event Title:');
    if (title) {
      calendar.addEvent({
        title: title,
        start: arg.start,
        end: arg.end,
        allDay: arg.allDay
      })
    }
    calendar.unselect()
  },
  eventClick: function(arg) {
    if (confirm('Are you sure you want to delete this event?')) {
      arg.event.remove()
    }
  },

  
})

calendar.render()
