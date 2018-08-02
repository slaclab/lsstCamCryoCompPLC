$Name Refrigeration Cold Compressor Protection

! Obj_Source
;LSST Refrigeration Cold Compressor Protection

#Include <func06.fps>

! Id_Pluto_Double[D45]:0=000000000010


! I0.0=DisTempI                         ;4-20 mA compressor temperature 
! I0.1=SucTempI                         ;4-20 mA suction temperature
! I0.3=DisPressI                        ;4-20 mA discharge pressure
! I0.4=SucPressI                        ;4-20 mA suction pressure
! I0.5=OilLevel                         ;4-20 mA oil level
! I0.6=VoltageI                         ;0-10 V input power rms voltage
! I0.7=CurrentI                         ;0-10 V compressor rms current
! Q0.0=CompOn                           ;Compressor power
! Q0.1=HeatOn                           ;Heater power

! Pgm_Pluto:0
! Instruction_Set_3
! Ext_comm:0=Device 0,Packet 0, 1000
;Pluto for the Compressor Control Box
;Inputs: 
;Outputs: 
;

! I0.0,Analog,10V
! I0.1,Analog,10V
! I0.3,Analog,20mA
! I0.4,Analog,20mA
! I0.5,Analog,10V
! I0.6,Analog,10V
! I0.7,Analog,10V
! I0.30,C_Pulse,Non_Inv
! I0.31,A_Pulse,Non_Inv
! I0.32,B_Pulse,Non_Inv
! I0.33,A_Pulse,Non_Inv
! I0.34,C_Pulse,Non_Inv
! Q0.10,A_Pulse
! Q0.11,B_Pulse
! Q0.12,C_Pulse
! Q0.13,Static
! Q0.14,Static
! Q0.15,Static

