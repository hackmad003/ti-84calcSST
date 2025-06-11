:ClrHome
:BLUE→T
:Output(1,1,"LOADING DATA...")
:Output(2,1,"Please wait...")

:{1.008,4.003,6.941,9.012,10.81,12.01,14.01,16.00,19.00,20.18,22.99,24.31,26.98,28.09,30.97,32.07,35.45,39.95,39.10,40.08,44.96,47.87,50.94,52.00,54.94,55.85,58.93,58.69,63.55,65.38,69.72,72.64,74.92,78.96,79.90,83.80,85.47,87.62,88.91,91.22,92.91,95.96,98,101.07,102.91,106.42,107.87,112.41,114.82,118.71,121.76,127.60,126.90,131.29,132.91,137.33,138.91,140.12,140.91,144.24,145,150.36,151.96,157.25,158.93,162.50,164.93,167.26,168.93,173.05,174.97,178.49,180.95,183.84,186.21,190.23,192.22,195.08,196.97,200.59,204.38,207.2,208.98,209,210,222,223,226,227,232.04,231.04,238.03,237,244,243,247,247,251,252,257,258,259,262,267,268,271,272,270,276,281,280,285,284,289,288,293,294,294}→L1

:{1,0,1,2,3,4,0-3,2,0-1,0,1,2,3,4,0-3,0-2,0-1,0,1,2,3,4,5,6,7,3,3,2,2,2,3,4,0-3,0-2,0-1,0,1,2,3,4,5,6,7,4,3,2,1,2,3,4,0-3,0-2,0-1,0,1,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,4,5,6,7,4,3,2,1,2,3,4,0-3,0-2,0-1,0,1,2,3,4,5,6,7,4,3,2,3,4,5,6,7,4,3,2,3,4,5,6,7,4,3,2,3,4,5,6,7,0}→L2

:Lbl 0
:ClrHome
:GREEN→T
:Output(1,1,"PERIODIC TABLE")
:Output(2,1,"==============")
:BLUE→T
:Output(4,1,"1: LOOKUP BY NUMBER")
:Output(5,1,"2: LOOKUP BY SYMBOL")
:Output(6,1,"3: MOLAR MASS CALC")
:Output(7,1,"4: CATION LIST")
:Output(8,1,"5: ANION LIST")
:Output(9,1,"6: ELEMENT LIST")
:Output(10,1,"7: EXIT")
:Input "CHOICE: ",C

:If C=1:Goto NUM
:If C=2:Goto SYM
:If C=3:Goto CALC
:If C=4:Goto CATIONS
:If C=5:Goto ANIONS
:If C=6:Goto LIST
:If C=7:Stop
:Goto 0

:Lbl NUM
:ClrHome
:GREEN→T
:Output(1,1,"LOOKUP BY NUMBER")
:BLUE→T
:Output(3,1,"Enter atomic number")
:Output(4,1,"(1-118): ")
:Input "",Z

:If Z<1 or Z>118:Then
:Disp "OUT OF RANGE"
:Pause
:Goto 0
:End

:Goto SHOW

:Lbl SYM
:ClrHome
:GREEN→T
:Output(1,1,"LOOKUP BY SYMBOL")
:BLUE→T
:Output(3,1,"Enter element symbol:")
:Output(4,1,"(e.g., H, He, Li, C)")
:Input "",Str0

:sub(Str0,1,1)→Str3
:If length(Str0)>1:Then
:sub(Str0,2,length(Str0)-1)→Str4
:Str3+Str4→Str0
:End

