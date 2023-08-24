---
# the default layout is 'page'
icon: fas fa-info-circle
order: 4

mermaid: true
---
## About Me
I am a sophomore at SHNU whose name and major shall remain unknown.\
\
Since I finished my crash course on CS--CS61A at the end of July 2023, I've been self-learning open courses on CS, DS math and stats, and trying to forge my way through computer science.\
Below is a diagram of my schedule.
```mermaid
gantt
  title  Course Schedule
  dateFormat MM-DD
  axisFormat %m

  school day  :	milestone, 09-10, 1m
  winter break: milestone, w, 2024-01-14, 1m

  section math
  18.06 			: crit, a, 07-25, 40d
  18.01 			: crit, b, after a, 20d

  section tech
  CS61B 			:		61b,	07-31, 90d

  section other
  Data8 			: active, d8, 07-25, 65d
```