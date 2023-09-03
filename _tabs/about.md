---
# the default layout is 'page'
icon: fa-solid fa-circle-user
order: 4

mermaid: true
---
I am a sophomore at SHNU whose name and major shall remain unknown. Since I finished my crash course on CS -- CS61A in July 2023, I've been self-learning open courses on CS, DS and math.

Below is a diagram of my schedule. (This may not be rendered on phones)

```mermaid
gantt
  title  Course Schedule
  dateFormat MM-DD
  axisFormat %m

  school day  :	milestone, 09-10, 1m
  winter break: milestone, w, 2024-01-14, 1m

  section math
  18.06 			: crit, a, 07-25, 47d
  18.01 			: crit, b, after a, 20d

  section tech
  CS61B 			:		61b,	07-31, 90d

  section other
  Data8 			: active, d8, 07-25, 65d
```