:0→Z
:If Str0="H":1→Z
:If Str0="He":2→Z
:If Str0="Li":3→Z
:If Str0="Be":4→Z
:If Str0="B":5→Z
:If Str0="C":6→Z
:If Str0="N":7→Z
:If Str0="O":8→Z
:If Str0="F":9→Z
:If Str0="Ne":10→Z
:If Str0="Na":11→Z
:If Str0="Mg":12→Z
:If Str0="Al":13→Z
:If Str0="Si":14→Z
:If Str0="P":15→Z
:If Str0="S":16→Z
:If Str0="Cl":17→Z
:If Str0="Ar":18→Z
:If Str0="K":19→Z
:If Str0="Ca":20→Z
:If Str0="Sc":21→Z
:If Str0="Ti":22→Z
:If Str0="V":23→Z
:If Str0="Cr":24→Z
:If Str0="Mn":25→Z
:If Str0="Fe":26→Z
:If Str0="Co":27→Z
:If Str0="Ni":28→Z
:If Str0="Cu":29→Z
:If Str0="Zn":30→Z
:If Str0="Ga":31→Z
:If Str0="Ge":32→Z
:If Str0="As":33→Z
:If Str0="Se":34→Z
:If Str0="Br":35→Z
:If Str0="Kr":36→Z
:If Str0="Rb":37→Z
:If Str0="Sr":38→Z
:If Str0="Y":39→Z
:If Str0="Zr":40→Z
:If Str0="Nb":41→Z
:If Str0="Mo":42→Z
:If Str0="Tc":43→Z
:If Str0="Ru":44→Z
:If Str0="Rh":45→Z
:If Str0="Pd":46→Z
:If Str0="Ag":47→Z
:If Str0="Cd":48→Z
:If Str0="In":49→Z
:If Str0="Sn":50→Z
:If Str0="Sb":51→Z
:If Str0="Te":52→Z
:If Str0="I":53→Z
:If Str0="Xe":54→Z
:If Str0="Cs":55→Z
:If Str0="Ba":56→Z
:If Str0="La":57→Z
:If Str0="Ce":58→Z
:If Str0="Pr":59→Z
:If Str0="Nd":60→Z
:If Str0="Pm":61→Z
:If Str0="Sm":62→Z
:If Str0="Eu":63→Z
:If Str0="Gd":64→Z
:If Str0="Tb":65→Z
:If Str0="Dy":66→Z
:If Str0="Ho":67→Z
:If Str0="Er":68→Z
:If Str0="Tm":69→Z
:If Str0="Yb":70→Z
:If Str0="Lu":71→Z
:If Str0="Hf":72→Z
:If Str0="Ta":73→Z
:If Str0="W":74→Z
:If Str0="Re":75→Z
:If Str0="Os":76→Z
:If Str0="Ir":77→Z
:If Str0="Pt":78→Z
:If Str0="Au":79→Z
:If Str0="Hg":80→Z
:If Str0="Tl":81→Z
:If Str0="Pb":82→Z
:If Str0="Bi":83→Z
:If Str0="Po":84→Z
:If Str0="At":85→Z
:If Str0="Rn":86→Z
:If Str0="Fr":87→Z
:If Str0="Ra":88→Z
:If Str0="Ac":89→Z
:If Str0="Th":90→Z
:If Str0="Pa":91→Z
:If Str0="U":92→Z
:If Str0="Np":93→Z
:If Str0="Pu":94→Z
:If Str0="Am":95→Z
:If Str0="Cm":96→Z
:If Str0="Bk":97→Z
:If Str0="Cf":98→Z
:If Str0="Es":99→Z
:If Str0="Fm":100→Z
:If Str0="Md":101→Z
:If Str0="No":102→Z
:If Str0="Lr":103→Z
:If Str0="Rf":104→Z
:If Str0="Db":105→Z
:If Str0="Sg":106→Z
:If Str0="Bh":107→Z
:If Str0="Hs":108→Z
:If Str0="Mt":109→Z
:If Str0="Ds":110→Z
:If Str0="Rg":111→Z
:If Str0="Cn":112→Z
:If Str0="Nh":113→Z
:If Str0="Fl":114→Z
:If Str0="Mc":115→Z
:If Str0="Lv":116→Z
:If Str0="Ts":117→Z
:If Str0="Og":118→Z

:If Z=0:Then
:Disp "SYMBOL NOT FOUND"
:Disp "TRY: H, He, Li, etc."
:Pause
:Goto 0
:End

:Goto SHOW

:Lbl SHOW
:ClrHome
:GREEN→T

:Gosub NAME
:Output(1,1,Str1)

:BLUE→T

:Gosub SYMBOL
:Output(3,1,"Symbol: ")
:Output(3,9,Str2)

