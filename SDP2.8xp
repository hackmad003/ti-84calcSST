:ClrHome
:Disp "CHECKING LIST..."
:If dim(L₁)≠118
:Then
:Disp "L₁ SIZE WRONG!"
:Disp "DIM=",dim(L₁)
:Stop
:End
:Input "Z=",Z
:If Z<1 or Z>118
:Then
:Disp "Z OUT OF RANGE"
:Stop
:End
:Output(5,1,"Z VALUE:")
:Output(6,1,L₁(Z))
