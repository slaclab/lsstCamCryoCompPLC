$Name Refrigeration Cold Compressor Protection

! Obj_Source
;LSST Refrigeration Cold Compressor Protection

#Include <func06.fps>
#Include "slac.fps"

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
! Ext_comm:0=Device 0,Packet 0
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
! M0.10                                 ;Discharge temperature over 125C for more than 30 minutes
! M0.11=DisTempOKLatch                  ;Discharge temperature not high
! M0.12=DisTempOKLatchStatus            ;
! M0.13=DisTempOKLatchNeedsReset        ;
! M0.14=DisTempWarn                     ;
! M0.21=SucTempOKLatch                  ;Suction Temperature not low
! M0.22=SucTempOKLatchStatus            ;
! M0.23=SucTempOKLatchNeedsReset        ;
! M0.31=OilLevelOKLatch                 ;Oil Level not low
! M0.32=OilLevelOKLatchStatus           ;
! M0.33=OilLevelOKLatchNeedsReset       ;
! M0.40=DisPress8hourStartup            ;
! M0.41=DisPressOKLatch                 ;Discharge Pressure not high
! M0.42=DisPressOKLatchStatus           ;
! M0.43=DisPressOKLatchNeedsReset       ;
! M0.44=DisPressWarn                    ;
! M0.61=PowerOKLatch                    ;Compressor power not High
! M0.62=PowerOKLatchStatus              ;
! M0.63=PowerOKLatchNeedsReset          ;
! M0.64=PowerBadWarn                    ;
! M0.71=ExtPermLatch                    ;External Permit Latch
! M0.72=ExtPermLatchStatus              ;
! M0.73=ExtPermLatchNeedsReset          ;
! M0.81=SmokeOKLatch                    ;
! M0.82=SmokeOKLatchStatus              ;
! M0.83=SmokeOKLatchNeedsReset          ;
! M0.90=IntPerm                         ;CCS Compressor Permit
! M0.91=CompEnable                      ; Compressor power enabled
! M0.92=CompOnInterlocks                ;
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
! M0.114=CurrentSensorErrorLatch        ;
! M0.115=FlashLed1                      ;
! M0.120=CompOn30sOn                    ;
! M0.121=SensorsValidLatch              ;
! M0.122=SensorsValidLatchStatus        ;
! M0.128=SensorsValidLatchNeedsReset    ;
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
! R0.21=SecondsTo8Hours                 ;
! DR0.50=DCurrent                       ;Double precision compressor current
! DR0.52=DVoltage                       ;Double precision compressor voltage
! DR0.56=DPower                         ;Compressor power


