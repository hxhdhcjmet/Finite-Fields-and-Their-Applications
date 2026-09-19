// 数论作业 Typst 模板
// 对应 LaTeX 模板: numberTheory.cls
// 日期: 2026/07/09

// ========== 数学符号（对应 \Z \Q \R \N \F） ==========
#let Z = math.bb("Z")
#let Q = math.bb("Q")
#let R = math.bb("R")
#let N = math.bb("N")
#let F = math.bb("F")

// ========== 定理类环境计数器 ==========
#let theorem-counter = counter("theorem")
#let lemma-counter = counter("lemma")
#let definition-counter =counter("definition")
#let example-counter = counter("example")

// ========== 定理类环境（plain 风格：斜体正文） ==========
#let theorem(body) = {
  theorem-counter.step()
  block(width: 100%, spacing: 0.5em)[
    *定理 #context[#theorem-counter.display()].*
    #h(1em)
    #emph(body)
  ]
}

#let lemma(body) = {
  lemma-counter.step()
  block(width: 100%, spacing: 0.5em)[
    *引理 #context[#lemma-counter.display()].*
    #h(1em)
    #emph(body)
  ]
}

// ========== 定理类环境（definition 风格：正体正文） ==========
#let definition(body) = {
  definition-counter.step()
  block(width: 100%, spacing: 0.5em)[
    *定义 #context[#definition-counter.display()].*
    #h(1em)
    #body
  ]
}

#let example(body) = {
  example-counter.step()
  block(width: 100%, spacing: 0.5em)[
    *例 #context[#example-counter.display()].*
    #h(1em)
    #body
  ]
}

// ========== 题号环境（对应 problem 环境） ==========
#let problem(num, body) = {
  block(width: 100%, spacing: 0.5em)[
    *#num.* #h(1em) #body
  ]
  v(0.5em)
}

// ========== 解答环境（对应 solution 环境） ==========
#let solution(label: "解", body) = {
  block(width: 100%, spacing: 0.5em)[
    *#label:* #h(1em) #body
  ]
  v(1.5em)
}

// ========== 文档设置（对应 \maketitle + 页面/字体配置） ==========
#let homework(
  title: "",
  author: "",
  student-id: "",
  major: none,
  date: datetime.today().display("[year]年[month]月[day]日"),
  body,
) = {
  // 页面设置: A4, 2.5cm 四周边距
  set page(paper: "a4", margin: 2.5cm)

  // 字体设置: 英文 Times New Roman, 中文 SimSun
  set text(font: ("Times New Roman", "SimSun"), lang: "zh", region: "cn")

  // 行距: 1.5 倍（默认 leading 约 0.65em，1.5x ≈ 1em）
  set par(leading: 1em)

  // 标题块（不换页，对应 \maketitle）
  align(center)[
    #text(size: 1.2em, weight: "bold")[#title]
    #v(0.4cm)
    #text(size: 1.1em)[#author #h(1em) #student-id]
    #if major != none {
      linebreak()
      text(size: 1.1em)[#major]
    }
    #v(0.2cm)
    #date
    #v(0.2cm)
    #line(length: 100%, stroke: 0.4pt)
  ]
  v(0.5cm)

  body
}
