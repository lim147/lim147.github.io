module Web_App exposing (..)

import Html as Html
import Html.Attributes as HtmlAtr
import Html.Events exposing (onClick)

import Platform.Cmd as Cmd
import Platform.Sub as Sub
import Mouse as Mouse
import Svg exposing (..)
import Svg.Attributes exposing (..)
import AnimationFrame as Anim

mainStyle = HtmlAtr.style [("margin","10%"),("margin-top","2%"),
                  ("padding","10px"),("font-family","Trebuchet MS")]

headerStyle = HtmlAtr.style [("text-align","center"),("font-size","22px")]
head1Style = HtmlAtr.style [("font-family","Trebuchet MS"),("color","#384745")]
head4Style = HtmlAtr.style [("font-family","Trebuchet MS"),("color","#707070")]
                            

svgStyle = HtmlAtr.style [("float","left"),("width","650px"),--("border", "2px solid #A1ABA9"),
                          ("height","600px"),("margin-left","100px")]

rightStyle = HtmlAtr.style [("margin-left","740px"),("font-size","17px"),("margin-right","30px"),
                            ("font-family","Trebuchet MS"),("color","#606060")] 

picStyle = HtmlAtr.style [("height","200px"),("weight","200px")]

buttonStyle = HtmlAtr.style [("font-size","15px"),("padding","4px"),("margin","5px"),
                              ("border-radius","7px"),("background-color","#eff5f5")]               

type alias Model = 
        {   counter : Float,
            position : {x:Int,y:Int}
        }
--Time = float       
type Msg = Tick Float | MouseMsg Mouse.Position | Faster | Slower

init  = ({counter = 1, position = {x=300,y=300}},Cmd.none)

subscriptions model = Sub.batch 
                        [Anim.times Tick,Mouse.clicks MouseMsg]

update msg model = case msg of
          MouseMsg pos ->  ({model|counter = model.counter+1},Cmd.none)
          Faster ->  ({model|counter = model.counter*1.5},Cmd.none)
          Slower ->  ({model|counter = model.counter/10},Cmd.none)


          Tick time -> let 
   t = time/300 * (model.counter/5)
   posX = round <| 300 + 80*(1+3*sin(2*t)^2)*cos(t)
   posY = round <| 300 + 80*(1+3*sin(2*t)^2)*sin(t)
   modelN = {model| position = {x=posX,y=posY}}
      in (modelN,Cmd.none)



view:Model->Html.Html Msg
view model = let 
     posX =  toString model.position.x
     posY =  toString model.position.y

      in   Html.div[]
          [

            Html.section [headerStyle] 
               [
                 Html.h1 [head1Style] [text "Drawing a Flower"],
                 Html.h4 [head4Style] [text "--- use Elm Architecture Functionality"]

               ],

            Html.section [svgStyle]
               [
                 svg [width "600",height "600"]
                    [   --center x
                      circle 
                        [cx posX,cy posY, r "20", fill "#ff6666"
                        ] []
                
                    ]
               ],
            Html.div [rightStyle]
               [
                  Html.h3 [][text "Documentation:"],
                  Html.ul []
                          [
                             Html.li [] [
                               text "This app is to draw the graph as follows:",
                               Html.br [] [],
                               Html.img [HtmlAtr.src "flower.jpg",picStyle] []
                               ],
                             Html.li [] 
                                [text "The speed of the red ball can be adjusted in 2 ways:",
                                 Html.ol []
                                    [
                                      Html.li [] [text "click the mouse anywhere on the sreen to speed up the movement"],
                                      Html.li [] 
                                                [
                                                   text "or click the button to make it ",
                                                   Html.i [] [text "faster"],
                                                   text " or ",
                                                   Html.i [] [text "slower"],
                                                   Html.br [] [],
                                                   Html.button [onClick Faster,buttonStyle] [text "Faster"],
                                                   Html.button [onClick Slower,buttonStyle] [text "Slower"]
                                                ]
                                    ]

                                 ]

                          ]

               ]

          ]

main = Html.program
    {

    init = init,
    update = update,
    view = view,
    subscriptions = subscriptions

   }


