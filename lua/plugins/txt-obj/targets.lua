return {

	  'wellle/targets.vim',
	  lazy = false,

}

-- Pairs
--
--  i(  i)  i{  i}  iB  i[  i]  ir  i<  i>  ia it
--  a(  a)  a{  a}  aB  a[  a]  ar  a<  a>  aa at
--  I(  I)  I{  I}  IB  I[  I]  Ir  I<  I>  Ia It
--  A(  A)  A{  A}  AB  A[  A]  Ar  A<  A>  Aa At
--
-- in( in) in{ in} inB in[ in] inr in< in> ina int
-- an( an) an{ an} anB an[ an] anr an< an> ana ant
-- In( In) In{ In} InB In[ In] Inr In< In> Ina Int
-- An( An) An{ An} AnB An[ An] Anr An< An> Ana Ant
--
-- il( il) il{ il} ilB il[ il] ilr il< il> ila ilt
-- al( al) al{ al} alB al[ al] alr al< al> ala alt
-- Il( Il) Il{ Il} IlB Il[ Il] Ilr Il< Il> Ila Ilt
-- Al( Al) Al{ Al} AlB Al[ Al] Alr Al< Al> Ala Alt
--
--                            ..........
-- a ( bbbbbbbb ) ( ccccccc ) ( dddddd ) ( eeeeeee ) ( ffffffff ) g
--   ││└ 2Il) ┘│││││└ Il) ┘│││││└ I) ┘│││││└ In) ┘│││││└ 2In) ┘│││
--   │└─ 2il) ─┘│││└─ il) ─┘│││└─ i) ─┘│││└─ in) ─┘│││└─ 2in) ─┘││
--   ├── 2al) ──┘│├── al) ──┘│├── a) ──┘│├── an) ──┘│├── 2an) ──┘│
--   └── 2Al) ───┘└── Al) ───┘└── A) ───┘└── An) ───┘└── 2An) ───┘
--
--                           ..........
-- a ( b ( cccccccc ) d ) ( e ( ffffff ) g ) ( h ( iiiiiiii ) j ) k
--   │││ ││└ 2Il) ┘││││││││││ ││└ I) ┘││││││││││ ││└ 2In) ┘│││││││
--   │││ │└─ 2il) ─┘│││││││││ │└─ i) ─┘│││││││││ │└─ 2in) ─┘││││││
--   │││ ├── 2al) ──┘││││││││ ├── a) ──┘││││││││ ├── 2an) ──┘│││││
--   │││ └── 2Al) ───┘│││││││ └── A) ───┘│││││││ └── 2An) ───┘││││
--   ││└───── Il) ────┘│││││└─── 2I) ────┘│││││└───── In) ────┘│││
--   │└────── il) ─────┘│││└──── 2i) ─────┘│││└────── in) ─────┘││
--   ├─────── al) ──────┘│├───── 2a) ──────┘│├─────── an) ──────┘│
--   └─────── Al) ───────┘└───── 2A) ───────┘└─────── An) ───────┘
--
--
-- Quotes
--
-- i'  i"  i`    in' in" in`    il' il" il`
-- a'  a"  a`    an' an" an`    al' al" al`
-- I'  I"  I`    In' In" In`    Il' Il" Il`
-- A'  A"  A`    An' An" An`    Al' Al" Al`
--
--              .............
-- a ' bbbbbbb ' c ' dddddd ' e ' fffffff ' g
--   ││└ Il' ┘│││  ││└ I' ┘│││  ││└ In' ┘│││
--   │└─ il' ─┘││  │└─ i' ─┘││  │└─ in' ─┘││

--   └── Al' ───┘  └── A' ───┘  └── An' ───┘
--
--
-- Separators
--
--  i,  i.  i;  i:  i+  i-  i=  i~  i_  i*  i#  i/  i|  i\  i&  i$
--  a,  a.  a;  a:  a+  a-  a=  a~  a_  a*  a#  a/  a|  a\  a&  a$
--  I,  I.  I;  I:  I+  I-  I=  I~  I_  I*  I#  I/  I|  I\  I&  I$
--  A,  A.  A;  A:  A+  A-  A=  A~  A_  A*  A#  A/  A|  A\  A&  A$
--
-- in, in. in; in: in+ in- in= in~ in_ in* in# in/ in| in\ in& in$
-- an, an. an; an: an+ an- an= an~ an_ an* an# an/ an| an\ an& an$
-- In, In. In; In: In+ In- In= In~ In_ In* In# In/ In| In\ In& In$
-- An, An. An; An: An+ An- An= An~ An_ An* An# An/ An| An\ An& An$
--
-- il, il. il; il: il+ il- il= il~ il_ il* il# il/ il| il\ il& il$
-- al, al. al; al: al+ al- al= al~ al_ al* al# al/ al| al\ al& al$
-- Il, Il. Il; Il: Il+ Il- Il= Il~ Il_ Il* Il# Il/ Il| Il\ Il& Il$
-- Al, Al. Al; Al: Al+ Al- Al= Al~ Al_ Al* Al# Al/ Al| Al\ Al& Al$
--
--
--                        .........
-- a , bbbbbbbb , ccccccc , dddddd , eeeeeee , ffffffff , g
--   ││└ 2Il, ┘│││└ Il, ┘│││└ I, ┘│││└ In, ┘│││└ 2In, ┘│ │
--   │└─ 2il, ─┤│├─ il, ─┤│├─ i, ─┤│├─ in, ─┤│├─ 2in, ─┤ │
--   ├── 2al, ─┘├┼─ al, ─┘├┼─ a, ─┘├┼─ an, ─┘├┼─ 2an, ─┘ │
--   └── 2Al, ──┼┘        └┼─ A, ──┼┘        └┼─ 2An, ───┘
--              └─  Al,  ──┘       └─  An,  ──┘
--
--
-- Arguments
--
-- ia  aa  Ia  Aa
-- ina ana Ina Ana
-- ila ala Ila Ala
--
--
--                          .........
-- a ( bbbbbb , ccccccc , d ( eeeeee , fffffff ) , gggggg ) h
--   ││├2Ila┘│││└─Ila─┘││││ ││├─Ia─┘│││└─Ina─┘│││││└2Ina┘│ │
--   │└┼2ila─┘│├──ila──┤│││ │└┼─ia──┘│├──ina──┤│││├─2ina─┤ │
--   │ └2ala──┼┤       ││││ │ └─aa───┼┤       │││├┼─2ana─┘ │
--   └──2Ala──┼┘       ││││ └───Aa───┼┘       │││└┼─2Ana───┘
--            ├───ala──┘│││          ├───ana──┘││ │
--            └───Ala───┼┤│          └───Ana───┼┤ │
--                      ││└─────2Ia────────────┘│ │
--                      │└──────2ia─────────────┤ │
--                      ├───────2aa─────────────┘ │
--                      └───────2Aa───────────────┘
--