S0.0_0=Logic
MasReset=ResetGate+ResetI
DisTempValid=ReadVoltage(0,-10000,15000,DisTempVolt,DisTemp)
;Temp 10E-2 C
DisTempValid=DisTempValid*(DisTempVolt>1500)
DisTempOKLatch=DoubleLatchWithDelay((DisTemp<13000)*DisTempValid,2,(DisTemp<12500)*DisTempValid,1800,MasReset,DisTempOKLatchStatus,DisTempOKLatchNeedsReset,DisTempWarn)
SucTempValid=ReadVoltage(1,-10000,15000,SucTempVolt,SucTemp)
;Temp 10E-2 C
SucTempValid=SucTempValid*(SucTempVolt>1500)
SucTempOKLatch=LatchWithDelay(SucTempOKLatchStatus,SucTempOKLatchNeedsReset,0,(SucTemp>-1300)*SucTempValid,2,MasReset,0,0)
DisPressValid=ReadCurrent(3,0,7500,DisPressCur,DisPress)
;Pressure  10E1 psi Omega PX429-750AI 
DisPressValid=DisPressValid*(DisPressCur>3000)
;Pressure readout invalid if < 3mA
DisPress8hourStartup=Upcount(SM_1Hz,/CompOn,28800)
DisPressOKLatch=LatchWithDelay(DisPressOKLatchStatus,DisPressOKLatchNeedsReset,0,((DisPress<=5400)*/DisPress8hourStartup+(DisPress<=4650)*DisPress8hourStartup)*DisPressValid,2,MasReset,0,0)
SucPressValid=ReadCurrent(4,0,5000,SucPressCur,SucPress)
;Pressure  10E1 psi Omega PX429-500AI 
SucPressValid=SucPressValid*(SucPressCur>3000)
;Pressure readout invalid if < 3mA
VoltageValid=ReadVoltage(6,0,5000,VoltageVolt,Voltage)
;Voltage 10E1 V
VoltageValid=(VoltageVolt>30)*VoltageValid
;If Voltage Readout is 0 it means there is a problem with the voltage readout.
CurrentValid=ReadVoltage(7,0,5000,CurrentVolt,Current)*/CurrentSensorErrorLatch
;Current  10E2 A
S(CurrentSensorErrorLatch)=CompOn30sOn*(CurrentVolt<30)
;If Current Readout is 0 30s after the compressor is one it means there is a problem with the current readout, the 
;compressor or the relay.
R(CurrentSensorErrorLatch)=MasReset+(CurrentVolt>=30)
SensorsValidLatch=StartT(CurrentValid*VoltageValid*DisTempValid*SucTempValid*DisPressValid*OilLevelValid,MasReset,1,SensorsValidLatchStatus)
;Current or Voltage redout error
SensorsValidLatchNeedsReset=CurrentValid*VoltageValid*/SensorsValidLatch*DisTempValid*SucTempValid*OilLevelValid*DisPressValid*SUCPRESSValid
(DVoltage=Voltage)
;Calculate power
(DCurrent=Current)
(DPower=DCurrent*DVoltage)
;Power 10E-3V
PowerOKLatch=DoubleLatchWithDelay((DPower<2500000)*CurrentValid*VoltageValid,2,(DPower<1800000)*CurrentValid*VoltageValid,300,MasReset,PowerOKLatchStatus,PowerOKLatchNeedsReset,PowerBadWarn)
ExtPermLatch=StartT(ExtPermI,MasReset,1,ExtPermLatchStatus)
;External Permit
ExtPermLatchNeedsReset=ExtPermI*/ExtPermLatch
AfterCoolerOKLatch=StartT(AfterCoolerI,MasReset,1,AfterCoolerOKLatchStatus)
;After Cooler Thermostat
AfterCoolerOKLatchNeedsReset=AfterCoolerI*/AfterCoolerOKLatch
OilLevelValid=ReadVoltage(5,0,10000,OilLevelVolt,LiqTemp)
;Oil Level 
OilLevelValid=OilLevelValid*(OilLevelVolt>30)
OilLevelOKLatch=LatchWithDelay(OilLevelOKLatchStatus,OilLevelOKLatchNeedsReset,0,(OilLevelVolt>600)*OilLevelValid,2,MasReset,0,0)
SmokeOKLatch=StartT(SmokeI,MasReset,1,SmokeOKLatchStatus)
;No smoke
SmokeOKLatchNeedsReset=SmokeI*/SmokeOKLatch
CompOnInterlocks=ExtPermLatch*DisTempOKLatch*SmokeOKLatch*DisPressOKLatch*DisTempOKLatch*SucTempOKLatch*OilLevelOKLatch*PowerOKLatch*AfterCoolerOKLatch*SensorsValidLatch
;Compressor ON Interlocks
CompEnable=KeyOnI*IntPerm
;Compressor ON manual Permits
CompOn=CompOnInterlocks*CompEnable
;Compressor ON
CompOn2minDelay=Downcount(SM_1Hz,/CompOn,133)
;Delay Relay timer counter (just to display purpose)
CompOn30sOn=Downcount(SM_1Hz,/CompOn2minDelay,30)
;30s after the delay relay is activated
DisPress8hourStartup=Downcount(SM_1Hz,/CompOn2minDelay,28800)
;6h after the delay relay is activated
(SecondsTo8Hours-=1)=SM_1Hz*CompOn2minDelay
(SecondsTo8Hours=28800)=/CompOn2minDelay+DisPress8hourStartup
CompOnWaiting=/CompOn2minDelay*compOn
(WaitingSecs-=1)=SM_1Hz*compOnWaiting
(WaitingSecs=120)=/CompOnWaiting
HeatEnable=HeaterIntPerm*KeyOnI
;Heater ON manual permits
HeatInterlocks=DisTempoKLatch*SucTempOKLatch*SmokeOKLatch*/CompOn*SensorsValidLatch
;Heater ON Interlock
HeatOn=HeatEnable*HeatInterlocks
;Heater ON 