! I0.30=AfterCoolerI                    ;After-Cooler Thermostat, pattern C
! I0.31=ExtPermI                        ;External permit, pattern A
! I0.32=KeyOnI                          ;key switch, on, pattern B
! I0.33=ResetI                          ;Reset button, pattern A
! I0.34=SmokeI                          ;Smoke detector, pattern C
! Q0.10=A_Power                         ;Pattern A
! Q0.11=B_Power                         ;Pattern B
! Q0.12=C_Power                         ;Pattern C
! Q0.13=Led1                            ;Power Status LED
! Q0.14=Led2                            ;Compressor Status LED
! Q0.15=Led3                            ;Heater Status LED
! M0.0=DisTempValid                     ;Compressor Discharge Temperature Valid
! M0.1=SucTempValid                     ;Suction temperature Valid
! M0.2=OilLevelValid                    ;Oil Level Valid
! M0.3=DisPressValid                    ;Discharge Pressure Valid
! M0.4=SucPressValid                    ;Suction Pressure Valid
! M0.5=CurrentValid                     ;Compressor current Valid
! M0.6=VoltageValid                     ;Compressor voltage Valid
! M0.10=DisTempBad30min                 ;Discharge temperature over 125C for more than 30 minutes
! M0.11=DisTempOKLatch                  ;Discharge temperature not high
! M0.12=DisTempOKLatchStatus            ;
! M0.13=DisTempOKLatchNeedsReset        ;
! M0.21=SucTempOKLatch                  ;Suction Temperature not low
! M0.22=SucTempOKLatchStatus            ;
! M0.23=SucTempOKLatchNeedsReset        ;
! M0.31=OilLevelOKLatch                 ;Oil Level not low
! M0.32=OilLevelOKLatchStatus           ;
! M0.33=OilLevelOKLatchNeedsReset       ;
! M0.40=DisPress6hourStartup            ;Discharge pressure over 440 psia for more than 10 minutes
! M0.41=DisPressOKLatch                 ;Discharge Pressure not high
! M0.42=DisPressOKLatchStatus           ;
! M0.43=DisPressOKLatchNeedsReset       ;
! M0.51=SucPressOKLatch                 ;Suction Pressure not high
! M0.52=SucPressOKLatchStatus           ;
! M0.53=SucPressOKLatchNeedsReset       ;
! M0.60=PowerBad5min                    ;
! M0.61=PowerOKLatch                    ;Compressor power not High
! M0.62=PowerOKLatchStatus              ;
! M0.63=PowerOKLatchNeedsReset          ;
! M0.71=ExtPermLatch                    ;External Permit Latch
! M0.72=ExtPermLatchStatus              ;
! M0.73=ExtPermLatchNeedsReset          ;
! M0.81=SmokeOKLatch                    ;
! M0.82=SmokeOKLatchStatus              ;
! M0.83=SmokeOKLatchNeedsReset          ;
! M0.90=IntPerm                         ;CCS Compressor Permit
! M0.91=CompEnable                      ; Compressor power enabled
! M0.92=CompOnInterlocks                ;
! M0.93=CompPermit                      ;
! M0.94=CompOn2minDelay                 ;
! M0.95=CompOnWaiting                   ;
! M0.96=HeaterIntPerm                   ;
! M0.97=HeatEnable                      ;
! M0.98=HeatInterlocks                  ;
! M0.100=ResetGate                      ;
! M0.101=MasReset                       ;
! M0.105=LightsOn                       ;Enable indicating lights on the control box
! M0.111=AfterCoolerOKLatch             ;
! M0.112=AfterCoolerOKLatchStatus       ;
! M0.113=AfterCoolerOKLatchNeedsReset   ;
! M0.150=ToGateOne                      ;
! M0.151=ToGateTwo                      ;
! M0.152=ToGateThree                    ;
! M0.153=ToGateFour                     ;
! M0.154=ToGateFive                     ;
! M0.155=ToGateSix                      ;
! M0.156=ToGateSeven                    ;
! M0.157=ToGateEight                    ;
! M0.158=ToGateNine                     ;
! M0.159=ToGateTen                      ;
! M0.160=ToGateEleven                   ;
! M0.161=ToGateTwelve                   ;
! M0.162=ToGateThirteen                 ;
! M0.163=ToGateFourteen                 ;
! M0.164=ToGateFifteen                  ;
! R0.0=DisTempVolt                      ;Discharge temperature voltage
! R0.1=DisTemp                          ;Discharge temperature
! R0.2=SucTempVolt                      ;Suction temperature voltage
! R0.3=SucTemp                          ;Suction temperature
! R0.4=OilLevelVolt                     ;Oil Level voltage
! R0.5=LiqTemp                          ;Oil Level
! R0.6=DisPressCur                      ;Discharge pressure current
! R0.7=DisPress                         ;Discharge pressure
! R0.8=SucPressCur                      ;Suction pressure current
! R0.9=SucPress                         ;Suction pressure
! R0.10=CurrentVolt                     ;Compressor current voltage
! R0.11=Current                         ;Compressor current
! R0.12=VoltageVolt                     ;Compressor voltage voltage
! R0.13=Voltage                         ;Compressor voltage
! R0.20=WaitingSecs                     ;Seconds to activate the relay
! DR0.50=DCurrent                       ;Double precision compressor current
! DR0.52=DVoltage                       ;Double precision compressor voltage
! DR0.56=DPower                         ;Compressor power


