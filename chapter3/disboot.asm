00007C00  8816947C          mov [0x7c94],dl
00007C04  BD0080            mov bp,0x8000
00007C07  89EC              mov sp,bp
00007C09  BB0090            mov bx,0x9000
00007C0C  B601              mov dh,0x1
00007C0E  8A16947C          mov dl,[0x7c94]
00007C12  E84B00            call 0x7c60
00007C15  8B160090          mov dx,[0x9000]
00007C19  E81200            call 0x7c2e
00007C1C  EBFE              jmp short 0x7c1c
00007C1E  60                pusha
00007C1F  B40E              mov ah,0xe
00007C21  8A07              mov al,[bx]
00007C23  3C00              cmp al,0x0
00007C25  7405              jz 0x7c2c
00007C27  CD10              int 0x10
00007C29  43                inc bx
00007C2A  EBF5              jmp short 0x7c21
00007C2C  61                popa
00007C2D  C3                ret
00007C2E  60                pusha
00007C2F  B90400            mov cx,0x4
00007C32  89D0              mov ax,dx
00007C34  83E00F            and ax,byte +0xf
00007C37  83F80A            cmp ax,byte +0xa
00007C3A  7C05              jl 0x7c41
00007C3C  83C057            add ax,byte +0x57
00007C3F  EB03              jmp short 0x7c44
00007C41  83C030            add ax,byte +0x30
00007C44  BB597C            mov bx,0x7c59
00007C47  01CB              add bx,cx
00007C49  884701            mov [bx+0x1],al
00007C4C  C1CA04            ror dx,byte 0x4
00007C4F  E2E1              loop 0x7c32
00007C51  BB597C            mov bx,0x7c59
00007C54  E8C7FF            call 0x7c1e
00007C57  61                popa
00007C58  C3                ret
00007C59  307830            xor [bx+si+0x30],bh
00007C5C  3030              xor [bx+si],dh
00007C5E  3000              xor [bx+si],al
00007C60  60                pusha
00007C61  52                push dx
00007C62  B402              mov ah,0x2
00007C64  B402              mov ah,0x2
00007C66  88F0              mov al,dh
00007C68  B500              mov ch,0x0
00007C6A  B600              mov dh,0x0
00007C6C  B102              mov cl,0x2
00007C6E  CD13              int 0x13
00007C70  7207              jc 0x7c79
00007C72  5A                pop dx
00007C73  38C6              cmp dh,al
00007C75  7502              jnz 0x7c79
00007C77  61                popa
00007C78  C3                ret
00007C79  BB817C            mov bx,0x7c81
00007C7C  E89FFF            call 0x7c1e
00007C7F  EBFE              jmp short 0x7c7f
00007C81  44                inc sp
00007C82  69736B2072        imul si,[bp+di+0x6b],word 0x7220
00007C87  6561              gs popa
00007C89  64206572          and [fs:di+0x72],ah
00007C8D  726F              jc 0x7cfe
00007C8F  7221              jc 0x7cb2
00007C91  0E                push cs
00007C92  0A00              or al,[bx+si]
00007C94  0000              add [bx+si],al
00007C96  0000              add [bx+si],al
00007C98  0000              add [bx+si],al
00007C9A  0000              add [bx+si],al
00007C9C  0000              add [bx+si],al
00007C9E  0000              add [bx+si],al
00007CA0  0000              add [bx+si],al
00007CA2  0000              add [bx+si],al
00007CA4  0000              add [bx+si],al
00007CA6  0000              add [bx+si],al
00007CA8  0000              add [bx+si],al
00007CAA  0000              add [bx+si],al
00007CAC  0000              add [bx+si],al
00007CAE  0000              add [bx+si],al
00007CB0  0000              add [bx+si],al
00007CB2  0000              add [bx+si],al
00007CB4  0000              add [bx+si],al
00007CB6  0000              add [bx+si],al
00007CB8  0000              add [bx+si],al
00007CBA  0000              add [bx+si],al
00007CBC  0000              add [bx+si],al
00007CBE  0000              add [bx+si],al
00007CC0  0000              add [bx+si],al
00007CC2  0000              add [bx+si],al
00007CC4  0000              add [bx+si],al
00007CC6  0000              add [bx+si],al
00007CC8  0000              add [bx+si],al
00007CCA  0000              add [bx+si],al
00007CCC  0000              add [bx+si],al
00007CCE  0000              add [bx+si],al
00007CD0  0000              add [bx+si],al
00007CD2  0000              add [bx+si],al
00007CD4  0000              add [bx+si],al
00007CD6  0000              add [bx+si],al
00007CD8  0000              add [bx+si],al
00007CDA  0000              add [bx+si],al
00007CDC  0000              add [bx+si],al
00007CDE  0000              add [bx+si],al
00007CE0  0000              add [bx+si],al
00007CE2  0000              add [bx+si],al
00007CE4  0000              add [bx+si],al
00007CE6  0000              add [bx+si],al
00007CE8  0000              add [bx+si],al
00007CEA  0000              add [bx+si],al
00007CEC  0000              add [bx+si],al
00007CEE  0000              add [bx+si],al
00007CF0  0000              add [bx+si],al
00007CF2  0000              add [bx+si],al
00007CF4  0000              add [bx+si],al
00007CF6  0000              add [bx+si],al
00007CF8  0000              add [bx+si],al
00007CFA  0000              add [bx+si],al
00007CFC  0000              add [bx+si],al
00007CFE  0000              add [bx+si],al
00007D00  0000              add [bx+si],al
00007D02  0000              add [bx+si],al
00007D04  0000              add [bx+si],al
00007D06  0000              add [bx+si],al
00007D08  0000              add [bx+si],al
00007D0A  0000              add [bx+si],al
00007D0C  0000              add [bx+si],al
00007D0E  0000              add [bx+si],al
00007D10  0000              add [bx+si],al
00007D12  0000              add [bx+si],al
00007D14  0000              add [bx+si],al
00007D16  0000              add [bx+si],al
00007D18  0000              add [bx+si],al
00007D1A  0000              add [bx+si],al
00007D1C  0000              add [bx+si],al
00007D1E  0000              add [bx+si],al
00007D20  0000              add [bx+si],al
00007D22  0000              add [bx+si],al
00007D24  0000              add [bx+si],al
00007D26  0000              add [bx+si],al
00007D28  0000              add [bx+si],al
00007D2A  0000              add [bx+si],al
00007D2C  0000              add [bx+si],al
00007D2E  0000              add [bx+si],al
00007D30  0000              add [bx+si],al
00007D32  0000              add [bx+si],al
00007D34  0000              add [bx+si],al
00007D36  0000              add [bx+si],al
00007D38  0000              add [bx+si],al
00007D3A  0000              add [bx+si],al
00007D3C  0000              add [bx+si],al
00007D3E  0000              add [bx+si],al
00007D40  0000              add [bx+si],al
00007D42  0000              add [bx+si],al
00007D44  0000              add [bx+si],al
00007D46  0000              add [bx+si],al
00007D48  0000              add [bx+si],al
00007D4A  0000              add [bx+si],al
00007D4C  0000              add [bx+si],al
00007D4E  0000              add [bx+si],al
00007D50  0000              add [bx+si],al
00007D52  0000              add [bx+si],al
00007D54  0000              add [bx+si],al
00007D56  0000              add [bx+si],al
00007D58  0000              add [bx+si],al
00007D5A  0000              add [bx+si],al
00007D5C  0000              add [bx+si],al
00007D5E  0000              add [bx+si],al
00007D60  0000              add [bx+si],al
00007D62  0000              add [bx+si],al
00007D64  0000              add [bx+si],al
00007D66  0000              add [bx+si],al
00007D68  0000              add [bx+si],al
00007D6A  0000              add [bx+si],al
00007D6C  0000              add [bx+si],al
00007D6E  0000              add [bx+si],al
00007D70  0000              add [bx+si],al
00007D72  0000              add [bx+si],al
00007D74  0000              add [bx+si],al
00007D76  0000              add [bx+si],al
00007D78  0000              add [bx+si],al
00007D7A  0000              add [bx+si],al
00007D7C  0000              add [bx+si],al
00007D7E  0000              add [bx+si],al
00007D80  0000              add [bx+si],al
00007D82  0000              add [bx+si],al
00007D84  0000              add [bx+si],al
00007D86  0000              add [bx+si],al
00007D88  0000              add [bx+si],al
00007D8A  0000              add [bx+si],al
00007D8C  0000              add [bx+si],al
00007D8E  0000              add [bx+si],al
00007D90  0000              add [bx+si],al
00007D92  0000              add [bx+si],al
00007D94  0000              add [bx+si],al
00007D96  0000              add [bx+si],al
00007D98  0000              add [bx+si],al
00007D9A  0000              add [bx+si],al
00007D9C  0000              add [bx+si],al
00007D9E  0000              add [bx+si],al
00007DA0  0000              add [bx+si],al
00007DA2  0000              add [bx+si],al
00007DA4  0000              add [bx+si],al
00007DA6  0000              add [bx+si],al
00007DA8  0000              add [bx+si],al
00007DAA  0000              add [bx+si],al
00007DAC  0000              add [bx+si],al
00007DAE  0000              add [bx+si],al
00007DB0  0000              add [bx+si],al
00007DB2  0000              add [bx+si],al
00007DB4  0000              add [bx+si],al
00007DB6  0000              add [bx+si],al
00007DB8  0000              add [bx+si],al
00007DBA  0000              add [bx+si],al
00007DBC  0000              add [bx+si],al
00007DBE  0000              add [bx+si],al
00007DC0  0000              add [bx+si],al
00007DC2  0000              add [bx+si],al
00007DC4  0000              add [bx+si],al
00007DC6  0000              add [bx+si],al
00007DC8  0000              add [bx+si],al
00007DCA  0000              add [bx+si],al
00007DCC  0000              add [bx+si],al
00007DCE  0000              add [bx+si],al
00007DD0  0000              add [bx+si],al
00007DD2  0000              add [bx+si],al
00007DD4  0000              add [bx+si],al
00007DD6  0000              add [bx+si],al
00007DD8  0000              add [bx+si],al
00007DDA  0000              add [bx+si],al
00007DDC  0000              add [bx+si],al
00007DDE  0000              add [bx+si],al
00007DE0  0000              add [bx+si],al
00007DE2  0000              add [bx+si],al
00007DE4  0000              add [bx+si],al
00007DE6  0000              add [bx+si],al
00007DE8  0000              add [bx+si],al
00007DEA  0000              add [bx+si],al
00007DEC  0000              add [bx+si],al
00007DEE  0000              add [bx+si],al
00007DF0  0000              add [bx+si],al
00007DF2  0000              add [bx+si],al
00007DF4  0000              add [bx+si],al
00007DF6  0000              add [bx+si],al
00007DF8  0000              add [bx+si],al
00007DFA  0000              add [bx+si],al
00007DFC  0000              add [bx+si],al
00007DFE  55                push bp
00007DFF  AA                stosb
00007E00  DADA              fcmovu st2
00007E02  DADA              fcmovu st2
00007E04  DADA              fcmovu st2
00007E06  DADA              fcmovu st2
00007E08  DADA              fcmovu st2
00007E0A  DADA              fcmovu st2
00007E0C  DADA              fcmovu st2
00007E0E  DADA              fcmovu st2
00007E10  DADA              fcmovu st2
00007E12  DADA              fcmovu st2
00007E14  DADA              fcmovu st2
00007E16  DADA              fcmovu st2
00007E18  DADA              fcmovu st2
00007E1A  DADA              fcmovu st2
00007E1C  DADA              fcmovu st2
00007E1E  DADA              fcmovu st2
00007E20  DADA              fcmovu st2
00007E22  DADA              fcmovu st2
00007E24  DADA              fcmovu st2
00007E26  DADA              fcmovu st2
00007E28  DADA              fcmovu st2
00007E2A  DADA              fcmovu st2
00007E2C  DADA              fcmovu st2
00007E2E  DADA              fcmovu st2
00007E30  DADA              fcmovu st2
00007E32  DADA              fcmovu st2
00007E34  DADA              fcmovu st2
00007E36  DADA              fcmovu st2
00007E38  DADA              fcmovu st2
00007E3A  DADA              fcmovu st2
00007E3C  DADA              fcmovu st2
00007E3E  DADA              fcmovu st2
00007E40  DADA              fcmovu st2
00007E42  DADA              fcmovu st2
00007E44  DADA              fcmovu st2
00007E46  DADA              fcmovu st2
00007E48  DADA              fcmovu st2
00007E4A  DADA              fcmovu st2
00007E4C  DADA              fcmovu st2
00007E4E  DADA              fcmovu st2
00007E50  DADA              fcmovu st2
00007E52  DADA              fcmovu st2
00007E54  DADA              fcmovu st2
00007E56  DADA              fcmovu st2
00007E58  DADA              fcmovu st2
00007E5A  DADA              fcmovu st2
00007E5C  DADA              fcmovu st2
00007E5E  DADA              fcmovu st2
00007E60  DADA              fcmovu st2
00007E62  DADA              fcmovu st2
00007E64  DADA              fcmovu st2
00007E66  DADA              fcmovu st2
00007E68  DADA              fcmovu st2
00007E6A  DADA              fcmovu st2
00007E6C  DADA              fcmovu st2
00007E6E  DADA              fcmovu st2
00007E70  DADA              fcmovu st2
00007E72  DADA              fcmovu st2
00007E74  DADA              fcmovu st2
00007E76  DADA              fcmovu st2
00007E78  DADA              fcmovu st2
00007E7A  DADA              fcmovu st2
00007E7C  DADA              fcmovu st2
00007E7E  DADA              fcmovu st2
00007E80  DADA              fcmovu st2
00007E82  DADA              fcmovu st2
00007E84  DADA              fcmovu st2
00007E86  DADA              fcmovu st2
00007E88  DADA              fcmovu st2
00007E8A  DADA              fcmovu st2
00007E8C  DADA              fcmovu st2
00007E8E  DADA              fcmovu st2
00007E90  DADA              fcmovu st2
00007E92  DADA              fcmovu st2
00007E94  DADA              fcmovu st2
00007E96  DADA              fcmovu st2
00007E98  DADA              fcmovu st2
00007E9A  DADA              fcmovu st2
00007E9C  DADA              fcmovu st2
00007E9E  DADA              fcmovu st2
00007EA0  DADA              fcmovu st2
00007EA2  DADA              fcmovu st2
00007EA4  DADA              fcmovu st2
00007EA6  DADA              fcmovu st2
00007EA8  DADA              fcmovu st2
00007EAA  DADA              fcmovu st2
00007EAC  DADA              fcmovu st2
00007EAE  DADA              fcmovu st2
00007EB0  DADA              fcmovu st2
00007EB2  DADA              fcmovu st2
00007EB4  DADA              fcmovu st2
00007EB6  DADA              fcmovu st2
00007EB8  DADA              fcmovu st2
00007EBA  DADA              fcmovu st2
00007EBC  DADA              fcmovu st2
00007EBE  DADA              fcmovu st2
00007EC0  DADA              fcmovu st2
00007EC2  DADA              fcmovu st2
00007EC4  DADA              fcmovu st2
00007EC6  DADA              fcmovu st2
00007EC8  DADA              fcmovu st2
00007ECA  DADA              fcmovu st2
00007ECC  DADA              fcmovu st2
00007ECE  DADA              fcmovu st2
00007ED0  DADA              fcmovu st2
00007ED2  DADA              fcmovu st2
00007ED4  DADA              fcmovu st2
00007ED6  DADA              fcmovu st2
00007ED8  DADA              fcmovu st2
00007EDA  DADA              fcmovu st2
00007EDC  DADA              fcmovu st2
00007EDE  DADA              fcmovu st2
00007EE0  DADA              fcmovu st2
00007EE2  DADA              fcmovu st2
00007EE4  DADA              fcmovu st2
00007EE6  DADA              fcmovu st2
00007EE8  DADA              fcmovu st2
00007EEA  DADA              fcmovu st2
00007EEC  DADA              fcmovu st2
00007EEE  DADA              fcmovu st2
00007EF0  DADA              fcmovu st2
00007EF2  DADA              fcmovu st2
00007EF4  DADA              fcmovu st2
00007EF6  DADA              fcmovu st2
00007EF8  DADA              fcmovu st2
00007EFA  DADA              fcmovu st2
00007EFC  DADA              fcmovu st2
00007EFE  DADA              fcmovu st2
00007F00  DADA              fcmovu st2
00007F02  DADA              fcmovu st2
00007F04  DADA              fcmovu st2
00007F06  DADA              fcmovu st2
00007F08  DADA              fcmovu st2
00007F0A  DADA              fcmovu st2
00007F0C  DADA              fcmovu st2
00007F0E  DADA              fcmovu st2
00007F10  DADA              fcmovu st2
00007F12  DADA              fcmovu st2
00007F14  DADA              fcmovu st2
00007F16  DADA              fcmovu st2
00007F18  DADA              fcmovu st2
00007F1A  DADA              fcmovu st2
00007F1C  DADA              fcmovu st2
00007F1E  DADA              fcmovu st2
00007F20  DADA              fcmovu st2
00007F22  DADA              fcmovu st2
00007F24  DADA              fcmovu st2
00007F26  DADA              fcmovu st2
00007F28  DADA              fcmovu st2
00007F2A  DADA              fcmovu st2
00007F2C  DADA              fcmovu st2
00007F2E  DADA              fcmovu st2
00007F30  DADA              fcmovu st2
00007F32  DADA              fcmovu st2
00007F34  DADA              fcmovu st2
00007F36  DADA              fcmovu st2
00007F38  DADA              fcmovu st2
00007F3A  DADA              fcmovu st2
00007F3C  DADA              fcmovu st2
00007F3E  DADA              fcmovu st2
00007F40  DADA              fcmovu st2
00007F42  DADA              fcmovu st2
00007F44  DADA              fcmovu st2
00007F46  DADA              fcmovu st2
00007F48  DADA              fcmovu st2
00007F4A  DADA              fcmovu st2
00007F4C  DADA              fcmovu st2
00007F4E  DADA              fcmovu st2
00007F50  DADA              fcmovu st2
00007F52  DADA              fcmovu st2
00007F54  DADA              fcmovu st2
00007F56  DADA              fcmovu st2
00007F58  DADA              fcmovu st2
00007F5A  DADA              fcmovu st2
00007F5C  DADA              fcmovu st2
00007F5E  DADA              fcmovu st2
00007F60  DADA              fcmovu st2
00007F62  DADA              fcmovu st2
00007F64  DADA              fcmovu st2
00007F66  DADA              fcmovu st2
00007F68  DADA              fcmovu st2
00007F6A  DADA              fcmovu st2
00007F6C  DADA              fcmovu st2
00007F6E  DADA              fcmovu st2
00007F70  DADA              fcmovu st2
00007F72  DADA              fcmovu st2
00007F74  DADA              fcmovu st2
00007F76  DADA              fcmovu st2
00007F78  DADA              fcmovu st2
00007F7A  DADA              fcmovu st2
00007F7C  DADA              fcmovu st2
00007F7E  DADA              fcmovu st2
00007F80  DADA              fcmovu st2
00007F82  DADA              fcmovu st2
00007F84  DADA              fcmovu st2
00007F86  DADA              fcmovu st2
00007F88  DADA              fcmovu st2
00007F8A  DADA              fcmovu st2
00007F8C  DADA              fcmovu st2
00007F8E  DADA              fcmovu st2
00007F90  DADA              fcmovu st2
00007F92  DADA              fcmovu st2
00007F94  DADA              fcmovu st2
00007F96  DADA              fcmovu st2
00007F98  DADA              fcmovu st2
00007F9A  DADA              fcmovu st2
00007F9C  DADA              fcmovu st2
00007F9E  DADA              fcmovu st2
00007FA0  DADA              fcmovu st2
00007FA2  DADA              fcmovu st2
00007FA4  DADA              fcmovu st2
00007FA6  DADA              fcmovu st2
00007FA8  DADA              fcmovu st2
00007FAA  DADA              fcmovu st2
00007FAC  DADA              fcmovu st2
00007FAE  DADA              fcmovu st2
00007FB0  DADA              fcmovu st2
00007FB2  DADA              fcmovu st2
00007FB4  DADA              fcmovu st2
00007FB6  DADA              fcmovu st2
00007FB8  DADA              fcmovu st2
00007FBA  DADA              fcmovu st2
00007FBC  DADA              fcmovu st2
00007FBE  DADA              fcmovu st2
00007FC0  DADA              fcmovu st2
00007FC2  DADA              fcmovu st2
00007FC4  DADA              fcmovu st2
00007FC6  DADA              fcmovu st2
00007FC8  DADA              fcmovu st2
00007FCA  DADA              fcmovu st2
00007FCC  DADA              fcmovu st2
00007FCE  DADA              fcmovu st2
00007FD0  DADA              fcmovu st2
00007FD2  DADA              fcmovu st2
00007FD4  DADA              fcmovu st2
00007FD6  DADA              fcmovu st2
00007FD8  DADA              fcmovu st2
00007FDA  DADA              fcmovu st2
00007FDC  DADA              fcmovu st2
00007FDE  DADA              fcmovu st2
00007FE0  DADA              fcmovu st2
00007FE2  DADA              fcmovu st2
00007FE4  DADA              fcmovu st2
00007FE6  DADA              fcmovu st2
00007FE8  DADA              fcmovu st2
00007FEA  DADA              fcmovu st2
00007FEC  DADA              fcmovu st2
00007FEE  DADA              fcmovu st2
00007FF0  DADA              fcmovu st2
00007FF2  DADA              fcmovu st2
00007FF4  DADA              fcmovu st2
00007FF6  DADA              fcmovu st2
00007FF8  DADA              fcmovu st2
00007FFA  DADA              fcmovu st2
00007FFC  DADA              fcmovu st2
00007FFE  DADA              fcmovu st2
00008000  CE                into
00008001  FA                cli
00008002  CE                into
00008003  FA                cli
00008004  CE                into
00008005  FA                cli
00008006  CE                into
00008007  FA                cli
00008008  CE                into
00008009  FA                cli
0000800A  CE                into
0000800B  FA                cli
0000800C  CE                into
0000800D  FA                cli
0000800E  CE                into
0000800F  FA                cli
00008010  CE                into
00008011  FA                cli
00008012  CE                into
00008013  FA                cli
00008014  CE                into
00008015  FA                cli
00008016  CE                into
00008017  FA                cli
00008018  CE                into
00008019  FA                cli
0000801A  CE                into
0000801B  FA                cli
0000801C  CE                into
0000801D  FA                cli
0000801E  CE                into
0000801F  FA                cli
00008020  CE                into
00008021  FA                cli
00008022  CE                into
00008023  FA                cli
00008024  CE                into
00008025  FA                cli
00008026  CE                into
00008027  FA                cli
00008028  CE                into
00008029  FA                cli
0000802A  CE                into
0000802B  FA                cli
0000802C  CE                into
0000802D  FA                cli
0000802E  CE                into
0000802F  FA                cli
00008030  CE                into
00008031  FA                cli
00008032  CE                into
00008033  FA                cli
00008034  CE                into
00008035  FA                cli
00008036  CE                into
00008037  FA                cli
00008038  CE                into
00008039  FA                cli
0000803A  CE                into
0000803B  FA                cli
0000803C  CE                into
0000803D  FA                cli
0000803E  CE                into
0000803F  FA                cli
00008040  CE                into
00008041  FA                cli
00008042  CE                into
00008043  FA                cli
00008044  CE                into
00008045  FA                cli
00008046  CE                into
00008047  FA                cli
00008048  CE                into
00008049  FA                cli
0000804A  CE                into
0000804B  FA                cli
0000804C  CE                into
0000804D  FA                cli
0000804E  CE                into
0000804F  FA                cli
00008050  CE                into
00008051  FA                cli
00008052  CE                into
00008053  FA                cli
00008054  CE                into
00008055  FA                cli
00008056  CE                into
00008057  FA                cli
00008058  CE                into
00008059  FA                cli
0000805A  CE                into
0000805B  FA                cli
0000805C  CE                into
0000805D  FA                cli
0000805E  CE                into
0000805F  FA                cli
00008060  CE                into
00008061  FA                cli
00008062  CE                into
00008063  FA                cli
00008064  CE                into
00008065  FA                cli
00008066  CE                into
00008067  FA                cli
00008068  CE                into
00008069  FA                cli
0000806A  CE                into
0000806B  FA                cli
0000806C  CE                into
0000806D  FA                cli
0000806E  CE                into
0000806F  FA                cli
00008070  CE                into
00008071  FA                cli
00008072  CE                into
00008073  FA                cli
00008074  CE                into
00008075  FA                cli
00008076  CE                into
00008077  FA                cli
00008078  CE                into
00008079  FA                cli
0000807A  CE                into
0000807B  FA                cli
0000807C  CE                into
0000807D  FA                cli
0000807E  CE                into
0000807F  FA                cli
00008080  CE                into
00008081  FA                cli
00008082  CE                into
00008083  FA                cli
00008084  CE                into
00008085  FA                cli
00008086  CE                into
00008087  FA                cli
00008088  CE                into
00008089  FA                cli
0000808A  CE                into
0000808B  FA                cli
0000808C  CE                into
0000808D  FA                cli
0000808E  CE                into
0000808F  FA                cli
00008090  CE                into
00008091  FA                cli
00008092  CE                into
00008093  FA                cli
00008094  CE                into
00008095  FA                cli
00008096  CE                into
00008097  FA                cli
00008098  CE                into
00008099  FA                cli
0000809A  CE                into
0000809B  FA                cli
0000809C  CE                into
0000809D  FA                cli
0000809E  CE                into
0000809F  FA                cli
000080A0  CE                into
000080A1  FA                cli
000080A2  CE                into
000080A3  FA                cli
000080A4  CE                into
000080A5  FA                cli
000080A6  CE                into
000080A7  FA                cli
000080A8  CE                into
000080A9  FA                cli
000080AA  CE                into
000080AB  FA                cli
000080AC  CE                into
000080AD  FA                cli
000080AE  CE                into
000080AF  FA                cli
000080B0  CE                into
000080B1  FA                cli
000080B2  CE                into
000080B3  FA                cli
000080B4  CE                into
000080B5  FA                cli
000080B6  CE                into
000080B7  FA                cli
000080B8  CE                into
000080B9  FA                cli
000080BA  CE                into
000080BB  FA                cli
000080BC  CE                into
000080BD  FA                cli
000080BE  CE                into
000080BF  FA                cli
000080C0  CE                into
000080C1  FA                cli
000080C2  CE                into
000080C3  FA                cli
000080C4  CE                into
000080C5  FA                cli
000080C6  CE                into
000080C7  FA                cli
000080C8  CE                into
000080C9  FA                cli
000080CA  CE                into
000080CB  FA                cli
000080CC  CE                into
000080CD  FA                cli
000080CE  CE                into
000080CF  FA                cli
000080D0  CE                into
000080D1  FA                cli
000080D2  CE                into
000080D3  FA                cli
000080D4  CE                into
000080D5  FA                cli
000080D6  CE                into
000080D7  FA                cli
000080D8  CE                into
000080D9  FA                cli
000080DA  CE                into
000080DB  FA                cli
000080DC  CE                into
000080DD  FA                cli
000080DE  CE                into
000080DF  FA                cli
000080E0  CE                into
000080E1  FA                cli
000080E2  CE                into
000080E3  FA                cli
000080E4  CE                into
000080E5  FA                cli
000080E6  CE                into
000080E7  FA                cli
000080E8  CE                into
000080E9  FA                cli
000080EA  CE                into
000080EB  FA                cli
000080EC  CE                into
000080ED  FA                cli
000080EE  CE                into
000080EF  FA                cli
000080F0  CE                into
000080F1  FA                cli
000080F2  CE                into
000080F3  FA                cli
000080F4  CE                into
000080F5  FA                cli
000080F6  CE                into
000080F7  FA                cli
000080F8  CE                into
000080F9  FA                cli
000080FA  CE                into
000080FB  FA                cli
000080FC  CE                into
000080FD  FA                cli
000080FE  CE                into
000080FF  FA                cli
00008100  CE                into
00008101  FA                cli
00008102  CE                into
00008103  FA                cli
00008104  CE                into
00008105  FA                cli
00008106  CE                into
00008107  FA                cli
00008108  CE                into
00008109  FA                cli
0000810A  CE                into
0000810B  FA                cli
0000810C  CE                into
0000810D  FA                cli
0000810E  CE                into
0000810F  FA                cli
00008110  CE                into
00008111  FA                cli
00008112  CE                into
00008113  FA                cli
00008114  CE                into
00008115  FA                cli
00008116  CE                into
00008117  FA                cli
00008118  CE                into
00008119  FA                cli
0000811A  CE                into
0000811B  FA                cli
0000811C  CE                into
0000811D  FA                cli
0000811E  CE                into
0000811F  FA                cli
00008120  CE                into
00008121  FA                cli
00008122  CE                into
00008123  FA                cli
00008124  CE                into
00008125  FA                cli
00008126  CE                into
00008127  FA                cli
00008128  CE                into
00008129  FA                cli
0000812A  CE                into
0000812B  FA                cli
0000812C  CE                into
0000812D  FA                cli
0000812E  CE                into
0000812F  FA                cli
00008130  CE                into
00008131  FA                cli
00008132  CE                into
00008133  FA                cli
00008134  CE                into
00008135  FA                cli
00008136  CE                into
00008137  FA                cli
00008138  CE                into
00008139  FA                cli
0000813A  CE                into
0000813B  FA                cli
0000813C  CE                into
0000813D  FA                cli
0000813E  CE                into
0000813F  FA                cli
00008140  CE                into
00008141  FA                cli
00008142  CE                into
00008143  FA                cli
00008144  CE                into
00008145  FA                cli
00008146  CE                into
00008147  FA                cli
00008148  CE                into
00008149  FA                cli
0000814A  CE                into
0000814B  FA                cli
0000814C  CE                into
0000814D  FA                cli
0000814E  CE                into
0000814F  FA                cli
00008150  CE                into
00008151  FA                cli
00008152  CE                into
00008153  FA                cli
00008154  CE                into
00008155  FA                cli
00008156  CE                into
00008157  FA                cli
00008158  CE                into
00008159  FA                cli
0000815A  CE                into
0000815B  FA                cli
0000815C  CE                into
0000815D  FA                cli
0000815E  CE                into
0000815F  FA                cli
00008160  CE                into
00008161  FA                cli
00008162  CE                into
00008163  FA                cli
00008164  CE                into
00008165  FA                cli
00008166  CE                into
00008167  FA                cli
00008168  CE                into
00008169  FA                cli
0000816A  CE                into
0000816B  FA                cli
0000816C  CE                into
0000816D  FA                cli
0000816E  CE                into
0000816F  FA                cli
00008170  CE                into
00008171  FA                cli
00008172  CE                into
00008173  FA                cli
00008174  CE                into
00008175  FA                cli
00008176  CE                into
00008177  FA                cli
00008178  CE                into
00008179  FA                cli
0000817A  CE                into
0000817B  FA                cli
0000817C  CE                into
0000817D  FA                cli
0000817E  CE                into
0000817F  FA                cli
00008180  CE                into
00008181  FA                cli
00008182  CE                into
00008183  FA                cli
00008184  CE                into
00008185  FA                cli
00008186  CE                into
00008187  FA                cli
00008188  CE                into
00008189  FA                cli
0000818A  CE                into
0000818B  FA                cli
0000818C  CE                into
0000818D  FA                cli
0000818E  CE                into
0000818F  FA                cli
00008190  CE                into
00008191  FA                cli
00008192  CE                into
00008193  FA                cli
00008194  CE                into
00008195  FA                cli
00008196  CE                into
00008197  FA                cli
00008198  CE                into
00008199  FA                cli
0000819A  CE                into
0000819B  FA                cli
0000819C  CE                into
0000819D  FA                cli
0000819E  CE                into
0000819F  FA                cli
000081A0  CE                into
000081A1  FA                cli
000081A2  CE                into
000081A3  FA                cli
000081A4  CE                into
000081A5  FA                cli
000081A6  CE                into
000081A7  FA                cli
000081A8  CE                into
000081A9  FA                cli
000081AA  CE                into
000081AB  FA                cli
000081AC  CE                into
000081AD  FA                cli
000081AE  CE                into
000081AF  FA                cli
000081B0  CE                into
000081B1  FA                cli
000081B2  CE                into
000081B3  FA                cli
000081B4  CE                into
000081B5  FA                cli
000081B6  CE                into
000081B7  FA                cli
000081B8  CE                into
000081B9  FA                cli
000081BA  CE                into
000081BB  FA                cli
000081BC  CE                into
000081BD  FA                cli
000081BE  CE                into
000081BF  FA                cli
000081C0  CE                into
000081C1  FA                cli
000081C2  CE                into
000081C3  FA                cli
000081C4  CE                into
000081C5  FA                cli
000081C6  CE                into
000081C7  FA                cli
000081C8  CE                into
000081C9  FA                cli
000081CA  CE                into
000081CB  FA                cli
000081CC  CE                into
000081CD  FA                cli
000081CE  CE                into
000081CF  FA                cli
000081D0  CE                into
000081D1  FA                cli
000081D2  CE                into
000081D3  FA                cli
000081D4  CE                into
000081D5  FA                cli
000081D6  CE                into
000081D7  FA                cli
000081D8  CE                into
000081D9  FA                cli
000081DA  CE                into
000081DB  FA                cli
000081DC  CE                into
000081DD  FA                cli
000081DE  CE                into
000081DF  FA                cli
000081E0  CE                into
000081E1  FA                cli
000081E2  CE                into
000081E3  FA                cli
000081E4  CE                into
000081E5  FA                cli
000081E6  CE                into
000081E7  FA                cli
000081E8  CE                into
000081E9  FA                cli
000081EA  CE                into
000081EB  FA                cli
000081EC  CE                into
000081ED  FA                cli
000081EE  CE                into
000081EF  FA                cli
000081F0  CE                into
000081F1  FA                cli
000081F2  CE                into
000081F3  FA                cli
000081F4  CE                into
000081F5  FA                cli
000081F6  CE                into
000081F7  FA                cli
000081F8  CE                into
000081F9  FA                cli
000081FA  CE                into
000081FB  FA                cli
000081FC  CE                into
000081FD  FA                cli
000081FE  CE                into
000081FF  FA                cli
