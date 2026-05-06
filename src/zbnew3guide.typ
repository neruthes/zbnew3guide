#set text(size: 11pt, font: "Noto Sans CJK SC", lang: "zh")
#set page(margin: 20mm)


#page(margin: 40mm)[
  #set align(center)
  #set text(size: 10mm)
  折棒新三国导读

  #v(1fr)

  #datetime.today().display()
]



#for fn in read("list.txt").trim().split("\n").enumerate() {
  let dataobj = toml(fn.at(1))

  block()[
    #set text(weight: 600, size: 15pt)
    #set par(spacing: 1.3em)

    #text(size: 30pt, raw(dataobj.file_id))

    #dataobj.video_id

    = #dataobj.title

  ]
  v(20mm)

  for (kv1, kv2) in dataobj.list.enumerate() {
    block(grid(
      columns: (1fr, 6fr),
      raw(kv2.time),
      //
      kv2.info,
    ))
  }

  pagebreak(weak: true)
}