S0.0_0=Logic
MasReset=P(ResetGate)+P(ResetI)
DisTempValid=ReadVoltage(0,-5000,15000,DisTempVolt,DisTemp)
DisTempBad30min=Upcount(SM_1Hz,(DisTemp<=12500)+MasReset,1800)
;
;Discharge temperature over 125C for more than 30 minutes
;
DisTempOKLatch=StartT(((DisTemp<=13000)*/DisTempBad30min+(DisTemp<=12500))*DisTempValid,MasReset,1,DisTempOKLatchStatus)
DisTempOKLatchNeedsReset=((DisTemp<=13000)*/DisTempBad30min+(DisTemp<=12500))*DisTempValid*/DisTempOKLatch
SucTempValid=ReadVoltage(1,-5000,15000,SucTempVolt,SucTemp)
SucTempOKLatch=StartT((SucTemp>-1300)*SucTempValid,MasReset,1,SucTempOKLatchStatus)
SucTempOKLatchNeedsReset=(SucTemp>-1300)*SucTempValid*/SucTempOKLatch
DisPressValid=ReadCurrent(3,0,10000,DisPressCur,DisPress)
DisPress6hourStartup=Upcount(SM_1Hz,/CompOn,21600)
DisPressOKLatch=StartT(((DisPress<=4650)*DisPress6hourStartup+(DisPress<=5400)*/DisPress6hourStartup)*DisPressValid,MasReset,1,DisPressOKLatchStatus)
DisPressOKLatchNeedsReset=((DisPress<=4650)*DisPress6hourStartup+(DisPress<=5400)*/DisPress6hourStartup)*DisPressValid*/DisPressOKLatch
SucPressValid=ReadCurrent(4,0,10000,SucPressCur,SucPress)
CurrentValid=ReadVoltage(6,0,5000,CurrentVolt,Current)
VoltageValid=ReadVoltage(7,0,500,VoltageVolt,Voltage)
(DCurrent=Current)
(DVoltage=Voltage)
(DPower=DCurrent*DVoltage)
PowerBad5min=Upcount(SM_1Hz,(DPower<250000)+MasReset,300)
PowerOKLatch=StartT(((DPower<180000)+(DPower<250000)*/PowerBad5min)*CurrentValid*VoltageValid,MasReset,1,PowerOKLatchStatus)
PowerOKLatchNeedsReset=((DPower<180000)+(DPower<250000)*/PowerBad5min)*currentValid*VoltageValid*/PowerOKLatch
ExtPermLatch=StartT(ExtPermI,MasReset,1,ExtPermLatchStatus)
ExtPermLatchNeedsReset=ExtPermI*/ExtPermLatch
afterCoolerOKLatch=StartT(AfterCoolerI,MasReset,1,AfterCoolerOKLatchNeedsReset)
AfterCoolerOKLatchNeedsReset=AfterCoolerI*/AfterCoolerOKLatch
OilLevelValid=ReadVoltage(5,0,10000,OilLevelVolt,LiqTemp)
OilLevelOKLatch=StartT((OilLevelVolt>625)*OilLevelValid,MasReset,1,OilLevelOKLatchStatus)
OilLevelOKLatchNeedsReset=(OilLevelVolt>625)*OilLevelValid*/OilLevelOKLatch
SmokeOKLatch=StartT(SmokeI,MasReset,1,SmokeOKLatchStatus)
SmokeOKLatchNeedsReset=SmokeI*/SmokeOKLatch
CompOnInterlocks=ExtPermLatch*DisTempOKLatch*SmokeOKLatch*DisPressOKLatch*DisTempOKLatch*SucTempOKLatch*OilLevelOKLatch*PowerOKLatch*afterCoolerOKLatch
CompEnable=KeyOnI*IntPerm
CompPermit=compOnInterlocks*compEnable
CompOn2minDelay=Downcount(SM_1Hz,/CompPermit,120)
CompOn=CompOn2minDelay
CompOnWaiting=/CompOn2minDelay*compPermit
(WaitingSecs-=1)=SM_1Hz*compOnWaiting
(WaitingSecs=120)=/CompOnWaiting
heatEnable=HeaterIntPerm*keyOnI
HeatInterlocks=DisPressOKLatch*SucTempOKLatch*smokeoKLatch*/CompOn
HeatOn=heatEnable*heatinterlocks