:Output(4,1,"Atomic #: ")
:Output(4,11,Z)
:Output(5,1,"Atomic Mass: ")
:Output(5,14,L1(Z))
:Output(6,1,"Common Charge: ")
:If L2(Z)>0:Then
:Output(6,16,"+")
:Output(6,17,L2(Z))
:End
:If L2(Z)<0:Then
:Output(6,16,L2(Z))
:End
:If L2(Z)=0:Then
:Output(6,16,"0")
:End

:RED→T
:If Z≤2:Output(8,1,"Nonmetal")
:If Z=3:Output(8,1,"Metal")
:If Z=4:Output(8,1,"Metal")
:If Z=5:Output(8,1,"Metalloid")
:If Z=6:Output(8,1,"Nonmetal")
:If Z=7:Output(8,1,"Nonmetal")
:If Z=8:Output(8,1,"Nonmetal")
:If Z=9:Output(8,1,"Nonmetal")
:If Z=10:Output(8,1,"Nonmetal")
:If Z=11:Output(8,1,"Metal")
:If Z=12:Output(8,1,"Metal")
:If Z=13:Output(8,1,"Metal")
:If Z=14:Output(8,1,"Metalloid")
:If Z=15:Output(8,1,"Nonmetal")
:If Z=16:Output(8,1,"Nonmetal")
:If Z=17:Output(8,1,"Nonmetal")
:If Z=18:Output(8,1,"Nonmetal")
:If Z≥19:Output(8,1,"Metal")

:Pause
:Goto 0

:Lbl CATIONS
:ClrHome
:GREEN→T
:Output(1,1,"COMMON CATIONS")
:Output(2,1,"==============")
:BLUE→T
:Output(4,1,"CHARGE +1:")
:Output(5,1,"H+ Li+ Na+ K+ Rb+ Cs+")
:Output(6,1,"Cu+ Ag+ Tl+ NH4+ H3O+")
:Output(8,1,"CHARGE +2:")
:Output(9,1,"Mg2+ Ca2+ Sr2+ Ba2+")
:Output(10,1,"Zn2+ Cd2+ Hg2+ Cu2+")
:Output(11,1,"Fe2+ Co2+ Ni2+ Mn2+")
:Output(13,1,"CHARGE +3:")
:Output(14,1,"Al3+ Cr3+ Fe3+ Co3+")
:Pause
:Goto 0

:Lbl ANIONS
:ClrHome
:GREEN→T
:Output(1,1,"COMMON ANIONS")
:Output(2,1,"=============")
:BLUE→T
:Output(4,1,"CHARGE -1:")
:Output(5,1,"F- Cl- Br- I- OH-")
:Output(6,1,"NO3- ClO3- ClO4-")
:Output(8,1,"CHARGE -2:")
:Output(9,1,"O2- S2- SO4-2 CO3-2")
:Output(10,1,"CrO4-2 Cr2O7-2")
:Output(12,1,"CHARGE -3:")
:Output(13,1,"N3- P3- PO4-3")
:Pause
:Goto 0

:Lbl CALC
:ClrHome
:GREEN→T
:Output(1,1,"MOLAR MASS CALC")
:BLUE→T
:Output(3,1,"Enter up to 6 elements")
:Output(4,1,"(0 to skip)")

:0→M
:For(I,1,6)
:ClrHome
:Output(1,1,"ELEMENT ")
:Output(1,9,I)
:Output(3,1,"Atomic number:")
:Output(4,1,"(0 to finish)")
:Input "",A
:If A=0:Then
:Goto RESULT
:End
:If A<1 or A>118:Then
:Disp "INVALID NUMBER"
:Pause
:I-1→I
:Else
:Output(6,1,"Quantity: ")
:Input "",Q
:M+L1(A)*Q→M
:A→Z
:Gosub NAME
:Disp Str1
:Disp "ADDED TO FORMULA"
:Pause
:End
:End

:Lbl RESULT
:ClrHome
:GREEN→T
:Output(1,1,"MOLAR MASS")
:BLUE→T
:Output(3,1,"Total Mass:")
:Output(4,1,M)
:Output(4,10," g/mol")

