///
// Power	Number	NUM	NUM+NUM	NUM	POWER
// 4		2		2 	4		4	3
// 3		4		4	8		8	2
// 2		8		8	8		16	1
// 16		16		16	32		32	0
///
                    INP 
                    STA varNum

                    INP 
                    BRZ lbZeroPowerCase
                    STA Pow

                    SUB valOne
                    STA Pow

                    LDA varNum
                    BRZ lbZeroNumberCase

lb_Power			LDA varNum

                    ADD varNum
                    STA varNum

                    LDA Pow
                    SUB valOne
                    STA POWER

                    BRZ lb_END
                    BRP lb_Power


lbZeroNumberCase	LDA NumZ
                    OUT
                    BRA lb_end 

lbZeroPowerCase		LDA PowZ
                    OUT

lb_end 				OUT
                    HLT
valOne		DAT 1
varNum		DAT
NumZ		DAT 0
POW		DAT
PowZ		DAT 1

lb_Multiply     LDA MTY_TOTAL
                ADD NUM
                STA varCount

                //LDA MtyNum
                //SUB IValue
                //STA MtyNum

                BBZ lb_PowEND
                BRP lb_Multiply

                LDA POWER
                SUB IValue
                STA POWER

                BRP lb_Power

lb_PEND         LDA POWER_TOTAL
                LDA MTY_TOTAL
                OUT
                HLT
NUM             DAT 0
POWER           DAT 0
POWER_TOTAL     DAT 0


lb_Power        LDA POWER_TOTAL

lb_Multiply     LDA MTY_TOTAL

                ADD NUM
                STA varCount

                //LDA MtyNum
                //SUB IValue
                //STA MtyNum

                BBZ lb_PowEND
                BRP lb_Multiply




                LDA POWER
                SUB IValue
                STA POWER

                BRP lb_Power

                lb_PEND

                LDA POWER_TOTAL
                LDA MTY_TOTAL
                OUT
                HLT
NUM             DAT
POWER           DAT
POWER_TOTAL     DAT 0
MtyNum          DAT
valOne          DAT 1
PowerTotal      DAT 0;
reset           DAT 0;


                //LDA reset
                //STA TOTAL


//lb_Multiply    LDA TOTAL
                ADD NUM
                STA varCount

                //LDA MtyNum
                //SUB IValue
                //STA MtyNum

                BBZ lb_PowEND
                BRP lb_Multiply

PowEnd          LDA powerTOTAL
