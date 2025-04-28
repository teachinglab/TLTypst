
#let TLTypst(
  // The document title.
  title: "TLTypst",

  // Logo in top right corner.
  typst-logo: none,
  
  // Table of contents
  toc: true,

  // The document content.
  body
) = {

  // Set document metadata.
  set document(title: title)
  
  // Configure pages.
  set page(
    margin: (left: 2cm, right: 1.5cm, top: 2cm, bottom: 2cm),
    numbering: "1",
    number-align: right,
    background: place(right + top, rect(
      fill: rgb("#E6E6FA"),
      height: 100%,
      width: 3cm,
    ))
  )
  
  // Set the body font.
  set text(10pt, font: "Lora")
  
  // Set the headings
  set heading(numbering: "1a)")

  // Links should be purple.
  show link: set text(rgb("#800080"))

  // Configure light blue border.
  show figure: it => block({
    move(dx: -3%, dy: 1.5%, rect(
      fill: rgb("016891"),
      inset: 0pt,
      move(dx: 3%, dy: -1.5%, it.body)
    ))
  })
  
  // Set heading font size and family
  show heading: set text(size: 13pt, weight: "bold", font: "Poppins")

  // Blue border column
  grid(
    columns: (1fr, 0.75cm),
    column-gutter: 2.5cm,

    // Title.
    pad(bottom: 1cm, text(font: "Poppins", 20pt, weight: 800, upper(title))),

    // The logo in the sidebar.
    locate(loc => {
      set align(right)

      // Logo.
      style(styles => {
        if typst-logo == none {
          return
        }
  
        let img = image(typst-logo.path, width: 1.5cm)
        let img-size = measure(img, styles)
        
        grid(
          columns: (img-size.width, 1cm),
          column-gutter: 16pt,
          rows: img-size.height,
          img,
        )
      })
      
    }),
    
    // The main body text.
    {
      set par(justify: true)
      
      if toc {
        block(above: 0em, below: 4em)[
          #outline(
            title: auto,
            depth: none
          );
        ]
      }
      
      body
      v(1fr)
    },
  

  )
}