S0.1_0=Communication
ResetGate=Ext_Sig(0,0)
;
;INPUTS
;
IntPerm=Ext_Sig(1,0)
lightsOn=Ext_Sig(2,0)
HeaterIntPerm=Ext_Sig(3,0)
Led2=(CompEnable*/ExtPermLatchStatus*/DisTempOKLatchStatus*/PowerOKLatchStatus*/DisPressOKLatchStatus*/DisTempOKLatchStatus*/SucTempOKLatchStatus*/OilLevelOKLatchStatus*/AfterCoolerOKLatchStatus*/SmokeOKLatchStatus*/CompOnWaiting+CompOn*/CompOnWaiting+CompOnWaiting*SM_DoubleFlash)*LightsOn
;
;OUTPUTS
;
;LEDs
;
;Compressor status LED
;
Led3=(HeatEnable*/DisPressOKLatchStatus*/SucTempOKLatchStatus*/SmokeOKLatchStatus*/CompOn+HeatOn)*LightsOn
;
;Heater status LED
;
FlashLed1=/SensorsValidLatch*/SM_Flash
;Power Status LED
Led1=LightsOn*/FlashLed1*(SR_ErrorCode=0)+(SR_ErrorCode<>0)*SM_DoubleFlash
ToGateOne=ToGateway_User_A(SM_10Hz,1,DisTempVolt,DisTemp)
;
;MODBUS
;
ToGateTwo=ToGateway_User_A(ToGateOne,2,SucTempVolt,SucTemp)
ToGateThree=ToGateway_User_A(P(/ToGateTwo),3,OilLevelVolt,LiqTemp)
ToGateFour=ToGateway_User_A(P(/ToGateThree),4,DisPressCur,DisPress)
ToGateFive=ToGateway_User_A(P(/ToGateFour),5,SucPressCur,SucPress)
ToGateSix=ToGateway_User_A(P(/ToGateFive),6,CurrentVolt,Current)
ToGateSeven=ToGateway_User_A(P(/ToGateSix),7,VoltageVolt,Voltage)
ToGateEight=ToGateway_User_A(P(/ToGateSeven),8,WaitingSecs,SecondsTo8Hours)
ToGateNine=ToGateway_User_A(P(/ToGateEight),9,0,0)
ToGateTen=ToGateway_User_A(P(/ToGateNine),10,DPower.Lo,DPower.Hi)
ToGateEleven=ToGateway_User_C(P(/ToGateTen),11,DisTempValid,SucTempValid,OilLevelValid,DisPressValid,SucPressValid,CurrentValid,VoltageValid,IntPerm,CompEnable,CompOnInterlocks,0,CompOn2minDelay,CompOnWaiting,CompOn,0,0,SR_appCRC)
ToGateTwelve=ToGateway_User_C(P(/ToGateEleven),12,0,DisTempOKLatch,DisTempOKLatchStatus,DisTempOKLatchNeedsReset,DisTempWarn,0,SucTempOKLatch,SucTempOKLatchStatus,SucTempOKLatchNeedsReset,0,0,OilLevelOKLatch,OilLevelOKLatchStatus,OilLevelOKLatchNeedsReset,0,0,SR_ErrorCode)
ToGateThirteen=ToGateway_User_C(P(/ToGateTwelve),13,DisPress8hourStartup,DisPressOKLatch,DisPressOKLatchStatus,DisPressOKLatchNeedsReset,DisPressWarn,0,SensorsValidLatch,SensorsValidLatchStatus,SensorsValidLatchNeedsReset,CurrentSensorErrorLatch,0,PowerOKLatch,PowerOKLatchStatus,PowerOKLatchNeedsReset,PowerBadWarn,CompOn30sOn,0)
ToGateFourteen=ToGateway_User_C(P(/ToGateThirteen),14,0,ExtPermLatch,ExtPermLatchStatus,ExtPermLatchNeedsReset,0,0,SmokeOKLatch,SmokeOKLatchStatus,SmokeOKLatchNeedsReset,0,0,AfterCoolerOKLatch,AfterCoolerOKLatchStatus,AfterCoolerOKLatchNeedsReset,0,0,0)
ToGateFifteen=ToGateway_User_C(P(/ToGateFourteen),15,ResetGate,MasReset,LightsOn,KeyOnI,ExtPermI,ResetI,SmokeI,Led1,Led2,Led3,HeaterIntPerm,HeatEnable,HeatInterlocks,HeatOn,0,AfterCoolerI,0)
