#import "@preview/wrap-it:0.1.0": wrap-content

#let task = (given: "", find: "", stroke: "partially", fig: none, body) => {
  grid(
    columns: (auto, auto),
    column-gutter: 1.2em,
    
    table(
      inset: 0.6em,
      stroke: (x, y) => {
        if (stroke == "full") {
          return black
        }
        else if (stroke == "partially") {
          return (
            right: black,
            bottom: black
          )
        }
        else if (stroke == "find") {
          if (y == 0) {
            return (
              bottom: black
            )
          }
        }
      },
      
      given,  
      if find != "" {
        find
      }
    ),
    
    pad(top: 0.6em,
      if (fig == none) {
        body
      } 
      else {
        wrap-content(
          fig, 
          body,
          align: top + right,
          column-gutter: 1em
        )
      }
    )
  )
}