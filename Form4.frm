VERSION 5.00
Begin VB.Form Form4 
   BackColor       =   &H8000000E&
   BorderStyle     =   0  'None
   Caption         =   "EXPART_ADVICE"
   ClientHeight    =   3030
   ClientLeft      =   6045
   ClientTop       =   6855
   ClientWidth     =   6165
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   24
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form4"
   ScaleHeight     =   3030
   ScaleWidth      =   6165
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   4680
      Top             =   240
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "30"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   4920
      TabIndex        =   0
      Top             =   1080
      Width           =   855
   End
   Begin VB.Image Image1 
      Height          =   2775
      Left            =   120
      Picture         =   "Form4.frx":0000
      Stretch         =   -1  'True
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
Label1.Caption = Val(Label1.Caption) - 1
If Val(Label1.Caption) <= 10 Then
Label1.ForeColor = vbRed
End If
If Label1.Caption <= 0 Then
Timer1.Enabled = False
End If
End Sub
