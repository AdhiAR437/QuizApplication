VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H8000000E&
   BorderStyle     =   0  'None
   Caption         =   "AUDIONS_POLE"
   ClientHeight    =   3135
   ClientLeft      =   6195
   ClientTop       =   6855
   ClientWidth     =   5805
   LinkTopic       =   "Form3"
   ScaleHeight     =   3135
   ScaleWidth      =   5805
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   4680
      Top             =   2520
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
      Height          =   855
      Left            =   4440
      TabIndex        =   0
      Top             =   840
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   2535
      Left            =   240
      Picture         =   "Form3.frx":0000
      Stretch         =   -1  'True
      Top             =   240
      Width           =   3975
   End
End
Attribute VB_Name = "Form3"
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
