VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "BMay"
   ClientHeight    =   6390
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   1800
   ForeColor       =   &H0000FF00&
   Icon            =   "Main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6390
   ScaleWidth      =   1800
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Acerca 
      Caption         =   "&Acerca de..."
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   6120
      Width           =   1575
   End
   Begin VB.CommandButton Cerrar 
      Caption         =   "&Cerrar"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   5760
      Width           =   1575
   End
   Begin VB.CommandButton Traducir 
      Caption         =   "&Ver número Maya"
      Default         =   -1  'True
      Height          =   285
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox Número 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "0"
      ToolTipText     =   "Escriba el número a traducir"
      Top             =   600
      Width           =   1455
   End
   Begin VB.Image Imagen 
      Height          =   495
      Index           =   8
      Left            =   240
      Top             =   3360
      Width           =   1215
   End
   Begin VB.Image Imagen 
      Height          =   495
      Index           =   7
      Left            =   360
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Image Imagen 
      Height          =   495
      Index           =   6
      Left            =   360
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Image Imagen 
      Height          =   495
      Index           =   5
      Left            =   360
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Image Imagen 
      Height          =   330
      Index           =   4
      Left            =   240
      Top             =   3840
      Width           =   345
   End
   Begin VB.Image Imagen 
      Height          =   495
      Index           =   3
      Left            =   360
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Image Imagen 
      Height          =   495
      Index           =   2
      Left            =   480
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Image Imagen 
      Height          =   495
      Index           =   1
      Left            =   240
      Top             =   2880
      Width           =   1215
   End
   Begin VB.Image Imagen 
      Height          =   495
      Index           =   0
      Left            =   240
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackColor       =   &H00404040&
      Caption         =   "Número en Base 10:"
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   360
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Const CTop = 1560, CLeft = 720, CSpace = 480
Dim residuo(100) As Integer, Base As Integer
Private Sub Acerca_Click()
   frmAbout.Visible = True
   Call ezwrite(Número)
End Sub
Private Sub Cerrar_Click()
    End
End Sub

Private Sub Form_GotFocus()
    Call ezwrite(Número)
End Sub

Private Sub Form_Load()
    Call ezwrite(Número)
End Sub
Private Sub Número_Click()
    Call ezwrite(Número)
End Sub
Private Sub Traducir_Click()
    
    On Error GoTo conterro
    Call reset(8)
    n = Número.Text
    i = 1
    coc = n
    Base = 20
    While coc >= Base
        residuo(i) = coc Mod Base
        coc = coc \ Base
        i = i + 1 'Hasta aquí ya está el arreglo con las cifras del número traducido
    Wend
    residuo(i) = coc
    'El procedimiento que sigue sólo es de presentación
    For j = i To 1 Step -1
        k = i - j
        PosY = CTop + CSpace * (k)
        Imagen(k).Left = CLeft
        Imagen(k).Top = PosY
        Select Case residuo(j)
            Case 1
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\1.bmp")
            Case 2
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\2.bmp")
            Case 3
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\3.bmp")
            Case 4
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\4.bmp")
            Case 5
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\5.bmp")
            Case 6
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\6.bmp")
            Case 7
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\7.bmp")
            Case 8
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\8.bmp")
            Case 9
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\9.bmp")
            Case 10
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\10.bmp")
            Case 11
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\11.bmp")
            Case 12
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\12.bmp")
            Case 13
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\13.bmp")
            Case 14
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\14.bmp")
            Case 15
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\15.bmp")
            Case 16
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\16.bmp")
            Case 17
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\17.bmp")
            Case 18
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\18.bmp")
            Case 19
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\19.bmp")
            Case Else
                Imagen(k).Picture = LoadPicture("C:\Mis documentos\Académicos\Astronomía\Proyecto BMay\0.bmp")
        End Select
        Imagen(k).Visible = True
        
    Next
    Call ezwrite(Número)
    Número.SetFocus
    Exit Sub
    
conterro:
    msg = MsgBox("Asegúrese de ingresar números naturales menores a 2140000000", vbInformation + vbOKOnly)
    Call ezwrite(Número)
    
End Sub
Public Sub reset(nimágenes As Integer)
    For i = 0 To nimágenes
        Imagen(i).Visible = False
    Next

End Sub

Public Sub ezwrite(cuadro_de_texto As TextBox)
    With cuadro_de_texto
        .SelStart = 0
        .SelLength = 12
    End With
End Sub