:If M>0:Then
:RED→T
:Output(6,1,"CALCULATION")
:Output(7,1,"COMPLETE")
:End

:Pause
:Goto 0

:Lbl LIST
:ClrHome
:GREEN→T
:Output(1,1,"ELEMENT RANGES")
:BLUE→T
:Output(3,1,"1-2: H, He")
:Output(4,1,"3-10: Li-Ne")
:Output(5,1,"11-18: Na-Ar")
:Output(6,1,"19-36: K-Kr")
:Output(7,1,"37-54: Rb-Xe")
:Output(8,1,"55-86: Cs-Rn")
:Output(9,1,"87-118: Fr-Og")
:RED→T
:Output(11,1,"57-71: Lanthanides")
:Output(12,1,"89-103: Actinides")
:Pause
:ClrHome
:GREEN→T
:Output(1,1,"COMMON ELEMENTS")
:BLUE→T
:Output(3,1,"H=1 He=2 Li=3 Be=4")
:Output(4,1,"C=6 N=7 O=8 F=9")
:Output(5,1,"Na=11 Mg=12 Al=13")
:Output(6,1,"Si=14 P=15 S=16")
:Output(7,1,"Cl=17 Ar=18 K=19")
:Output(8,1,"Ca=20 Fe=26 Cu=29")
:Output(9,1,"Zn=30 Ag=47 Au=79")
:Output(10,1,"Pb=82 U=92")
:Pause
:Goto 0

