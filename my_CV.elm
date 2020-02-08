module Meijing_CV exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


-- adjust the height:
outsideStyle = style [("background-color","#f2f2f2"),("width","100%"),
                      ("height","400%")]

blockStyle = style [("background-color","#f2f2f2"),("width","100%"),
                      ("height","30px")]


mainStyle = style [("margin","10%"),("margin-top","3%"),("margin-bottom","3%"),
                   ("background-color","#ffffff")]
                   
hyperlinkStyle = style [("color","#29a381")]                  

leftStyle = style [("float","left"),("width","180px"),("padding","15px")]               

imgStyle = style [("height","160px"),("weight","160px"),
                  ("padding","20px"),("padding-bottom","0px"),("padding-top","25px")]

sidebar = style [("width","70"), ("position","relative"),("bottom","7px")]

nameStyle = style [("color","#32C79E"),("text-align","right"),
                   ("font-family","Verdana"),
                   ("font-size","28px")]

inforStyle = style [("color","#666D6B"),("text-align","right"),("font-family","Trebuchet MS"),
                    ("text-indent","10px"),("line-height","0.5"),("width","180px")]

githublogoStyle = style [("height","50px"),("weight","50px"),
                         ("float","left"),("padding-left","10px")]
inlogostyle = style [("height","60px"),("weight","60px"),
                     ("margin-top","-6px")]

rightStyle = style[("font-family","Trebuchet MS"),("font-size","15px"),
                   ("margin-left","220px"),("padding-left","25px"),
                   ("border-left", "2px solid #cccccc"),
                   ("padding-right","5px"),("padding-top","25px"),
                   ("padding-bottom","90px")]
                   
dateStyle = style [("float", "right"),("padding-right", "5%"),("font-size","15px")]

headerStyle = style [("color","#384745")]

paragrapgStyle = style [("color","#667270"),("line-height","1.5")]


footerStyle = style [("text-align","center"),("font-family","Trebuchet MS"),
                     ("font-size","15px"),("color","#667270")]

                   