S0.1_0=Communication
ResetGate=Ext_Sig(0,0)
;
;INPUTS
;
IntPerm=Ext_Sig(1,0)
lightsOn=Ext_Sig(2,0)
HeaterIntPerm=Ext_Sig(3,0)
S(LightsOn)
;
;
;REMOVE!!!!
;
;
Led2=(CompEnable*/ExtPermLatchStatus*/DisTempOKLatchStatus*/PowerOKLatchStatus*/DisPressOKLatchStatus*/DisTempOKLatchStatus*/SucTempOKLatchStatus*/OilLevelOKLatchStatus*/AfterCoolerOKLatchStatus*/SmokeOKLatchStatus+CompOn+CompOnWaiting*SM_FastFlash)*LightsOn
;
;OUTPUTS
;
;LEDs
;
;Compressor status LED
;
Led3=(HeatEnable*/DisPressOKLatchStatus*/SucTempOKLatchStatus*/smokeokLatchstatus*CompOn+HeatOn)*LightsOn
;
;Heater status LED
;
Led1=(Voltage>21000)*(Voltage<23000)*LightsOn
;Power Status LED
ToGateOne=ToGateway_User_A(SM_10Hz,1,DisTempVolt,DisTemp)
;
;MODBUS
;
ToGateTwo=ToGateway_User_A(SM_10Hz,2,SucTempVolt,SucTemp)
ToGateThree=ToGateway_User_A(P(/ToGateOne),3,OilLevelVolt,LiqTemp)
ToGateFour=ToGateway_User_A(ToGateTwo,4,DisPressCur,DisPress)
ToGateFive=ToGateway_User_A(ToGateThree,5,SucPressCur,SucPress)
ToGateSix=ToGateway_User_A(ToGateFour,6,CurrentVolt,Current)
ToGateSeven=ToGateway_User_A(ToGateFive,7,VoltageVolt,Voltage)
ToGateEight=ToGateway_User_A(ToGateSix,8,WaitingSecs,0)
ToGateNine=ToGateway_User_A(ToGateSeven,9,0,0)
ToGateTen=ToGateway_User_A(ToGateEight,10,DPower.Lo,DPower.Hi)
ToGateEleven=ToGateway_User_C(ToGateNine,11,DisTempValid,SucTempValid,OilLevelValid,DisPressValid,SucPressValid,CurrentValid,VoltageValid,IntPerm,CompEnable,CompOnInterlocks,CompPermit,CompOn2minDelay,CompOnWaiting,CompOn,0,0,0)
ToGateTwelve=ToGateway_User_C(ToGateTen,12,DisTempBad30min,DisTempOKLatch,DisTempOKLatchStatus,DisTempOKLatchNeedsReset,0,M0.20,SucTempOKLatch,SucTempOKLatchStatus,SucTempOKLatchNeedsReset,0,M0.30,OilLevelOKLatch,OilLevelOKLatchStatus,OilLevelOKLatchNeedsReset,0,0,0)
ToGateThirteen=ToGateway_User_C(ToGateEleven,13,DisPress6hourStartup,DisPressOKLatch,DisPressOKLatchStatus,DisPressOKLatchNeedsReset,0,M0.50,SucPressOKLatch,SucPressOKLatchStatus,SucPressOKLatchNeedsReset,0,PowerBad5min,PowerOKLatch,PowerOKLatchStatus,PowerOKLatchNeedsReset,0,0,0)
ToGateFourteen=ToGateway_User_C(ToGateTwelve,14,M0.70,ExtPermLatch,ExtPermLatchStatus,ExtPermLatchNeedsReset,0,M0.80,SmokeOKLatch,SmokeOKLatchStatus,SmokeOKLatchNeedsReset,0,M0.110,AfterCoolerOKLatch,AfterCoolerOKLatchStatus,AfterCoolerOKLatchNeedsReset,0,0,0)
ToGateFifteen=ToGateway_User_C(ToGateThirteen,15,ResetGate,MasReset,LightsOn,KeyOnI,ExtPermI,ResetI,SmokeI,Led1,Led2,Led3,HeaterIntPerm,HeatEnable,HeatInterlocks,HeatOn,0,AfterCoolerI,0)