:Lbl NAME
:If Z=1:"HYDROGEN"→Str1
:If Z=2:"HELIUM"→Str1
:If Z=3:"LITHIUM"→Str1
:If Z=4:"BERYLLIUM"→Str1
:If Z=5:"BORON"→Str1
:If Z=6:"CARBON"→Str1
:If Z=7:"NITROGEN"→Str1
:If Z=8:"OXYGEN"→Str1
:If Z=9:"FLUORINE"→Str1
:If Z=10:"NEON"→Str1
:If Z=11:"SODIUM"→Str1
:If Z=12:"MAGNESIUM"→Str1
:If Z=13:"ALUMINUM"→Str1
:If Z=14:"SILICON"→Str1
:If Z=15:"PHOSPHORUS"→Str1
:If Z=16:"SULFUR"→Str1
:If Z=17:"CHLORINE"→Str1
:If Z=18:"ARGON"→Str1
:If Z=19:"POTASSIUM"→Str1
:If Z=20:"CALCIUM"→Str1
:If Z=21:"SCANDIUM"→Str1
:If Z=22:"TITANIUM"→Str1
:If Z=23:"VANADIUM"→Str1
:If Z=24:"CHROMIUM"→Str1
:If Z=25:"MANGANESE"→Str1
:If Z=26:"IRON"→Str1
:If Z=27:"COBALT"→Str1
:If Z=28:"NICKEL"→Str1
:If Z=29:"COPPER"→Str1
:If Z=30:"ZINC"→Str1
:If Z=31:"GALLIUM"→Str1
:If Z=32:"GERMANIUM"→Str1
:If Z=33:"ARSENIC"→Str1
:If Z=34:"SELENIUM"→Str1
:If Z=35:"BROMINE"→Str1
:If Z=36:"KRYPTON"→Str1
:If Z=37:"RUBIDIUM"→Str1
:If Z=38:"STRONTIUM"→Str1
:If Z=39:"YTTRIUM"→Str1
:If Z=40:"ZIRCONIUM"→Str1
:If Z=41:"NIOBIUM"→Str1
:If Z=42:"MOLYBDENUM"→Str1
:If Z=43:"TECHNETIUM"→Str1
:If Z=44:"RUTHENIUM"→Str1
:If Z=45:"RHODIUM"→Str1
:If Z=46:"PALLADIUM"→Str1
:If Z=47:"SILVER"→Str1
:If Z=48:"CADMIUM"→Str1
:If Z=49:"INDIUM"→Str1
:If Z=50:"TIN"→Str1
:If Z=51:"ANTIMONY"→Str1
:If Z=52:"TELLURIUM"→Str1
:If Z=53:"IODINE"→Str1
:If Z=54:"XENON"→Str1
:If Z=55:"CESIUM"→Str1
:If Z=56:"BARIUM"→Str1
:If Z=57:"LANTHANUM"→Str1
:If Z=58:"CERIUM"→Str1
:If Z=59:"PRASEODYMIUM"→Str1
:If Z=60:"NEODYMIUM"→Str1
:If Z=61:"PROMETHIUM"→Str1
:If Z=62:"SAMARIUM"→Str1
:If Z=63:"EUROPIUM"→Str1
:If Z=64:"GADOLINIUM"→Str1
:If Z=65:"TERBIUM"→Str1
:If Z=66:"DYSPROSIUM"→Str1
:If Z=67:"HOLMIUM"→Str1
:If Z=68:"ERBIUM"→Str1
:If Z=69:"THULIUM"→Str1
:If Z=70:"YTTERBIUM"→Str1
:If Z=71:"LUTETIUM"→Str1
:If Z=72:"HAFNIUM"→Str1
:If Z=73:"TANTALUM"→Str1
:If Z=74:"TUNGSTEN"→Str1
:If Z=75:"RHENIUM"→Str1
:If Z=76:"OSMIUM"→Str1
:If Z=77:"IRIDIUM"→Str1
:If Z=78:"PLATINUM"→Str1
:If Z=79:"GOLD"→Str1
:If Z=80:"MERCURY"→Str1
:If Z=81:"THALLIUM"→Str1
:If Z=82:"LEAD"→Str1
:If Z=83:"BISMUTH"→Str1
:If Z=84:"POLONIUM"→Str1
:If Z=85:"ASTATINE"→Str1
:If Z=86:"RADON"→Str1
:If Z=87:"FRANCIUM"→Str1
:If Z=88:"RADIUM"→Str1
:If Z=89:"ACTINIUM"→Str1
:If Z=90:"THORIUM"→Str1
:If Z=91:"PROTACTINIUM"→Str1
:If Z=92:"URANIUM"→Str1
:If Z=93:"NEPTUNIUM"→Str1
:If Z=94:"PLUTONIUM"→Str1
:If Z=95:"AMERICIUM"→Str1
:If Z=96:"CURIUM"→Str1
:If Z=97:"BERKELIUM"→Str1
:If Z=98:"CALIFORNIUM"→Str1
:If Z=99:"EINSTEINIUM"→Str1
:If Z=100:"FERMIUM"→Str1
:If Z=101:"MENDELEVIUM"→Str1
:If Z=102:"NOBELIUM"→Str1
:If Z=103:"LAWRENCIUM"→Str1
:If Z=104:"RUTHERFORDIUM"→Str1
:If Z=105:"DUBNIUM"→Str1
:If Z=106:"SEABORGIUM"→Str1
:If Z=107:"BOHRIUM"→Str1
:If Z=108:"HASSIUM"→Str1
:If Z=109:"MEITNERIUM"→Str1
:If Z=110:"DARMSTADTIUM"→Str1
:If Z=111:"ROENTGENIUM"→Str1
:If Z=112:"COPERNICIUM"→Str1
:If Z=113:"NIHONIUM"→Str1
:If Z=114:"FLEROVIUM"→Str1
:If Z=115:"MOSCOVIUM"→Str1
:If Z=116:"LIVERMORIUM"→Str1
:If Z=117:"TENNESSINE"→Str1
:If Z=118:"OGANESSON"→Str1
:Return