main: Html msg
main = div [outsideStyle]
  [
    div [blockStyle] [],
    div [mainStyle]
      [

       section [leftStyle]
         [
           img [src "my_photo.jpg",imgStyle ] [],
           div [sidebar] [],
           div [] 
               [
                 h3 [nameStyle] [text "Meijing Li"]

                ],
            div [sidebar] [],
            div [inforStyle]
                [
                 p [] [text "tel"],
                 p [] [text "email"],
                 p [] [text "1280 Main Street West"],
                 p [] [text "Hamilton,ON"],
                 p [] [text "L8S 4M6"],

                 a [href "https://github.com/lim147/",target "_blank",hyperlinkStyle] 
                     [img [src "github.jpg",githublogoStyle] []],

                 a [href "https://www.linkedin.com/in/meijing-li/",target "_blank",hyperlinkStyle] 
                     [img [src "linkedin.jpg",inlogostyle] []]
                ]
            
          ],


        section [rightStyle] 
          [
             div []
               [
                 h2 [headerStyle] [text "SUMMARY"],
                 p [paragrapgStyle] 
                      [ text "Currently in my third year at ",
                        strong [] [text "McMaster University "],
                        text "specializing in ",
                        strong [] [text "Computer Science"],
                        text ", minor in ",
                        strong [] [text "Economics"],
                        text ". I am a detail-oriented student with strong academic skills and the ability to quickly grasp new concepts. My experiences in group projects make me a great communicator and highly efficient worker. Be recognized as initiative, creativity and dependability by previous employers, I am always committed to getting the work done with my best efforts."
                      ]
                ],

            br [] [],

            div []
              [

                 h2 [headerStyle] [text "EDUCATION"],

                 p [paragrapgStyle] 
                    [
                      div [style [("line-height","0.3")]] 
                              [

                                h4 [headerStyle] [text "Bachelor of Applied Science, Honours Computer Science (CO-OP)"],
                                h4 [headerStyle] [text "Minor in Economics"],
                                p [] [div [style [("float","left")]] [text "McMaster University, Hamilton, ON"],
                                      div [dateStyle] [text "2017-Present"]
                                     ]
                              ],

                       p [] [
                              br [] [],
                              strong [] [text "GPA: 3.8 of 4.0 scale"]
                            ],

                       p  [style [("line-height","1.5")]]
                            [text "Related Coursework:",
                             ul []
                               [
                    
                                li [] [
                                       a [href "http://www.cas.mcmaster.ca/~dalvescb/#outline-container-orgfc27091", target "_blank",hyperlinkStyle] [b [style [("color","#476b6b")]] [text "Cs Practice & Experience"]],
                                       text " -  Worked with Elm language to build website and design web games. Gained the knowledge on version control based on repositories by using git. Kept learning on Haskell for type class such as Monad."
                                       ],

                                li [] [
                                       a [href "http://www.cas.mcmaster.ca/~franek/courses/cs2xa3/", target "_blank",hyperlinkStyle] [b [style [("color","#476b6b")]] [text "Software Development Skills"]],
                                       text " - Focused on Unix and shell programming and some essential hardware basics."
                                       ],

                                li [] [b [style [("color","#476b6b")]] [text "Computer Architecture"],
                                       text " - Learned the compiling procedure and assembly language MIPS. Gained the concepts on memory hierarchy, I/O and graphic processors, as well as system performance."
                                      ],

                                li [] [b [style [("color","#476b6b")]] [text "Data Structure and Algorithms"],
                                       text " - Gained the knowledge of data structures as well as searching, sorting, graphing algorithms. Conducted correctness and performance analysis on algorithmic designs."
                                      ],

                                li [] [b [style [("color","#476b6b")]] [text "Software Design"],
                                       text " - Targeted on open-ended design of computational solutions to real world problems. Handled big data processing and software design strategies."
                                      ],

                                br [] [],

                                li [] [b [style [("color","#006080")]] [text "Introduction to Microeconomics"],
                                       text " - Applied the method and theory of microeconomics to the analysis of contemporary economic problems."
                                      ],

                                li [] [b [style [("color","#006080")]] [text "Intermediate Macroeconomics"],
                                       text " - Used the economic models to explain the factors of money supply, employment, interest rate and other related indicators in the market."
                                      ]


                               ]

                             
                            ]
                    
                    ]

              ],

            br [] [],

            div [] 
             [
               h2 [headerStyle] [text "WORK EXPERIENCE"],
               p [paragrapgStyle]
                 [
                      
                    div [style [("line-height","0.2")]] 
                            [h4 [headerStyle] [text "Software Designer Intern."],
                             p [style[("font-size","14px")]] 
                                  [div [style[("float","left")]] [text "Dingsheng Technology Co. , Xi’an, China"],
                                   div [dateStyle] [text "May – August 2018"],
                                   br [] []
                                  ]
                            ],
                    

                    ul [style [("line-height","1.5")]]
                         [
                            li [] [text "Created a window interface for weather radar map to visualize weather data given in binary form."],
                            li [] [text "Desighed and implementated in Python PyQt within one month deadline."]
                            
                            
                         ]              
                    ],

              p [paragrapgStyle]
                 [
                      
                    div [style [("line-height","0.2")]] 
                            [h4 [headerStyle] [text "Math Teaching Assistant (Part Time)"],
                             p [style[("font-size","14px")]] 
                                  [div [style[("float","left")]] [text "Step By Step International Education, Xi'an, China"],
                                   div [dateStyle] [text "July - August 2018"],
                                   br [] []
                                  ]
                            ],
                    

                    ul [style [("line-height","1.5")]]
                         [
                            li [] [text "Made great connections with students and instructors by recognizing students' problems and giving back feedback timely."],
                            li [] [text "Leaded excellent tutorials based on confusing topics to help students better understand, which resulted the average increase by 5%."],
                            li [] [text "Finished the work in high quality and assisted other areas of company operations."]
                         ]              
                    ]


                ],
                    
            br [] [],

            div [] [
                    h2 [headerStyle] [text "ADDITIONAL EXPERIENCE"],
                    p [paragrapgStyle]
                      [

                        h4 [headerStyle] [text "Academic:"],
                        ul []
                          [
                            li [] [text "Worked in a team to achieve a Haskell model design for solving Tower Of Hanoi problem. - Strengthened teamwork skills while dealing with different points of view."],
                            li [] [text "Conducted analysis to consumer reduction problem by collecting customer feedbacks base on the big data knowledge. - Enhanced problem solving skills and ability to apply knowledge on practical problems."]
       
                          ],

                        h4 [headerStyle] [text "Volunteer:"],
                        ul []
                          [
                            li [] [text "Volunteered in Red Cross to raise fund for the disabled in high school."],
                            li [] [text "Joined in the McMaster Hamilton Go Bus Welcome Program to pick up new comers to University."],
                            li [] [text "Registered as notetaker for Discrete Mathematics course in 2019 winter term."]

                          ]
                      ]

                    ],

             

            br [] [],

            div []
              [
                h2 [headerStyle] [text "PROJECTS"],
                p [paragrapgStyle]
                     [                        
                        div [style [("line-height","0.2")]] 
                            [h4 [headerStyle] [text "Game Web App"],
                             p [style[("font-size","14px")]] 
                                  [div [style[("float","left")]] [text "built by using Elm Architecture Functionality"],
                                   div [dateStyle] [text "February 2018"],
                                   br [] []
                                  ]
                            ],

                        ul []
                           [
                              b [style [("color","#009987")]] [text "★ "],
                              a [href "flappy_circle.html" , target "_blank",hyperlinkStyle] [text "Flappy Circle "],
                              text "- A video game developed under Elm Architecture coved the graphics generation. The keyboard and time events are captured to update the system state.",
                              br [] [],
                              br [] [],
                              b [style [("color","#009987")]] [text "★ "],
                              a [href "drawing_flower.html" , target "_blank",hyperlinkStyle] [text "Drawing a Flower "],
                              text "- An animation to visualize a math equation by using Elm Architecture. The button and tick elements are embedded in HTML message for generating as a web page."
                      
                            ] ,



                        div [style [("line-height","0.2")]] 
                            [h4 [headerStyle] [text "Math Library"],
                             p [style[("font-size","14px")]] 
                                  [div [style[("float","left")]] [text "a domain specific language built in Haskell"],
                                   div [dateStyle] [text "March 2018"],
                                   br [] []
                                  ]
                            ],

                         ul [] 
                            [
                                b [style [("color","#009987")]] [text "★ "],
                                a [href "docs/index.html",target "_blank",hyperlinkStyle] [text "Exprs "],
                                text "A math library for calculating expressions defined in a customer datatype. Type class is used in modelling the expression language, where a parser is created to scan the formatted input as the corresponding datatype."


                            ],



                        div [style [("line-height","0.2")]] 
                            [h4 [headerStyle] [text "Graphic interface"],
                             p [style[("font-size","14px")]] 
                                  [div [style[("float","left")]] [text "built in pycharm using pyqt"],
                                   div [dateStyle] [text "June 2018"],
                                   br [] []
                                  ]
                            ],

                        ul [] 
                           [
                                b [style [("color","#009987")]] [text "★ "],
                                a [href "https://github.com/lim147/Weather-Radar-GUI",target "_blank",hyperlinkStyle] [text "Weather radar GUI "],
                                text "Used the drawing API provided by PyQt toolkit to represent the longitude and latitude graticules as well as weather indicators. Data stored in binary files is loaded and transferred to visual graphics showing on the map."


                           ],


                        div [style [("line-height","0.2")]] 
                            [h4 [headerStyle] [text "Card Game"],
                             p [style[("font-size","14px")]] 
                                  [div [style[("float","left")]] [text "implemented in Python"],
                                   div [dateStyle] [text "February 2019"],
                                   br [] []
                                  ]
                            ],

                        ul [] 
                           [
                                b [style [("color","#009987")]] [text "★ "],
                                text "Forty Thieves",
                                text " - A software design project for modelling and implementing the specification of the card game, Forth Thieves. The whole process followed the software designing principles to maintain good qualities."


                           ],


                        div [style [("line-height","0.2")]] 
                            [h4 [headerStyle] [text "Mapping App"],
                             p [style[("font-size","14px")]] 
                                  [div [style[("float","left")]] [text "build in Java Eclipse"],
                                   div [dateStyle] [text "March 2019"],
                                   br [] []
                                  ]
                            ],

                        ul [] 
                           [
                                b [style [("color","#009987")]] [text "★ "],
                                text "StepSafe",
                                text " - A web mapping application aims to track historic crime data of Great Toronto Area and generate commuting routines that will avoid high crime. The design and implementation applied sorting, searching, graphing algorithms as well as bigdata processing and version control strategies"


                           ]
                                     

                                  
                     ]

              ],

            br [] [],

            div []
              [
                
                h2 [headerStyle] [text "AWARDS AND HONORS"],
                p [paragrapgStyle]
                     [
                       
                        ul []
                            [
                              li [] [text "Awarded the Provost Honor Roll Medal, which is awarded each year to outstanding students with a 12.0 average. | 2018"],
                              li [] [text "Awarded The Edwin Marwin Dalley Memorial Scholarships, which is $800 for high achieving 7 students. | 2018"],
                              li [] [text "Qualified the membership in the Golden Key International Honour Society, which is identified by McMaster University to the top 15% students of their program for their outstanding academic achievements. | 2018"]
                            ]


                     ]
              ],
              
              br [] [],
              div []
                     [
                        h2 [headerStyle] [text "SKILLS"]

                     ],
    
            
            
              div [style [("float","left")]]
                [
                   h4 [headerStyle] [text "Programming:"],
                   p [paragrapgStyle]
                        [
                          li [] [text "Experienced in Python"],
                          li [] [text "Experienced in  Bash"],
                          li [] [text "Proficient in C and C++"],
                          li [] [text "Proficient in Java"],
                          li [] [text "Proficient in Haskell"], 
                          li [] [text "Familiar with HTML & CSS"], 
                          li [] [text "Familiar with LaTex"], 
                          li [] [text "Familiar with Markdown"],                    
                          li [] [text "Familiar with Git"],
                          li [] [text "Familiar with Elm"]                         
                          
                        ]

                ],


                div [style [("float","left"),("padding-left","20px"), ("padding-right","20px")]]
                [
                   h4 [headerStyle] [text "Software:"],
                   p [paragrapgStyle]
                        [
                          li [] [text "Proficient in MS office",
                                 br [] [],
                                 div [style [("text-indent","20px")]] [text "including Word, Excel, PowerPoint"]
                                 ],

                          li [] [text "Proficient in MapleSim"],
                          li [] [text "Familiar with Matlab"],
                          li [] [text "Familiar with Photoshop"]                          

                        ]
                    ],


                 div [style [("padding-top","0.1px"),("padding-bottom","90px")]]
                [

                   h4 [headerStyle] [text "language"],
                   p [paragrapgStyle]
                      [
                          li [] [text "English (professional)"],
                          li [] [text "Chinese Mandarin (native)"]
                        

                      ]

                ]

             


                 
          ]
       

      ],
      footer [footerStyle] [text "Designed by Meijing Li @ 2018"]
  ]


