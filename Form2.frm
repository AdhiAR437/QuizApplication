VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H8000000E&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   3030
   ClientLeft      =   6045
   ClientTop       =   6855
   ClientWidth     =   5100
   LinkTopic       =   "Form2"
   ScaleHeight     =   3030
   ScaleWidth      =   5100
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   3600
      Top             =   120
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
      Height          =   735
      Left            =   3360
      TabIndex        =   0
      Top             =   1200
      Width           =   975
   End
   Begin VB.Image Image1 
      Height          =   2535
      Left            =   120
      Picture         =   "Form2.frx":0000
      Stretch         =   -1  'True
      Top             =   240
      Width           =   2415
   End
End
Attribute VB_Name = "Form2"
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