:Lbl SYMBOL
:If Z=1:"H"→Str2
:If Z=2:"He"→Str2
:If Z=3:"Li"→Str2
:If Z=4:"Be"→Str2
:If Z=5:"B"→Str2
:If Z=6:"C"→Str2
:If Z=7:"N"→Str2
:If Z=8:"O"→Str2
:If Z=9:"F"→Str2
:If Z=10:"Ne"→Str2
:If Z=11:"Na"→Str2
:If Z=12:"Mg"→Str2
:If Z=13:"Al"→Str2
:If Z=14:"Si"→Str2
:If Z=15:"P"→Str2
:If Z=16:"S"→Str2
:If Z=17:"Cl"→Str2
:If Z=18:"Ar"→Str2
:If Z=19:"K"→Str2
:If Z=20:"Ca"→Str2
:If Z=21:"Sc"→Str2
:If Z=22:"Ti"→Str2
:If Z=23:"V"→Str2
:If Z=24:"Cr"→Str2
:If Z=25:"Mn"→Str2
:If Z=26:"Fe"→Str2
:If Z=27:"Co"→Str2
:If Z=28:"Ni"→Str2
:If Z=29:"Cu"→Str2
:If Z=30:"Zn"→Str2
:If Z=31:"Ga"→Str2
:If Z=32:"Ge"→Str2
:If Z=33:"As"→Str2
:If Z=34:"Se"→Str2
:If Z=35:"Br"→Str2
:If Z=36:"Kr"→Str2
:If Z=37:"Rb"→Str2
:If Z=38:"Sr"→Str2
:If Z=39:"Y"→Str2
:If Z=40:"Zr"→Str2
:If Z=41:"Nb"→Str2
:If Z=42:"Mo"→Str2
:If Z=43:"Tc"→Str2
:If Z=44:"Ru"→Str2
:If Z=45:"Rh"→Str2
:If Z=46:"Pd"→Str2
:If Z=47:"Ag"→Str2
:If Z=48:"Cd"→Str2
:If Z=49:"In"→Str2
:If Z=50:"Sn"→Str2
:If Z=51:"Sb"→Str2
:If Z=52:"Te"→Str2
:If Z=53:"I"→Str2
:If Z=54:"Xe"→Str2
:If Z=55:"Cs"→Str2
:If Z=56:"Ba"→Str2
:If Z=57:"La"→Str2
:If Z=58:"Ce"→Str2
:If Z=59:"Pr"→Str2
:If Z=60:"Nd"→Str2
:If Z=61:"Pm"→Str2
:If Z=62:"Sm"→Str2
:If Z=63:"Eu"→Str2
:If Z=64:"Gd"→Str2
:If Z=65:"Tb"→Str2
:If Z=66:"Dy"→Str2
:If Z=67:"Ho"→Str2
:If Z=68:"Er"→Str2
:If Z=69:"Tm"→Str2
:If Z=70:"Yb"→Str2
:If Z=71:"Lu"→Str2
:If Z=72:"Hf"→Str2
:If Z=73:"Ta"→Str2
:If Z=74:"W"→Str2
:If Z=75:"Re"→Str2
:If Z=76:"Os"→Str2
:If Z=77:"Ir"→Str2
:If Z=78:"Pt"→Str2
:If Z=79:"Au"→Str2
:If Z=80:"Hg"→Str2
:If Z=81:"Tl"→Str2
:If Z=82:"Pb"→Str2
:If Z=83:"Bi"→Str2
:If Z=84:"Po"→Str2
:If Z=85:"At"→Str2
:If Z=86:"Rn"→Str2
:If Z=87:"Fr"→Str2
:If Z=88:"Ra"→Str2
:If Z=89:"Ac"→Str2
:If Z=90:"Th"→Str2
:If Z=91:"Pa"→Str2
:If Z=92:"U"→Str2
:If Z=93:"Np"→Str2
:If Z=94:"Pu"→Str2
:If Z=95:"Am"→Str2
:If Z=96:"Cm"→Str2
:If Z=97:"Bk"→Str2
:If Z=98:"Cf"→Str2
:If Z=99:"Es"→Str2
:If Z=100:"Fm"→Str2
:If Z=101:"Md"→Str2
:If Z=102:"No"→Str2
:If Z=103:"Lr"→Str2
:If Z=104:"Rf"→Str2
:If Z=105:"Db"→Str2
:If Z=106:"Sg"→Str2
:If Z=107:"Bh"→Str2
:If Z=108:"Hs"→Str2
:If Z=109:"Mt"→Str2
:If Z=110:"Ds"→Str2
:If Z=111:"Rg"→Str2
:If Z=112:"Cn"→Str2
:If Z=113:"Nh"→Str2
:If Z=114:"Fl"→Str2
:If Z=115:"Mc"→Str2
:If Z=116:"Lv"→Str2
:If Z=117:"Ts"→Str2
:If Z=118:"Og"→Str2
:Return