CoDeSys+>  М         !         @        @   2.3.9.45Ю   @   ConfigExtensionЖ         CommConfigEx7             CommConfigExEnd   MEХ                  IB                    % QB                    %   ME_End   CMй      CM_End   CT┼              CT_End   ME                 IB                    % QB                    %   ME_End   CM.     CM_End   CTJ             CT_End   Pa         P_End   CT|             CT_End   ConfigExtensionEnd?    @                                     FKКe +    @      ════════             ж╫e        ╤╛  @   g   C:\PROGRA~1\CoDeSysForAutomationAlliance\Mitsubishi Electric India Targets\GOC35\Libraries\Standard.lib          CONCAT               STR1               ¤               STR2               ¤                  CONCAT                                         к _  А                  CTD           M             ¤            Variable for CD Edge Detection      CD            ¤            Count Down on rising edge    LOAD            ¤            Load Start Value    PV           ¤            Start Value       Q            ¤            Counter reached 0    CV           ¤            Current Counter Value             к _  А                  CTU           M             ¤             Variable for CU Edge Detection       CU            ¤        
    Count Up    RESET            ¤            Reset Counter to 0    PV           ¤            Counter Limit       Q            ¤            Counter reached the Limit    CV           ¤            Current Counter Value             к _  А                  CTUD           MU             ¤             Variable for CU Edge Detection    MD             ¤             Variable for CD Edge Detection       CU            ¤ 	       
    Count Up    CD            ¤ 
           Count Down    RESET            ¤            Reset Counter to Null    LOAD            ¤            Load Start Value    PV           ¤            Start Value / Counter Limit       QU            ¤            Counter reached Limit    QD            ¤            Counter reached Null    CV           ¤            Current Counter Value             к _  А                  DELETE               STR               ¤               LEN           ¤               POS           ¤                  DELETE                                         к _  А                  F_TRIG           M             ¤ 
                 CLK            ¤            Signal to detect       Q            ¤            Edge detected             к _  А                  FIND               STR1               ¤               STR2               ¤                  FIND                                     к _  А                  INSERT               STR1               ¤               STR2               ¤               POS           ¤                  INSERT                                         к _  А                  LEFT               STR               ¤               SIZE           ¤                  LEFT                                         к _  А                  LEN               STR               ¤                  LEN                                     к _  А                  MID               STR               ¤               LEN           ¤               POS           ¤                  MID                                         к _  А                  R_TRIG           M             ¤ 
                 CLK            ¤            Signal to detect       Q            ¤            Edge detected             к _  А                  REPLACE               STR1               ¤               STR2               ¤               L           ¤               P           ¤                  REPLACE                                         к _  А                  RIGHT               STR               ¤               SIZE           ¤                  RIGHT                                         к _  А                  RS               SET            ¤               RESET1            ¤                  Q1            ¤ 
                       к _  А                  RTC           M             ¤               DiffTime            ¤                  EN            ¤               PDT           ¤                  Q            ¤               CDT           ¤                        к _  А                  SEMA           X             ¤                  CLAIM            ¤ 	              RELEASE            ¤ 
                 BUSY            ¤                        к _  А                  SR               SET1            ¤               RESET            ¤                  Q1            ¤ 	                       к _  А                  TOF           M             ¤            internal variable 	   StartTime            ¤            internal variable       IN            ¤        ?    starts timer with falling edge, resets timer with rising edge    PT           ¤            time to pass, before Q is set       Q            ¤ 	       2    is FALSE, PT seconds after IN had a falling edge    ET           ¤ 
           elapsed time             к _  А                  TON           M             ¤            internal variable 	   StartTime            ¤            internal variable       IN            ¤        ?    starts timer with rising edge, resets timer with falling edge    PT           ¤            time to pass, before Q is set       Q            ¤ 	       0    is TRUE, PT seconds after IN had a rising edge    ET           ¤ 
           elapsed time             к _  А                  TP        	   StartTime            ¤            internal variable       IN            ¤        !    Trigger for Start of the Signal    PT           ¤        '    The length of the High-Signal in 10ms       Q            ¤ 	           The pulse    ET           ¤ 
       &    The current phase of the High-Signal             к _  А           d   C:\PROGRA~1\CoDeSysForAutomationAlliance\Mitsubishi Electric India Targets\GOC35\Libraries\GOC35.lib&          B_MOVE               SrcPtr           ¤        %   Address of Source, Use Operator ADR()   DstPtr           ¤        #   Address of Dest, Use Operator ADR()   Len           ¤        !   Length in number of bytes to move      B_Move                                      к _  А                  CCLIEFBASIC_MASTER_CONFIG           ucRisingEdge             ¤           Internal bit	      Run            ¤        p    True: GOC is configured as master and starts cyclic communication. False: GOC stops communication as a master.    No_Of_Stations           ¤        @    Number of slave devices to be connected. Range is from 1 to 4.    PTR_CCLIEFBasicStationList    	                      CCLIEFBasicStation                ¤        A    Start address of an array of a 'CCLIEFBasicStation' structure..    Timeout_Period           ¤        E    Time-out period (in msec) for slave station disconnection detection    Counts               Count   ¤        C    No. of retries (3/5/10) for slave station disconnection detection.   ADR_RX           ¤        P    Start address of GOC memory (Marker/ Data) which is received from slaves as RX.   ADR_RY           ¤ 	       P    Start address of GOC memory (Marker/ Data) which is sent from the Master as RY    ADR_RWr           ¤ 
       Q    Start address of GOC memory (Marker/ Data) which is received from slaves as RWr    ADR_RWw           ¤        Q    Start address of GOC memory (Marker/ Data) which is sent from the Master as RWw       Done            ¤        @    True: Configuration successful. False: Error in configuration.    Error           ¤        Э   	0 - No error.
									1 - Station number is invalid i.e. if  Stn_No > 254 or Stn_No = 0.)
									2 - Address overlap error or out of memory area assigned to marker memory or data memory for GOC.
									3 - Number of slave stations OR Number of occupied station are out of range. 
									4 - Same station number configured for more than 1 slave.
									5 - Master station IP address matches with one of slave station number.
									6 - Timeout value is out of range.
									7 - Ethernet COM Unit  Absent
									8 - Count value is other than 3/5/10..
									10 - Master FB is already configured.
									11 - Slave FB is already configured.	            к _  А                  CCLIEFBASIC_MASTER_DIAG               Run            ¤        s    True: FB is executed and displays communication status information and link scan time.  False: FB stops execution    PTR_CCLIEFBasicDiagList    	                        CCLIEFBasic_DiagInfo                ¤        @    Pass address of an array of a 'CCLIEFBasic_DiagInfo' structure    Reset           ¤        Б   Decides rest action. 0 - No reset action, 1 - Reset max min link scan time. 2- Clear error code, 3 - Reset action as per 1 + 2..       Done            ¤        6   True: Execution successful. False: Error in execution.   Max_LinkScanTime           ¤        >    Max value of link scan time from last power on or last Reset.   Min_LinkScanTime           ¤        ?    Min value of link scan time from last power on or last Reset..   Current_LinkScanTime           ¤        t    It is a total time required to complete a cyclic transmission of one way, for all the stations in a single network.   Error           ¤        ╪   	0 -  No Error.
											1 - If CCLIEFBASIC_MASTER_CONFIG FB is not programmed or executed with error.
											2 - If 'Reset ' parameter  > 3.
											3 - If multiple master station exists on same network.            к _  А                  CCLIEFBASIC_SLAVE_CONFIG           R_Edge_Init             ¤           Internal bit      Run            ¤        n    True: GOC is configured as slave and starts cyclic communication. False: GOC stops communication as a slave.    ADR_RX           ¤        L    Start address of GOC memory (Marker/ Data) which is sent to master as a RX.   ADR_RY           ¤        U    Start address of GOC memory (Marker/ Data) which is received from the Master as RY.    ADR_RWr           ¤        O    Start address of GOC memory (Marker/ Data) which is sent to the Master as RWr    ADR_RWw           ¤        U    Start address of GOC memory (Marker/ Data) which is received from the Master as RWw    Occupy_Stations           ¤        3    Specifies number of occupied stations from 1 to 4       Done            ¤        ?    True: Configuration successful. False: Error in configuration.   Error           ¤        X  	0 - No error
										1 - Not Applicable
										2 - Occupy_Stations = 0 or Occupy_Stations > 4.
										3 - Address overlap with other device range 
										4 - GC-ENET-COM unit is not present in COM1 slot of GOC main unit.
										10 - Master FB is already configured.
										11 - Slave FB is already configured.
									            к _  А                  CCLIEFBASIC_SLAVE_DIAG               Run            ¤        V    True: FB is executed and provides status and diagnostics.  False: FB stops execution       Done            ¤        7    True: Execution successful. False: Error in execution.   Status           ¤            Holds bit-wise status    Error           ¤            Holds Error code            к _  А                  CCLIEFBASIC_SLAVE_INFO           ucRisingEdge             ¤           Internal bit      Run            ¤        d    At transition of Run bit from False to True,  this FB executes to show the diagnostic information;    Stn_No           ¤           Valid station number 1 to 254   PTR_CCLIEFBasic_SlaveInfo                     CCLIEFBasic_SlaveInfo        ¤        3   It contains slave stations diagnostics information       Done            ¤ 	       ;   TRUE: If Successful execution; FALSE: If Error in execution   Error           ¤ 
       щ   	0: if no error,
									1: If CCLIEFBASIC_MASTER_CONFIG FB is not programmed or executed with error. 
									2: if Configured Stn_No is out of range, 
									3: if Configured Stn_No is not included  in CCLIEFBASIC Config FB             к _  А                  CLEARSCREENLOG               Reset_En            ¤                  ClearScreenLog                                      к _  А                  CLOSETCPPORT               TCPPort           ¤            Port number to be closed      CloseTCPPort               enErrorCode                             к _  А                  EVENT_ATTACH_ISR               Atch            ¤        <   Enable Input. Function executed on rising edge of this input   Event            	   GOC_EVENT   ¤ 	       #   Specific event under consideration    ISRIndex           ¤ 
       u    Index of PROGRAM type POU to be executed if specific event is occured. POU Index is passed using INDEXOF() operator.   Priority           ¤        l   Priority of the event execution. Priority can be defined in the range of 0 to 15. 0 is the highest priority       Event_Attach_ISR                                     к _  А                  EVENT_ATTACH_SOP               Atch            ¤        <   Enable Input. Function executed on rising edge of this input   Event            	   GOC_EVENT   ¤ 	       #   Specific event under consideration    OPMask           ¤ 
       !    Selects outputs to be controlled   OPSet           ¤        F    Defines the output state to be updated for outputs selected by OPMASK      Event_Attach_SOP                                     к _  А                  EVENT_DETACH               Dtch            ¤           Enables function execution   Event            	   GOC_EVENT   ¤            Specific event to be de detached      Event_Detach                                     к _  А                  EVENTS_CLEAR               Run            ¤           Enable Input      Events_Clear                                      к _  А                  EVENTS_HOLD               Eh            ¤           Enable Input      Events_Hold                                      к _  А                  EVENTS_RELEASE               Er            ¤           Enable Input      Events_Release                                      к _  А               
   GETETHDIAG               ETHDiagnostic                    ETHDiagnostic        ¤        B    Diagnostic information read from module is stored at this address   
   GetETHDiag               enErrorCode                             к _  А                  GETETHPORTCONFIG               IPAdr    	                              ¤        m   This is address pointing to array of 4 bytes. IP address configured in COM extension returned in this array. 
   SubnetMask    	                              ¤        n   This is address pointing to array of 4 bytes. Subnet mask configured in COM extension returned in this array.    Gateway    	                              ¤        r   This is address pointing to array of 4 bytes. Gateway address configured in COM extension returned in this array.    MAC    	                              ¤        n   This is address pointing to array of 6 bytes. MAC address configured in COM extension returned in this array.       GetETHPortConfig               enErrorCode                             к _  А                  GETETHSTATUS            	   ETHStatus                 ¤        E    Status information read from COM extension is stored at this address      GetETHStatus               enErrorCode                             к _  А                  IM_READ               Slot           ¤        Z   Defines the Slot Number of the IO extension (5 for IO extension1  or 6  for IO extension2)   MMW           ¤        Ъ   Defines the source address of the extension module Buffer-Memory ,from where data is to be read. Refer respectove modules manual for buffer memory details   Data_Adr                 ¤        3   Defines the adress of destination variable or array   Len           ¤        8   Defines the length of the block (no.of bytes) to be read      IM_Read                                      к _  А                  IM_WRITE               Slot           ¤        Z   Defines the Slot Number of the IO extension (5 for IO extension1  or 6  for IO extension2)   Data_Adr                 ¤        l   Defines the address of source variable. Data from this variable is transftered to IO extension buffer memory   MMW           ¤        к   Defines the Starting Address of the Buffer-Memory on extension. This address is destination for write operation. Refer respectove modules manual for buffer memory details   Len           ¤        6   Defines the length of the block (no.of bytes) to write      IM_Write                                      к _  А                  OPENPORT           R_Edge_Init             ¤           Internal bit      Init            ¤        ]   At rising edge,defined Port is opened and communication parameters are assigned as per Comset   Port           ¤           Specify serial port number   ComSet           ¤        0   Specify communication parameters for serial Port   RxDelay           ¤        L   Specify value of expected minimum inter frame delay in msec during reception   TxDelay           ¤        V   Specify value of delay in msec to be generated between transmission and last reception      Done            ¤ 
            TRUE : Port opened successfully            к _  А                  OPENTCPPORT               RemoteIPAdr    	                              ¤        ~   Specifies the IP address of remote device to which the port is to be connected. This will be used only in case of Client mode.   TCPPort           ¤        0   Specifies the TCP port number for TCP connection   Timeout           ¤        C   Specifies timeout to close the connection incase of idle connection   TCPMode           ¤        C   Specifies functionality of module.  0 - TCP Client, 1 - TCP server       OpenTCPPort               enErrorCode                             к _  А                  PORT_STATUS               Port_No           ¤           Holds serial port number       Port_Status            ¤        Q    TRUE : FB successfully  executed. Remains  FALSE in case of invalid port number    RxCount           ¤        '   Holds number of bytes available to read   RxError           ¤        ┼    Holds bit wise status of reception error observed in recent byte reception.
								    Bit0 :No Err, Bit 1: Parity Err, Bit 2: Frame Err, Bit3: Brake err, Bit 4-6: Reserved, Bit 7: Over Run Err    TxCount           ¤ 
       '   Holds number of bytes to be transmitted   TxError           ¤        "   Holds transmission error details.    Status           ¤        P   Holds status of serial Port.  Bit 0 : Port Open, Bit 1: Carrier detect signal ON            к _  А               
   PTO_CONFIG               INIT            ¤           Enable input   CH           ¤            PTO channel no. 1 or 2   MODE           ¤        u   0- Pulse and direction output, 1- forward and reverse pulses, 2-Digital o/p's which are updated by function PTO_WRITE   
   PTO_CONFIG                                      к _  А                  PTO_RUN        
   PrevStatus             ¤            Hold Prev status      RUN            ¤           Enable input   PV           ¤        2   Qualntity of pulses to be generated if OP is FALSE   FREQ           ¤        .   frequency (0 to 100000 Hz) of pulse generation   DIR            ¤        1   FALSE- Forward direction, TRUE- Revesre direction   OP            ¤        9   FALSE- Preset operation, TRUE- Continous pulse generation   CH           ¤           PTO channel no. 1 or 2      DONE            ¤        D   Indicates pulse generation is complete in preset operation(OP-FALSE)   ERR            ¤        D   TRUE if PTO channel is not configured already or invalid channel no.   CV           ¤        0   No. of pulses generated after rising edge at RUN            к _  А                  PULSECATCHCONFIG               En            ¤        J   If Boolean input is TRUE, enables  pulse catch function for digital input.   Ch           ¤        L    Digital input channel number. Pulse catch is only supported for CH2 and CH5
   FilterTime           ¤        О    Filter time (in microsec) of digital input when pulse catch is enabled. Valid setting 200╡s, 400 ╡s, 800 ╡s, 1000╡s, 2000╡s, 5000╡s, 10000╡s.      PulseCatchConfig                                     к _  А               	   READ_DATE               Read_En            ¤           Enables read operation   	   Read_Date                                     к _  А                  READ_DATE_TIME               Read_En            ¤           Enables read operation      Read_Date_Time                                     к _  А               	   READ_TIME               Read_En            ¤           Enables read operation   	   Read_Time                                     к _  А                  READMASTERCLOCK               Read_En            ¤           Enables read operation      ReadMasterClock                                     к _  А                  RECEIVEBYTE               Port           ¤        &   Holds serial port number for reception      RxByte           ¤        u   Returns received byte data at defined Port that is
								not yet read by executing FB ReceiveByte or ReceiveByteEx   BytePresent            ¤        7   Becomes TRUE,if a new byte is present in system buffer             к _  А                  RECEIVEBYTEEX               Port           ¤        &   Holds serial port number for reception      RxByte           ¤        +   Returns received byte data at defined Port    RxByteStatus           ¤        ─    Returns bitwise status of received byte as
										Bit 0 : Interbyte delay > RxDelay.		Bit 4: Brake error.	Bit 5: Overrun error .
	    									Bit 6 : parity error.						Bit 7 : Frame error    BytePresent            ¤ 
          New byte is present received             к _  А               
   REFRESH_IN               Slot           ¤        Z   Defines the Slot Number of the IO extension (5 for IO extension1  or 6  for IO extension2)   
   Refresh_In                                      к _  А                  REFRESH_OUT               Slot           ¤        Z   Defines the Slot Number of the IO extension (5 for IO extension1  or 6  for IO extension2)      Refresh_Out                                      к _  А                  SENDBYTE               Port           ¤        &   Holds serial port number for reception   TxByte           ¤           Byte value to be transmitted      Done            ¤            Byte is transmitted successfully            к _  А                  SET_HSC_CMP               Wr            ¤           Enable input   Cmpv           ¤           Holds comparison value   Ch           ¤           HSC channel no.0 or 3      Set_HSC_Cmp                                     к _  А               
   WRITE_DATE               New_Date           ¤           New Date to be set   Set            ¤        I   Enables set operation - Level triggered -** Use 'R_TRIG' at 'Set' Input**   
   Write_Date                                      к _  А                  WRITE_DATE_TIME               New_Date_Time           ¤           New 'Date & Time'  to be set   Set            ¤        I   Enables set operation - Level triggered -** Use 'R_TRIG' at 'Set' Input**      Write_Date_Time                                      к _  А               
   WRITE_TIME               New_Time           ¤           New 'Time' to be set   Set            ¤        E   Enables set operation - Level triggered - Use 'R_TRIG' at 'Set' Input   
   Write_Time                                      к _  А           h   C:\PROGRA~1\CoDeSysForAutomationAlliance\Mitsubishi Electric India Targets\GOC35\Libraries\GOC35Util.lib          DISPLAYSCREEN               Screen           ¤        S   Screen name constant (referring to a number between 0 to 63) to be displayed on HMI      DisplayScreen                                      к _  А                   ENCAB0        	   PoweredOn            ¤               HSC_CONFIG1             
   HSC_CONFIG    ¤               ConfigDn             ¤               Directionold             ¤               InitCV            ¤                  RUN            ¤            Enables Counting   MODE           ¤        9    0 : Use HSC from Base, 1: Use HSC from IO extension Unit   RESET            ¤            Reset CV to 0   LOAD            ¤        4    If TRUE, CV gets modified to a value defined by PV    PV           ¤        4    If TRUE, CV gets modified to a value defined by PV    RETAINCV            ¤        <    If TRUE, counter value is retained after PLC power recycle.      QU            ¤            BecomesTRUE, if CV > 0   QD            ¤            Becomes TRUE if CV < 0   CV        
   ¤           Current Counter Value            к _  А                   ENCAB3        	   PoweredOn            ¤               HSC_CONFIG1             
   HSC_CONFIG    ¤               ConfigDn             ¤               Directionold             ¤               InitCV            ¤                  RUN            ¤            Enables Counting   MODE           ¤        9    0 : Use HSC from Base, 1: Use HSC from IO extension Unit   RESET            ¤            Reset CV to 0   LOAD            ¤        4    If TRUE, CV gets modified to a value defined by PV    PV           ¤        4    If TRUE, CV gets modified to a value defined by PV    RETAINCV            ¤        <    If TRUE, counter value is retained after PLC power recycle.      QU            ¤            BecomesTRUE, if CV > 0   QD            ¤            Becomes TRUE if CV < 0   CV        
   ¤           Current Counter Value            к _  А                   ENCABZ0        	   PoweredOn            ¤               HSC_CONFIG1             
   HSC_CONFIG    ¤               ConfigDn             ¤               Directionold             ¤               InitCV            ¤               Z_EnableOld             ¤                  RUN            ¤            Enables Counting   MODE           ¤        9    0 : Use HSC from Base, 1: Use HSC from IO extension Unit   RESET            ¤           Reset CV to 0   LOAD            ¤        3   If TRUE, CV gets modified to a value defined by PV    PV           ¤        3   If TRUE, CV gets modified to a value defined by PV    Z_EN            ¤        V   If FALSE, Z marker pulse is ignored. If TRUE, CV reset to  0 on occurrence of Z  pulse   RETAINCV            ¤ 	       ;   If TRUE, counter value is retained after PLC power recycle.      QU            ¤            BecomesTRUE, if CV > 0   QD            ¤            Becomes TRUE if CV < 0   CV        
   ¤           Current Counter Value            к _  А                   ENCABZ3        	   PoweredOn            ¤               HSC_CONFIG1             
   HSC_CONFIG    ¤               ConfigDn             ¤               Directionold             ¤               InitCV            ¤               Z_EnableOld             ¤                  RUN            ¤            Enables Counting   MODE           ¤        9    0 : Use HSC from Base, 1: Use HSC from IO extension Unit   RESET            ¤           Reset CV to 0   LOAD            ¤        3   If TRUE, CV gets modified to a value defined by PV    PV           ¤        3   If TRUE, CV gets modified to a value defined by PV    Z_EN            ¤        V   If FALSE, Z marker pulse is ignored. If TRUE, CV reset to  0 on occurrence of Z  pulse   RETAINCV            ¤ 	       ;   If TRUE, counter value is retained after PLC power recycle.      QU            ¤            BecomesTRUE, if CV > 0   QD            ¤            Becomes TRUE if CV < 0   CV        
   ¤           Current Counter Value            к _  А                   FREQ2        	   PoweredOn            ¤               ConfigDn             ¤               Period            ¤               ReadOld             ¤               MAX_TD            ¤                  Read            ¤            Enables Freqency measurement   MinFrequecy            ¤        K    Minimum input frequency below which function block returns FREQUENCY as 0    	   Frequency            ¤        )    Holds measured frequency of input pulses            к _  А                   FREQ5        	   PoweredOn            ¤               ConfigDn             ¤               Period            ¤               ReadOld             ¤               MAX_TD            ¤                  Read            ¤            Enables Freqency measurement   MinFrequecy            ¤        K    Minimum input frequency below which function block returns FREQUENCY as 0    	   Frequency            ¤ 	       )    Holds measured frequency of input pulses            к _  А                   FT_AVG           init             ¤               i            ¤               buff   	                           ¤               out             ¤                  EN           ¤               IN            ¤           Input signal   N           ¤            Number of samples      AVG            ¤            Average value            к _  А                   FT_FODF           Td            ¤               init             ¤               DeltaT            ¤               CurTime            ¤               LastTime            ¤                  EN           ¤               INP            ¤            Input Signal    T    ш     ¤            Time Constant       OUT            ¤            Output Signal             к _  А                   GET_BIT_MBUS           pByteAry    	                               ¤                  BaseAdr           ¤               BitNo           ¤                  Get_Bit_Mbus                                      к _  А                   HSC0        	   PoweredOn            ¤               HSC_CONFIG1             
   HSC_CONFIG    ¤               ConfigDn             ¤               Directionold             ¤               InitCV            ¤                  RUN            ¤            Enables Counting at input I00    MODE           ¤        9    0 : Use HSC from Base, 1: Use HSC from IO extension Unit   RESET            ¤            Reset CV to 0   LOAD            ¤        4    If TRUE, CV gets modified to a value defined by PV    PV           ¤           Preset Counter Value   DIR            ¤        G    Defines counting direction.  TRUE : Up counting, FALSE : Down counting   RETAINCV            ¤ 	       <    If TRUE, counter value is retained after PLC power recycle.      QU            ¤            BecomesTRUE, if CV > 0   QD            ¤            Becomes TRUE if CV < 0   CV        
   ¤           Current Counter Value            к _  А                   HSC3        	   PoweredOn            ¤               HSC_CONFIG1             
   HSC_CONFIG    ¤               ConfigDn             ¤               Directionold             ¤               InitCV            ¤                  RUN            ¤            Enables Counting at input I03    MODE           ¤        9    0 : Use HSC from Base, 1: Use HSC from IO extension Unit   RESET            ¤            Reset CV to 0   LOAD            ¤        4    If TRUE, CV gets modified to a value defined by PV    PV           ¤        3    If TRUE, CV gets modified to a value defined by PV   DIR            ¤        G    Defines counting direction.  TRUE : Up counting, FALSE : Down counting   RETAINCV            ¤ 	       <    If TRUE, counter value is retained after PLC power recycle.      QU            ¤            BecomesTRUE, if CV > 0   QD            ¤            Becomes TRUE if CV < 0   CV        
   ¤           Current Counter Value            к _  А                   HSUDCNT0        	   PoweredOn            ¤               HSC_CONFIG1             
   HSC_CONFIG    ¤               ConfigDn             ¤               Directionold             ¤               InitCV            ¤                  RUN            ¤            Enables Counting at input I00    MODE           ¤        9    0 : Use HSC from Base, 1: Use HSC from IO extension Unit   RESET            ¤            Reset CV to 0   LOAD            ¤        4    If TRUE, CV gets modified to a value defined by PV    PV           ¤        3    If TRUE, CV gets modified to a value defined by PV   RETAINCV            ¤        <    If TRUE, counter value is retained after PLC power recycle.      QU            ¤            BecomesTRUE, if CV > 0   QD            ¤            Becomes TRUE if CV < 0   CV        
   ¤           Current Counter Value            к _  А                   HSUDCNT3        	   PoweredOn            ¤               HSC_CONFIG1             
   HSC_CONFIG    ¤               ConfigDn             ¤               Directionold             ¤               InitCV            ¤                  RUN            ¤            Enables Counting at input I00    MODE           ¤        9    0 : Use HSC from Base, 1: Use HSC from IO extension Unit   RESET            ¤            Reset CV to 0   LOAD            ¤        4    If TRUE, CV gets modified to a value defined by PV    PV           ¤        3    If TRUE, CV gets modified to a value defined by PV   RETAINCV            ¤        <    If TRUE, counter value is retained after PLC power recycle.      QU            ¤            BecomesTRUE, if CV > 0   QD            ¤            Becomes TRUE if CV < 0   CV        
   ¤           Current Counter Value            к _  А                   MBUSTCP_SERVER     1   	   ETHStatus            ¤          Displays Ethernet Status; Bitwise status 0: Link Down, 1:  Communication Speed 100 mbps, 2:  Communication Mode Full Duplex, 3: Flash Write Error, 4: Ethernet mod. Configuration in Progress, 5-7: Reserved, 8: Port Opened, 9: Connected to Client, 10-15: Reserved   ReceiveTimer                    TON    ¤           Indicates RXTimeout   TransmitTimer                    TON    ¤           Indicates TXTimeout   InterQueryDelayTimer                    TON    ¤        F   Sends current frame after min.10mS delay of previous transmitted frame   StatusReadTimer                    TON    ¤        >   Status Read Timer: Read status of ETH Module after every 500mS   Receive                 ReceiveByte    ¤               Send                 SendByte    ¤               CheckPortStatus                     Port_Status    ¤               OpenPortError               enErrorCode    ¤        L   Displays error code value while Opening the port  of Ethernet extension unit   StatusReadError               enErrorCode    ¤        Z   Displays error code value if error occured while Reading status of Ethernet extension unit   ClosePortError               enErrorCode    ¤        \   Displays error code value if error occured while Closing the port of Ethernet extension unit   RemoteIPAdr   	                     1,1,1,1                               ¤        1   Not used whenever Ethernet port is in server mode
   OpenPortDn             ¤        *   Sets TRUE when port is successfully opened   TX                TCP_ComBuff    ¤           Local TX-Buffer for processing   RX                TCP_ComBuff    ¤           Local RX-Buffer for processing	   TestState            ¤        	  Byte wise status for displaying status of execution steps 0: Initialization & Opening port, 1: Ready to capture first 8 bytes, 2: Validates MBAP Header & being receives remaining bytes of query if validation successful, 3: Transmitting Response, 4: Closing TCP port   FNC            ¤                Answered             ¤ !              TxOK             ¤ "           	   STN_Match             ¤ #           	   Valid_FNC             ¤ $           	   Start_Adr            ¤ %              Data_Len            ¤ &              RxFrameLength            ¤ '              n            ¤ (              pSegPtr    	                               ¤ )              QueryMaxAdr             ¤ *              ValidMaxAdr             ¤ +              OutputMaxAdr             ¤ ,              OutputValidMaxAdr             ¤ -              QueryDWDAdr            ¤ .              TestFlag             ¤ /              Write_Start_Adr            ¤ 0              Write_Data_Len            ¤ 1              QueryDWDAdr_Write            ¤ 2              p            ¤ 3              ConnectedToClient             ¤ 4              StatusReadRetryCnt            ¤ 5              ProtocolIDMatch             ¤ 6           	   QueryRecd             ¤ 7              InvalidAddress             ¤ 8           
   FirstQuery             ¤ 9              EntryAction             ¤ :              INIT                           _INIT                           PROCESSQUERIES                            _PROCESSQUERIES                            CLOSETCPPORT                            _CLOSETCPPORT                               Run            ¤           Enables Communication   TCPPort    Ў     ¤           TCP Port number   SNo          ¤        T   Unit Identifier: Station number (Modbus address). Valid range is from 1 to 247 & 255   ConnectionTimeout    
      ¤        @   TCP timeout: Connection_Timeout; it will be processed in Seconds      Status           ¤ 
       g   Bitwise status 0: ETH Module Present, 1: Port Opened, 2: Link Up, 3: Connected To Client, 4-7: Not Used   Diagnostics                
   ServerDiag   ¤        \   Contains information of  Replies, Invalid Address, Rx Timeout, Tx timeout, Connection closed   Error           ¤        д   Bitwise status 0 : Invalid Station Number, 1:  Invalid FNC, 2: Invalid Protocol ID, 3: Port Open Error, 4: ETH Status Read Error, 5: Close Port Error, 6&7: Not Used            к _  А                   PUT_BIT_MBUS           pByteAry    	                               ¤ 	                 BaseAdr           ¤               BitNo           ¤               X            ¤            Data to write       Put_Bit_Mbus                                      к _  А                	   RTU_CRC16           iShr            ¤               iLen            ¤ 	              StartPtr    	                               ¤ 
                 StartPointer           ¤               Len           ¤               	   RTU_CRC16                                     к _  А                
   RTU_MASTER     *      Rec            ¤               Temp            ¤               AutoRec            ¤               Retry            ¤               TxBuff                RTU_ComBuff    ¤               RxBuff                RTU_ComBuff    ¤               send                 SendByte    ¤               bTemp             ¤            	   OpenPort1                     OpenPort    ¤            	   pRecTable    	                                RTU_RecStruct                 ¤               CurRec                          RTU_RecStruct    ¤                ReadyToSend             ¤ !           	   Bytes2Rec            ¤ "              RX_OK             ¤ #              Error             ¤ $              RX_TON                    TON    ¤ %              Receive                 ReceiveByte    ¤ &              CheckSum            ¤ '           	   Init_over             ¤ (              a            ¤ )              R_TRIG1                 R_TRIG    ¤ *              TxOver             ¤ +              DataPtr    	                               ¤ ,              SNO_RECD             ¤ -              FNC_RECD             ¤ .           
   Reply_Recd             ¤ /              Tx_Delay            ¤ 0              BroadCastCmd             ¤ 1              TxDelayTimer                    TON    ¤ 2           
   PortStatus                     Port_Status    ¤ 3              INIT                           _INIT                        	   COMMANDER                         
   _COMMANDER                         	   SENDCOMND                         
   _SENDCOMND                            RX_WAIT                            _RX_WAIT                         	   RETRY_CHK                         
   _RETRY_CHK                         
   RX_PROCESS                            _RX_PROCESS                               Port           ¤        &    Communication Port ,1: COM1, 2: COM2    ComSet                
   RTU_ComSet   ¤            Communication Parameters    GrSel           ¤        A    Selects the sequence of sending queries defined by record table.   RecNo           ¤        H    Record number to be sent in manual mode i.e. at rising edge of СStartТ.   Start            ¤        \    In manual mode i.e. when GrSel=0, At rising edge of Start, FB sends query defined by RecNo    MaxRec           ¤        :    Holds total number of records or queries in record table       Status           ¤        й    Bitwise status 0 : Recent record executed successfully, 1 : CheckSum Error in Reception,  2 : Time Out Error, 3 : Unknown FNC in table, 4 : End of Record Table reached    LastRec           ¤        '    Holds record number recently executed.
   LastResult            ¤        *    Holds result of execution of last record.      RecTable                           RTU_RecStruct  ¤            Communication query table        к _  А                   RTU_SLAVE_EX     <   	   OpenPort1                     OpenPort    ¤               Receive                  ReceiveByteEx    ¤            	   STN_Match             ¤               TX                RTU_ComBuff    ¤            Local TX-Buffer for processing   RX                RTU_ComBuff    ¤             Local RX-Buffer for processing    FNC            ¤               ComRecd             ¤               Answered             ¤            
   CMD_Length            ¤               n            ¤            	   Valid_FNC             ¤               ChkSum            ¤               LO_CS            ¤               HI_CS            ¤                CS_OK             ¤ !              GoToNext             ¤ "           	   Start_Adr            ¤ #              Data_Len            ¤ $              Send                 SendByte    ¤ %           	   TX_ChkSum            ¤ &              TxOK             ¤ '           	   Valid_SNO             ¤ (           	   Init_Over             ¤ )              Broadcast_FNC             ¤ *              TimeOut                    TON    ¤ +              Quit             ¤ ,              pSegPtr    	                               ¤ -              PortInit             ¤ .              Rx_Delay            ¤ /              Tx_Delay            ¤ 0              GoToFCCheck             ¤ 1              FNC_Errs            ¤ 2       v    Invalid function code in consecutive byte or no byte received till timeout after we get SOF and Staion address match 
   STN_Match2             ¤ 3           
   FrameError             ¤ 4              CheckPortStatus                     Port_Status    ¤ 5              Xp            ¤ 6              STN_Errs            ¤ 7              QueryMaxAdr             ¤ 8              ValidMaxAdr             ¤ 9              OutputMaxAdr             ¤ :              OutputValidMaxAdr             ¤ ;              QueryDWDAdr            ¤ <              INIT                           _INIT                        	   CHECK_SOF                         
   _CHECK_SOF                            CHECK_FC_CODE                            _CHECK_FC_CODE                         	   FNC_ERROR                         
   _FNC_ERROR                         
   RCV_STRING                            _RCV_STRING                            TRANSMIT                         	   _TRANSMIT                            FILL_RX                            _FILL_RX                            CHECK_STATIONNUM                            _CHECK_STATIONNUM                            STN_FNC_ERROR                            _STN_FNC_ERROR                               Run            ¤            Enables Communication    Port           ¤        &    Communication Port ,1: COM1, 2: COM2    SNo           ¤        @    Station number (Modbus address). Valid range is from 1 to 247.       Status           ¤        Ч    Bitwise status 0 : Port Opened, 1 : checksum error in previous query, 2 : Timeout, 6 : Parity error in received byte, 7 : Frame error in received byte   Replies           ¤        J    Count incremented by 1 in case of successful reply to query from master     ErrCount           ¤        (    Count increments by 1 in case of error       COMSET                 
   RTU_ComSet  ¤            Communication Parameters         к _  А                   SCALE           M             ¤            'M' is slope of line    C             ¤            'C' is it's Y-intercept       DATA            ¤               X1            ¤               X2            ¤               Y1            ¤               Y2            ¤                  SCALE                                      к _  А            h   C:\PROGRA~1\CoDeSysForAutomationAlliance\Mitsubishi Electric India Targets\GOC35\Libraries\Utilities.libC       	   ALARM_MSG           SRC                  ¤               i            ¤                  SRC_DATA           ¤        6     The word in which bit is searched for set condition.   LENGTH           ¤ 	       5     The number of bits to be checked from OFST onwards    OFST           ¤ 
       L     The offset  from the '0' th bit in SRC_DATA from where search is started.       BIT_FND            ¤        9    It is TRUE if at least  1 SET bit is found in SRC_DATA.    POS           ¤        O    Location of first set bit in SRC_DATA. It is valid only when BIT_FND is TRUE     RESULT           ¤        y    Data from SRC_TBL  at offset defined by  first TRUE bit in SRC_DATA.
							    It is valid only when BIT_FND is TRUE        SRC_TBL           ¤        b    The source  from where the data has to be copied. It has to be the first element of source array         к _  А                   ASC_TO_BYTE           i            ¤               pTemp    	                               ¤               j            ¤               Digit            ¤               BCD_DIG             ¤               HEX_DIG             ¤                      DOUT           ¤ 
              ERR            ¤                  ASC_DATA           ¤        >    Define '0' th element of ASCII Value-Array at this parameter         к _  А                   ASC_TO_DWORD           i            ¤               pTemp    	                               ¤               j            ¤               Digit            ¤                      DOUT           ¤ 
              ERR            ¤                  ASC_DATA           ¤        >    Define '0' th element of ASCII Value-Array at this parameter         к _  А                   ASC_TO_WORD           i            ¤               pTemp    	                               ¤               j            ¤               Digit            ¤                      DOUT           ¤ 
              ERR            ¤                  ASC_DATA           ¤        >    Define '0' th element of ASCII Value-Array at this parameter         к _  А                   BCD_TO_BYTE               DATA           ¤                  BCD_TO_BYTE                                     к _  А                   BCD_TO_DWORD     	      Temp            ¤ 	              Dig1            ¤ 
              Dig2            ¤               Dig3            ¤               Dig4            ¤               Dig5            ¤               Dig6            ¤               Dig7            ¤               Dig8            ¤                  DATA           ¤                  BCD_TO_DWORD                                     к _  А                   BCD_TO_WORD           Temp            ¤ 	              Dig1            ¤ 
              Dig2            ¤               Dig3            ¤               Dig4            ¤                  DATA           ¤                  BCD_TO_WORD                                     к _  А                   BLINK           CLOCK                   TP    ¤                  ENABLE            ¤            TRUE to run Blink    TIMELOW           ¤            Time for OUT=FALSE    TIMEHIGH           ¤            Time for OUT=TRUE       OUT            ¤ 	                       к _  А                   BTCHK_B               DATA           ¤               Bit_No           ¤                  BTCHK_B                                      к _  А                   BTCHK_D               DATA           ¤               Bit_No           ¤                  BTCHK_D                                      к _  А                   BTCHK_W               DATA           ¤               Bit_No           ¤                  BTCHK_W                                      к _  А                   BTSRH_B           i            ¤               MAX_BITS          ¤                  DATA           ¤            	   START_POS           ¤                  BT_FOUND            ¤            	   FIRST_POS           ¤            
   TOTAL_BITS           ¤                        к _  А                   BTSRH_D           i            ¤               MAX_BITS          ¤                  DATA           ¤            	   START_POS           ¤                  BT_FOUND            ¤            	   FIRST_POS           ¤            
   TOTAL_BITS           ¤                        к _  А                   BTSRH_W           i            ¤               MAX_BITS          ¤                  DATA           ¤            	   START_POS           ¤                  BT_FOUND            ¤            	   FIRST_POS           ¤            
   TOTAL_BITS           ¤                        к _  А                   BTTOG_B           max_bits          ¤ 	                 DATA           ¤               Bit_pos           ¤                  BTTOG_B                                     к _  А                   BTTOG_D           max_bits          ¤ 	                 DATA           ¤               Bit_pos           ¤                  BTTOG_D                                     к _  А                   BTTOG_W           max_bits          ¤ 	                 DATA           ¤               Bit_pos           ¤                  BTTOG_W                                     к _  А                   BYTE_TO_ASC           pTemp    	                               ¤               i            ¤               MASK            ¤               j            ¤                  DATA           ¤                      ASC_DOUT           ¤        >    Define '0' th element of ASCII Value-Array at this parameter         к _  А                   BYTE_TO_BCD           TEMP   	                          ¤               TMP            ¤ 	           	   Index7001                            DATA           ¤                  BYTE_TO_BCD                                     к _  А                	   CHARCURVE           I            ¤                  IN           ¤            Adapted Signal    N           ¤        .    Number of points for characteristic 2<=N<=11       OUT           ¤            Output    ERR           ¤ 	           Errors       P    	  
                    POINT          ¤                    к _  А                   DBFIL_B           i            ¤ 
              pDOUT    	                               ¤                  Data           ¤               Length           ¤               Adr_Of_Dout           ¤                  DBFIL_B                                      к _  А                   DBFIL_I           i            ¤ 
              pDOUT    	                               ¤                  Data           ¤               Length           ¤               Adr_Of_Dout           ¤                  DBFIL_I                                      к _  А                   DBFIL_W           i            ¤ 
              pDOUT    	                               ¤                  Data           ¤               Length           ¤               Adr_Of_Dout           ¤                  DBFIL_W                                      к _  А                   DBRD_B           pADDR                  ¤ 	                 Ofst           ¤            	   Adr_Of_DB           ¤                  DBRD_B                                     к _  А                   DBRD_D           pADDR                  ¤                  Ofst           ¤            	   Adr_Of_DB           ¤                  DBRD_D                                     к _  А                   DBRD_I           pADDR                  ¤                  Ofst           ¤            	   Adr_Of_DB           ¤                  DBRD_I                                     к _  А                   DBRD_STR           pADDR     Q       Q          ¤ 
                 StringLength           ¤               Ofst           ¤            	   Adr_Of_DB           ¤                  DBRD_STR    Q       Q                              к _  А                   DBRD_W           pADDR                  ¤                  Ofst           ¤            	   Adr_Of_DB           ¤                  DBRD_W                                     к _  А                   DBSRCH_B           i            ¤               pTBL    	                               ¤                  Length           ¤ 	              Data           ¤ 
           	   Adr_Of_DB           ¤               
   DATA_FOUND            ¤            	   FIRST_POS           ¤               TOTAL_NO           ¤                        к _  А                   DBSRCH_D           i            ¤               pTBL    	                               ¤                  Length           ¤ 	              Data           ¤ 
           	   Adr_Of_DB           ¤               
   DATA_FOUND            ¤            	   FIRST_POS           ¤               TOTAL_NO           ¤                        к _  А                   DBSRCH_I           i            ¤               pTBL    	                               ¤                  Length           ¤ 	              Data           ¤ 
           	   Adr_Of_DB           ¤               
   Data_Found            ¤            	   First_Pos           ¤               Total_No           ¤                        к _  А                
   DBSRCH_STR           i            ¤               pTBL     Q       Q          ¤               	   DB_Length           ¤ 	           	   Adr_Of_DB           ¤ 
              Data_String    Q       Q    ¤               StringLength           ¤               
   DATA_FOUND            ¤            	   FIRST_POS           ¤               TOTAL_NO           ¤                        к _  А                   DBSRCH_W           i            ¤               pTBL    	                               ¤                  Length           ¤ 	              Data           ¤ 
           	   Adr_Of_DB           ¤               
   DATA_FOUND            ¤            	   FIRST_POS           ¤               TOTAL_NO           ¤                        к _  А                   DBWR_B           pADDR                  ¤ 	                 OFST           ¤               DATA           ¤            
   ADR_OF_TBL           ¤                  DBWR_B                                      к _  А                   DBWR_D           pADDR                  ¤ 	                 OFST           ¤               DATA           ¤            
   ADR_OF_TBL           ¤                  DBWR_D                                      к _  А                   DBWR_I           pADDR                  ¤ 	                 Ofst           ¤               Data           ¤            	   Adr_Of_DB           ¤                  DBWR_I                                      к _  А                   DBWR_STR           pADDR     Q       Q          ¤ 
                 StringLength           ¤               OFST           ¤               DATA    Q       Q    ¤            
   ADR_OF_TBL           ¤                  DBWR_STR                                      к _  А                   DBWR_W           pADDR                  ¤ 	                 OFST           ¤               DATA           ¤            
   ADR_OF_TBL           ¤                  DBWR_W                                      к _  А                
   DEG_TO_RAD           PI    █I@!   3.1415926535897932384626433832795   ¤                  ANGLE            ¤               
   DEG_TO_RAD                                      к _  А                   DT_TO_SYSTIME     	      sDT                ¤               sYear                ¤               sMonth                ¤ 	              sDay                ¤ 
              sHour                ¤               sMin                ¤               sSek                ¤               TS                     SYSTIME    ¤               Day            ¤                  DT_IN           ¤                  DT_TO_SYSTIME                     SYSTIME                             к _  А                   DWORD_TO_ASC           pTemp    	                               ¤               i            ¤               MASK            ¤               j            ¤                  DATA           ¤                      ASC_DOUT           ¤        >    Define '0' th element of ASCII Value-Array at this parameter         к _  А                   DWORD_TO_BCD           TEMP   	                          ¤               TMP            ¤ 	           	   Index7001                            DATA           ¤                  DWORD_TO_BCD                                     к _  А                   FIFO_STK           cntr            ¤            	   P_Cur_Ele    	                               ¤               i            ¤               WR_TRIG                 R_TRIG    ¤               PWR             ¤            Rising edge of WR   RR_TRIG                 R_TRIG    ¤               PRD             ¤            Rising edge of RD      WR            ¤        1    Writes data on Rising edge generated internally    P_DIN           ¤        2    Pointer to data to be input. Use ADR( ) operator    RD            ¤        /    Reads data on Rising edge generated internally   P_DOUT           ¤ 	       B    Pointer to variable where data to be Output. Use ADR( ) operator    Datasize           ¤ 
       +    Sizeof() the DataType to be input in bytes   P_Stack           ¤        ?    Pointer to Array of DataType for storage. Use ADR( ) operator 	   Max_Depth           ¤        (    Max no of records of DataType to handle      FULL            ¤               EMPTY            ¤            	   Cur_depth           ¤                        к _  А                   GEN           CET            ¤               PER            ¤               COUNTER            ¤               CLOCK                    TON    ¤                  MODE               GEN_MODE   ¤        V   Typ :
								TRIANGLE			Triangle from - AMPL. to + AMPL.
								TRIANGLE_POS		Triangle from 0 to AMPL.
								SAWTOOTH_RISE		Saw tooth rising from - AMPL. to +AMPL.
								SAWTOOTH_FALL		Sфgezahn fallend von AMPL bis -AMPL
								RECTANGLE			Rectangle - AMPL. to +AMPL
								SINUS				Sinusoidal
								COSINUS				Cosinusoidal    BASE            ¤        /    Period reference:  FALSE / call;  TRUE / time    PERIOD           ¤            Period duration, if BASE=TRUE    CYCLES           ¤            Cycle/period, if BASE=FALSE 	   AMPLITUDE           ¤            Amplitude of the function    RESET            ¤            Reset       OUT           ¤                        к _  А                   GET_BIT           pByteAry    	                               ¤                  BaseAdr           ¤               BitNo           ¤                  Get_Bit                                      к _  А                
   HYSTERESIS               IN           ¤            Input    HIGH           ¤            Upper Limit   LOW           ¤            Lower Limit      OUT            ¤ 	                       к _  А                   LIFO_STK           i            ¤            	   P_Cur_Ele    	                               ¤               WR_TRIG                 R_TRIG    ¤               PWR             ¤            Rising edge of WR   RR_TRIG                 R_TRIG    ¤               PRD             ¤            Rising edge of RD      WR            ¤        1    Writes data on Rising edge generated internally    P_DIN           ¤        2    Pointer to data to be input. Use ADR( ) operator    RD            ¤        /    Reads data on Rising edge generated internally   P_DOUT           ¤ 	       B    Pointer to variable where data to be Output. Use ADR( ) operator    Datasize           ¤ 
       "    Sizeof() the DataType to be input   P_Stack           ¤        ?    Pointer to Array of DataType for storage. Use ADR( ) operator 	   Max_Depth           ¤            Max no of record of DataType      FULL            ¤               EMPTY            ¤            	   Cur_depth           ¤                        к _  А                
   LIMITALARM               IN           ¤            Input    HIGH           ¤            Upper limit    LOW           ¤            Lower limit       O            ¤ 
           Exceeding    U            ¤            Falling below    IL            ¤        
    In Limit             к _  А                   LMTCMP_I               IN           ¤               LOW           ¤               HIGH           ¤ 	                 OK            ¤               LO            ¤               HI            ¤                        к _  А                   LMTCMP_R               IN            ¤               LOW            ¤               HIGH            ¤ 	                 LO            ¤               HI            ¤               OK            ¤                        к _  А                
   LOOKINDB_I           i            ¤               PNTR                  ¤               PNTR1                  ¤                  Data           ¤               Adr_DB           ¤               Length           ¤                  Found            ¤               FundAt           ¤                        к _  А                   PUT_BIT           pByteAry    	                               ¤                  BaseAdr           ¤               BitNo           ¤               X            ¤            Data to write       Put_Bit                                      к _  А                   PUTBIT_B           Max_bits          ¤ 
              temp            ¤                  DATA           ¤               Bit_pos           ¤               X            ¤            Status of bit TRUE/FALSE       PUTBIT_B                                     к _  А                   PUTBIT_D           Max_bits          ¤ 
              temp            ¤                  DATA           ¤        !    Data where the bit is to be put    Bit_pos           ¤               X            ¤            Status of bit TRUE/FALSE       PUTBIT_D                                     к _  А                   PUTBIT_W           Max_bits          ¤ 
              temp            ¤                  DATA           ¤               Bit_pos           ¤               X            ¤            Status of bit TRUE/FALSE       PUTBIT_W                                     к _  А                
   RAD_TO_DEG           PI    █I@!   3.1415926535897932384626433832795   ¤                  ANGLE            ¤               
   RAD_TO_DEG                                      к _  А                   RAMP_INT           DIFF            ¤               OLD_IN            ¤               TB            ¤               CET            ¤               CH            ¤               CLOCK                    TON    ¤                  IN           ¤               ASCEND           ¤               DESCEND           ¤               TIMEBASE           ¤               RESET            ¤                  OUT           ¤ 
                       к _  А                	   RAMP_REAL           DIFF             ¤               OLD_IN             ¤               TB            ¤               CET            ¤               CLOCK                    TON    ¤               probe             ¤                  IN            ¤               ASCEND            ¤               DESCEND            ¤               TIMEBASE           ¤               RESET            ¤                  OUT            ¤ 
                       к _  А                
   SEARCH_BIT           BitNo            ¤                  BaseAdr           ¤            
   StartBitNo           ¤               EndBitNo           ¤               
   Search_Bit                                     к _  А                   STATISTICS_INT           SUM            ¤               COUNTER            ¤                  IN           ¤               RESET            ¤                  MN          ¤               MX     А     ¤ 	              AVG           ¤ 
                       к _  А                   STATISTICS_REAL           COUNTER            ¤               SUM             ¤                  IN            ¤               RESET            ¤                  MN    ц▒a   3E+38   ¤               MX    ъ   1E-37   ¤               AVG            ¤ 	                       к _  А                   SYSTIME_TO_DT        
   TempString    Q       Q     ¤                  SYS_IN                     SYSTIME   ¤                  SYSTIME_TO_DT                                     к _  А                   TBL_RDWR           WR_TRIG                 R_TRIG    ¤               PWR             ¤               RD_TRIG                 R_TRIG    ¤               PRD             ¤                  RD            ¤        N    Reads record from RECTBL into PTR_DOUT on Rising edge <generated internally>    PTR_DOUT           ¤            Use ADR() function    WR            ¤        J    Writes record at PTR_DIN in RECTBL on Rising edge <generated internally>    PTR_DIN           ¤               REC_NO           ¤        /    RecNo to consider for Read and Write operation   REC_SIZE           ¤            use SIZEOF() 
   PTR_RECTBL           ¤ 	       $    Pointer ADR() to record TableArray    MAX_REC           ¤ 
       (    Max No of records in record TableArray       ERR           ¤                        к _  А                
   TOGGLE_BIT           bTemp             ¤                  BaseAdr           ¤               BitNo           ¤               
   Toggle_Bit                                      к _  А                   VARIANCE           Z            ¤ 
              A             ¤               B             ¤                  IN            ¤               RESET            ¤                  OUT            ¤                        к _  А                   WORD_TO_ASC           pTemp    	                               ¤               i            ¤               MASK            ¤               j            ¤                  DATA           ¤                      ASC_DOUT           ¤        >    Define '0' th element of ASCII Value-Array at this parameter         к _  А                   WORD_TO_BCD           TEMP   	                          ¤               TMP            ¤ 	           	   Index7001                            DATA           ¤                  WORD_TO_BCD                                     к _  А            m   C:\PROGRA~1\CoDeSysForAutomationAlliance\Mitsubishi Electric India Targets\GOC35\Libraries\GOC35HiddenExt.lib;          ATTACHSYSTEMPOU               POUIdentifier           ¤               POUIndex           ¤                  AttachSystemPOU                                     к _  А                  CLEARSCREEN                   ClearScreen                                      к _  А                  EEPROM_GET_VERSION               bRead            ¤               Slot           ¤            	   ptrVerStr     
       
         ¤                  EEPROM_GET_VERSION                                     к _  А               
   FUNKEYGOTO               FunKeyNo           ¤           The Function Key Number 1 to 5   LocalScreen           ¤           Screen No where Key is defined	   ScreenNum           ¤           Valid numbers are 0 to 63    PSWLevel           ¤        p   0-No PSW protection, 1-PSW level1, 2-PSW level2, 3-PSW level3, 4-PSW level4, >4- Invalid, 4 has highest priority	   KeyLegend               ¤        ,   KeyField to describe action of Function Key    
   FunKeyGoTo                                      к _  А               	   FUNKEYMOM               FunKeyNo           ¤           The Function Key Number 1 to 5   LocalScreen           ¤           Screen No where Key is defined   Addr           ¤           PLC Data variable Adrress    BitPos           ¤        у   0 to 31 if PLC variable is mapped at  I/Q/M/Data memory as data type
							BYTE/WORD/DWORD/INT/DINT or to acces bit within BYTE/WORD/DWORD/INT/DINT
							Must be 0 IF PLC variable OF data TYPE BOOL is mapped AT data memory.	   KeyLegend               ¤ 	       ,   KeyField to describe action of Function Key    	   FunKeyMom                                      к _  А                  FUNKEYMOMCLEAR               FunKeyNo           ¤           The Function Key Number 1 to 5   Addr           ¤           PLC Data variable Adrress    BitPos           ¤        у   0 to 31 if PLC variable is mapped at  I/Q/M/Data memory as data type
							BYTE/WORD/DWORD/INT/DINT or to acces bit within BYTE/WORD/DWORD/INT/DINT
							Must be 0 IF PLC variable OF data TYPE BOOL is mapped AT data memory.      FunKeyMomClear                                      к _  А               	   FUNKEYTOG               FunKeyNo           ¤           The Function Key Number 1 to 5   LocalScreen           ¤           Screen No where Key is defined   Addr           ¤           PLC Data variable Adrress    BitPos           ¤        у   0 to 31 if PLC variable is mapped at  I/Q/M/Data memory as data type
							BYTE/WORD/DWORD/INT/DINT or to acces bit within BYTE/WORD/DWORD/INT/DINT
							Must be 0 IF PLC variable OF data TYPE BOOL is mapped AT data memory.	   KeyLegend               ¤ 	       ,   KeyField to describe action of Function Key    	   FunKeyTog                                      к _  А                  GET_EXTENDEDRETAIN                   GET_EXTENDEDRETAIN                                      к _  А                  GET_VIEWDATALOG                   GET_VIEWDATALOG                                      к _  А                  GETHMIENTRYMODE                   GetHMIEntryMode                                     к _  А                  GOTO               XPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   YPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels	   ScreenNum           ¤           Valid numbers are 0 to 63    Char               ¤        0   Character to be displayed as GoTo Screen object    FontType           ¤        °   0-Single Size Bold, 1-DS Double Size Bold, 2-Single Size, 3-DS Double Size, 4-Small Size,
								 	16#80-Single Size Bold Inverse, 16#81-Double Size Bold Inverse, 16#82-Single Size Inverse, 16#83-DSI Double Size Inverse , 16#84-Small Size Inverse   PSWLevel           ¤ 	       p   0-No PSW protection, 1-PSW level1, 2-PSW level2, 3-PSW level3, 4-PSW level4, >4- Invalid, 4 has highest priority      GoTo                                      к _  А                  GOTONEXT            
   NextScreen           ¤           Valid numbers are 0 to 63    PSWLevel           ¤        p   0-No PSW protection, 1-PSW level1, 2-PSW level2, 3-PSW level3, 4-PSW level4, >4- Invalid, 4 has highest priority      GoToNext                                      к _  А               	   HMI_BEGIN                	   HMI_Begin                                      к _  А                  HMI_OVER                   HMI_Over                                      к _  А               
   HSC_CONFIG           R_EDGE_INIT             ¤                  INIT            ¤        7   HSC configuration is carried out at rising edge of INIT   MODE           ¤        =   0- X1 counter, 1- X2 counter, 2- X4 encoder mode of operation   INITCV           ¤        +   Initialization of HSC to a predefined value   CH           ¤            HSC channel no. 1 or 2      Done            ¤ 
       .   TRUE if HSC channel is configured successfully            к _  А                  HSC_READ               RD            ¤        D   If TRUE, current value of the counter is returned else 0 is returned   HOLD            ¤           If TRUE, holds the counting   CH           ¤            HSC channel no. 1 or 2      HSC_READ                                     к _  А               	   HSC_WRITE               WR            ¤           Enable input   CV           ¤           Holds value to be modified   CH           ¤           HSC channel no. 1 or 2   	   HSC_WRITE                                      к _  А               
   HSCIN_READ               RD            ¤            Enable input   
   HSCIn_Read                                     к _  А               
   IKEYACTION               KeyNo           ¤           The Function Key Number 1 to 8    ActVal           ¤        &   0-None, 1-Toggle, 2-Momentary, 3- GoTo   Addr           ¤           PLC Data variable Adrress    BitPos           ¤        у   0 to 31 if PLC variable is mapped at  I/Q/M/Data memory as data type
							BYTE/WORD/DWORD/INT/DINT or to acces bit within BYTE/WORD/DWORD/INT/DINT
							Must be 0 IF PLC variable OF data TYPE BOOL is mapped AT data memory.	   ScreenNum           ¤ 	              PasswordLevel           ¤ 
              
   iKeyAction                                      к _  А               
   ILEDACTION               KeyNo           ¤           The Function Key Number 1 to 8    LEDControlByte           ¤        я   This Byte Controls the LED indication
							0-OFF,	1-Red ON,	2-Green ON, 3-Yellow ON
							4-Red    Red Blink Fast, 5-Green  Red Blink Fast,	6-Yellow Red Blink Fast,
							7-Red    Blink slow, 8-Green  Blink slow,	9-Yellow Blink slow   
   iLEDAction                                      к _  А                  MULTILANG_GETDATAPOINTER                   MultiLang_GetDataPointer                                     к _  А               
   PRINTASCII               XPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   YPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   pASCII                 ¤        S   Pointer to the address of PLC data variable of STRING data type using ADR operator.   Len           ¤        -   Length of the total characters to be reserved   FontType           ¤        ∙   0-Single Size Bold, 1-DS Double Size Bold, 2-Single Size, 3-DS Double Size, 4-Small Size,
											16#80-Single Size Bold Inverse, 16#81-Double Size Bold Inverse, 16#82-Single Size Inverse, 16#83-DSI Double Size Inverse , 16#84-Small Size Inverse   Modify            ¤ 	       [    FALSE- Modification of PLC data is  not allowed TRUE- Modification of PLC data is allowed    
   PrintASCII                                      к _  А               	   PRINTDATE               XPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   YPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Addr           ¤        L   Address of PLC variable of DATE data type, Pass address using ADR() operator   Format           ¤        #    0 - YYYY-MM-DD,  >=1 - DD-MM-YYYY    FontType           ¤        ў   0-Single Size Bold, 1-DS Double Size Bold, 2-Single Size, 3-DS Double Size, 4-Small Size,
									16#80-Single Size Bold Inverse, 16#81-Double Size Bold Inverse, 16#82-Single Size Inverse, 16#83-DSI Double Size Inverse , 16#84-Small Size Inverse   Modify            ¤ 	       [    FALSE- Modification of PLC data is not allowed TRUE- Modification of PLC data  is allowed    MaxLimit           ¤ 
       6   Maximum value allowed for modification using keyboard    MinLimit           ¤        6   Minimum value allowed for modification using keyboard    	   PrintDate                                      к _  А                  PRINTIP               xPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   yPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   FontType           ¤        a   00h-SS Single Size, 01h-DS Double Size, 80h-SSI Single Size Inverse, 81h-DSI Double Size Inverse    Modify            ¤        [    FALSE- Modification of PLC data is not allowed TRUE- Modification of PLC data  is allowed    Val               ¤           Value of IP address to be enter      PrintIP                                      к _  А                  PRINTMULTILINGUALTEXT               xPos           ¤               yPos           ¤           0 to 7   xSize           ¤               ySize           ¤           1 to 8   wTextOffset           ¤               wSize           ¤                  PrintMultiLingualText                                     к _  А                  PRINTMULTISYMBOL               xPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   yPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Addr_ArrayOfSymbol           ¤        \   Address of PLC variable of Array [0..n] of WORD data type, Pass address using ADR() operator   Addr_Symbolnum           ¤        Й   Address of PLC variable of BYTE data type which holds Symbol number of the currently displayed Symbol, Pass address using ADR() operator    ArrayLen           ¤           Number of Symbol arrays    Modify            ¤        [    FALSE- Modification of PLC data is not allowed TRUE- Modification of PLC data  is allowed       PrintMultiSymbol                                      к _  А                  PRINTMULTITEXT               xPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   yPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Addr_ArrayOfStr           ¤        ^   Address of PLC variable of Array [0..n] of string data type, Pass address using ADR() operator   Addr_MsgNum           ¤        Л   Address of PLC variable of BYTE data type which holds Message number of the currently displayed message, Pass address using ADR() operator 	   No_Of_Msg           ¤        #   Number of messages to be displayed    Size           ¤        *   Size of the Message String to be displayed   FontType           ¤ 	       °   0-Single Size Bold, 1-DS Double Size Bold, 2-Single Size, 3-DS Double Size, 4-Small Size,
										16#80-Single Size Bold Inverse, 16#81-Double Size Bold Inverse, 16#82-Single Size Inverse, 16#83-DSI Double Size Inverse , 16#84-Small Size Inverse   Modify            ¤        [    FALSE- Modification of PLC data is not allowed TRUE- Modification of PLC data  is allowed       PrintMultiText                                      к _  А                  PRINTRTCDATE               xPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   yPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Format           ¤            0 - HH:MM:SS, >=1 - HH:MM   FontType           ¤        °   0-Single Size Bold, 1-DS Double Size Bold, 2-Single Size, 3-DS Double Size, 4-Small Size,
										16#80-Single Size Bold Inverse, 16#81-Double Size Bold Inverse, 16#82-Single Size Inverse, 16#83-DSI Double Size Inverse , 16#84-Small Size Inverse   Modify            ¤        [    FALSE- Modification of PLC data is not allowed TRUE- Modification of PLC data  is allowed       PrintRTCDate                                      к _  А                  PRINTRTCTIME               xPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   yPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Format           ¤            0 - HH:MM:SS, >=1 - HH:MM   FontType           ¤        ∙   0-Single Size Bold, 1-DS Double Size Bold, 2-Single Size, 3-DS Double Size, 4-Small Size,
											16#80-Single Size Bold Inverse, 16#81-Double Size Bold Inverse, 16#82-Single Size Inverse, 16#83-DSI Double Size Inverse , 16#84-Small Size Inverse   Modify            ¤        [    FALSE- Modification of PLC data is not allowed TRUE- Modification of PLC data  is allowed       PrintRTCTime                                      к _  А                  PRINTSYMBOL               XPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   YPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels	   SymbolNum           ¤        !   Number of Symbol to be displayed       PrintSymbol                                      к _  А               	   PRINTTEXT               XPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   YPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Text    9       9    ¤           String to be Displayed   FontType           ¤        ∙   0-Single Size Bold, 1-DS Double Size Bold, 2-Single Size, 3-DS Double Size, 4-Small Size,
											16#80-Single Size Bold Inverse, 16#81-Double Size Bold Inverse, 16#82-Single Size Inverse, 16#83-DSI Double Size Inverse , 16#84-Small Size Inverse   	   PrintText                                      к _  А                  PRINTTIME_MIN         
      xPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   yPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Addr           ¤        L   Address of PLC variable of TIME data type, Pass address using ADR() operator	   DigitsNum           ¤        9   Number of digits to be displayed excuding  decimal point    DPPos           ¤        V   Decimal point position. Limited to 1. 0- 1 minute resolution, 1- 0.1 minute resolution   FontType           ¤        ∙   0-Single Size Bold, 1-DS Double Size Bold, 2-Single Size, 3-DS Double Size, 4-Small Size,
											16#80-Single Size Bold Inverse, 16#81-Double Size Bold Inverse, 16#82-Single Size Inverse, 16#83-DSI Double Size Inverse , 16#84-Small Size Inverse   LeadingZeros            ¤ 
       M   If TRUE- leading zeros are added. If FALSE - leading blank spaces are added     Modify            ¤        [    FALSE- Modification of PLC data is not allowed TRUE- Modification of PLC data  is allowed    MaxLimit           ¤        6   Maximum value allowed for modification using keyboard    MinLimit           ¤        6   Minimum value allowed for modification using keyboard       PrintTime_Min                                      к _  А                  PRINTTIME_SEC         
      XPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   YPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Addr           ¤        L   Address of PLC variable of TIME data type, Pass address using ADR() operator	   DigitsNum           ¤        8   Number of digits to be displayed excuding decimal point    DPPos           ¤        x   Decimal point position. Limited to 3, 0- 1 sec resolution, 1- 100 ms resolution, 2- 10 ms resolution, 3- 1 ms resolution   FontType           ¤        ∙   0-Single Size Bold, 1-DS Double Size Bold, 2-Single Size, 3-DS Double Size, 4-Small Size,
											16#80-Single Size Bold Inverse, 16#81-Double Size Bold Inverse, 16#82-Single Size Inverse, 16#83-DSI Double Size Inverse , 16#84-Small Size Inverse   LeadingZeros            ¤ 
       M   If TRUE- leading zeros are added. If FALSE - leading blank spaces are added     Modify            ¤        [    FALSE- Modification of PLC data is not allowed TRUE- Modification of PLC data  is allowed    MaxLimit           ¤        6   Maximum value allowed for modification using keyboard    MinLimit           ¤        6   Minimum value allowed for modification using keyboard       PrintTime_Sec                                      к _  А                  PRINTTOD               XPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   YPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Addr           ¤        K   Address of PLC variable of TOD data type, Pass address using ADR() operator   Format           ¤            0 - HH:MM:SS, >=1 - HH:MM   FontType           ¤        ў   0-Single Size Bold, 1-DS Double Size Bold, 2-Single Size, 3-DS Double Size, 4-Small Size,
									16#80-Single Size Bold Inverse, 16#81-Double Size Bold Inverse, 16#82-Single Size Inverse, 16#83-DSI Double Size Inverse , 16#84-Small Size Inverse   Modify            ¤ 	       [    FALSE- Modification of PLC data is not allowed TRUE- Modification of PLC data  is allowed    MaxLimit           ¤ 
       6   Maximum value allowed for modification using keyboard    MinLimit           ¤        6   Minimum value allowed for modification using keyboard       PrintTOD                                      к _  А                  PRINTVARBOOL               XPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   YPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Addr           ¤          Address of  PLC variable of data type BYTE, WORD, DWORD, INT, DINT if variable is mapped at  I/Q/M/ data memory or
                                              	 			 address of  PLC variable of data type BOOL if variable is mapped at  data memory. Pass address using ADR() operator   BitPos           ¤          0 to 31 if PLC variable is mapped at  I/Q/M/Data memory as data type BYTE/WORD/DWORD/INT/DINT or
                                                 		     	 to acces bit within BYTE/WORD/DWORD/INT/DINT
										Must be 0 IF PLC variable OF data TYPE BOOL is mapped AT data memory.   TrueText    Q       Q    ¤ 
       c    Text displayed when Boolean variable is TRUE. Text size limited to 14 for SS/SSI, to 7 for DS/DSI 	   FalseText    Q       Q    ¤        d    Text displayed when Boolean variable is FALSE. Text size limited to 14 for SS/SSI, to 7 for DS/DSI    FontType           ¤        °   0-Single Size Bold, 1-DS Double Size Bold, 2-Single Size, 3-DS Double Size, 4-Small Size,
										16#80-Single Size Bold Inverse, 16#81-Double Size Bold Inverse, 16#82-Single Size Inverse, 16#83-DSI Double Size Inverse , 16#84-Small Size Inverse   Modify            ¤        [    FALSE- Modification of PLC data is not allowed TRUE- Modification of PLC data  is allowed       PrintVarBool                                      к _  А                  PRINTVARSYMBOL               XPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   YPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Addr           ¤          Address of  PLC variable of data type BYTE, WORD, DWORD, INT, DINT if variable is mapped at  I/Q/M/ data memory or
                                              	 			 address of  PLC variable of data type BOOL if variable is mapped at  data memory. Pass address using ADR() operator    BitPos           ¤          0 to 31 if PLC variable is mapped at  I/Q/M/Data memory as data type BYTE/WORD/DWORD/INT/DINT or
                                                 		 to acces bit within BYTE/WORD/DWORD/INT/DINT
									Must be 0 IF PLC variable OF data TYPE BOOL is mapped AT data memory.
   TrueSymbol           ¤ 
       0    Symbol displayed when Boolean variable is TRUE    FalseSymbol           ¤        0    Symbol displayed when Boolean variable is FALSE   Modify            ¤        [    FALSE- Modification of PLC data is not allowed TRUE- Modification of PLC data  is allowed       PrintVarSymbol                                      к _  А                  PRINTVARVALUE               XPos           ¤        7   Pixel position from left to right. xPos can be 0 to 127   YPos           ¤        c   Pixel position from top to bottom. yPos is can be 0 to 7 even though display size is 128 X64 pixels   Addr           ¤        \   Address of variable of defined datat type to be displayed. Pass address using ADR() operator   DataType           ¤        [   0- INT, 1- WORD, 2- BYTE, 3- DINT, 4- DWORD, 5- TIMESEC, 6-TIMEMIN, 12 -Binary, 13- String 	   DigitsNum           ¤        A   Number of digits to be displayed excuding sign and decimal point    DPPos           ¤           Decimal point position   FontType           ¤ 	       Z    0-SS Single Size, 1-DS Double Size, 2-SSI Single Size Inverse, 3-DSI Double Size Inverse    LeadingZeros            ¤ 
              Modify            ¤        S    FALSE- Modification of object not allowed TRUE- Modification of object is allowed    MaxLimit               ¤               MinLimit               ¤                  PrintVarValue                                      к _  А                  READETHVERSION            
   pbyVersion    	                              ¤                  READETHVERSION                                     к _  А                  REGISTERSYMBOL               Addr           ¤        \   Address of PLC variable of Array [0..n] of BYTE data type, Pass address using ADR() operator	   SymbolNum           ¤        &   Number of the Symbol to be registered       RegisterSymbol                                      к _  А                  SD_FILECLOSE               FILE           ¤                  SD_FILECLOSE                                      к _  А               
   SD_FILEEOF               FILE           ¤               
   SD_FILEEOF                                      к _  А                  SD_FILEGETPOS               FILE           ¤                  SD_FILEGETPOS                                     к _  А                  SD_FILEOPEN               FILENAME               ¤        
    With path   MODE           ¤            1:Write,  2: Read , 3 : Append      SD_FILEOPEN                                     к _  А                  SD_FILEREAD               FILE           ¤               BUFFER           ¤               SIZE           ¤                  SD_FILEREAD                                     к _  А                  SD_FILESETPOS               FILE           ¤               POS           ¤                  SD_FILESETPOS                                     к _  А                  SD_FILEWRITE               FILE           ¤               BUFFER           ¤               SIZE           ¤                  SD_FILEWRITE                                     к _  А                  SET_EXTENDEDRETAIN               bUseFlag            ¤                  SET_EXTENDEDRETAIN                                      к _  А                  SET_HSC_DIR               WR            ¤        П    If this BOOLean Input is TRUE, then respective single phase HSC counting direction is set. Once direction is set, WR input can be made FALSE.    DIR            ¤        \    If DIR is FALSE, counter counts in upward direction; else it counts in downward direction.    CH           ¤        0   	Holds the HSC channel number as 11, 12, 21 and 22, if HSC channel is configured for Mode 3.
						Holds the HSC channel number as 13 or 23, if Z input is configured for Mode 3.
						For channel 1 & 2  this function is not executed. 
						For counter modes 0, 1 & 2, this function is not executed.       SET_HSC_DIR                                      к _  А                  SET_VIEWDATALOG               bEnable            ¤                  SET_VIEWDATALOG                                      к _  А               	   SETETHMAC               MAC    	                              ¤               	   SetETHMAC                                     к _  А                  SETETHPORTCONFIG               IPAdr    	                              ¤        p    Specify address pointing to array of four bytes which contains the IP address to be configured to COM extension
   SubnetMask    	                              ¤        q    Specify address pointing to array of four bytes which contains the subnet mask to be configured to COM extension   Gateway    	                              ¤        u    Specify address pointing to array of four bytes which contains the gateway address to be configured to COM extension      SetETHPortConfig                                     к _  А                  SETHMIENTRYMODE            	   EntryMode           ¤        l   0:Function key Multiple press mode, 1: Value increment //Decrement mode, 2: Digit increment / decrement mode      SetHMIEntryMode                                      к _  А                  SHOWCURSORTEXT               XPos           ¤               YPos           ¤               Char               ¤               FontType           ¤                  ShowCursorText                                      к _  А                  SYSTEM_MENU                   System_Menu                                      к _  А               	   TD_CONFIG               WR            ¤        a   If BOOLean input WR is TRUE, input channel is configured for  time duration measurement function    MODE           ¤ 	       z   Holds mode of operation as 0/1/2. All other values are invalid. Mode can be changed at any time during counter operation.)   MAX_TD           ¤        ┌   This is the maximum time duration that can be measured. If time duration exceeds MAX_TD then time duration value
								returned by TD_READ function returns zero. Maximum value of MAX_TD is 10,000,000 ╡s i.e. 10 sec    CH           ¤           Holds channel number as 2, 5   	   TD_CONFIG                                      к _  А                  TD_READ               RD            ¤        ╛   If BOOLean input RD is TRUE, function returns the latest value of time duration as per the selected mode of operation.
					If the function is executed with RD as FALSE, function returns 0.   CH           ¤ 
           Holds channel number as 2, 5      TD_READ                                     к _  А                  TRANSFERAPPCONFIGURATION               AppIdentifier           ¤               ConfigurationIndex                 ¤                  TransferAppConfiguration                                      к _  А               	   UPDATELCD                	   UpdateLCD                                      к _  А                  Z_CONFIG               WR            ¤           Enable input   Z_MODE           ¤        /   0- Ignore, 1- Preset, 2- Hold action of Z input   Z_PV           ¤        /   Holds preset value for Preset mode of operation   CH           ¤           Z input channel no. 1 or 2      Z_CONFIG                                      к _  А           h   C:\Program Files\CoDeSysForAutomationAlliance\Mitsubishi Electric India Targets\GOC35\Libraries\PIDA.lib          PID           RealSP             ¤               RealPV             ¤               RealDEAD_BAND             ¤               RealFF_Bias             ¤               RealMANUAL_CV             ¤            
   RealMAX_CV             ¤             
   RealMIN_CV             ¤ !              RealCV           0    ¤ "              RealTimeCycle   	                      0,0,0             0          0          0    ¤ #              RealSystemError   	                      0,0,0,0             0          0          0          0    ¤ $              RealProcessVariable   	                      0,0,0,0             0          0          0          0    ¤ %              RealProportionalAction           0    ¤ &       /   Proportional contribution in controller output    RealIntegralAction           0    ¤ '       +   Integral contribution in controller output    RealDerivativeAction           0    ¤ (       -   Derivative contribution in controller output    RealIntegralLastAction           0    ¤ )              DwCurrentReferenceCycle            ¤ *              DwLastReferenceCycle            ¤ +              BoolFirstCycle            ¤ ,              A            ¤ -              B            ¤ .              Temp             ¤ /                 SP           ¤        	   Set point   PV           ¤           Process Variable   K            ¤            Control system proportional gain   Ti            ¤        $   Integral time in seconds per repeats   Td            ¤           Derivative time in seconds	   DEAD_BAND           ¤        E   CV remains unchanged if absolute system error is less than this value   FF_Bias           ¤ 	       5   Additional value to be added to control system output	   MANUAL_CV           ¤ 
       A   Value forced at CV if manual mode is selected i.e. MANUAL is TRUE   MAX_CV           ¤           Maximum CV clamp   MIN_CV           ¤           Minimum CV clamp   PA            ¤        :   Enables (TRUE) or disables (FALSE) the proportional action   IA            ¤        7   Enables (TRUE) or disables (FALSE) the integrall action   DA            ¤        8   Enables (TRUE) or disables (FALSE) the derivative action   DERIVATIVE_PV            ¤        S   Enables the derivative action depending on PV (TRUE) or on the system error (FALSE)   DIRECT_MODE            ¤        2   Selects direct mode (TRUE) or reverse mode (FALSE)   MANUAL            ¤        4   Selects manual mode (TRUE) OR automatic mode (FALSE)   RESET            ¤        P   Disables the control loop and clears all controllerТs internal variables if TRUE      CV           ¤           Controller output   ERROR_PARAM            ¤        I   TRUE if parameters are invalid (K<=0, Ti<= 0, Td < 0, MAX_CV<MIN_CV) and    CV_ALARM            ¤        &   TRUE if CV is reached MAX_CV or MIN_CV            к _  А                
   PID_TO_PWM           Run_Old             ¤               M             ¤               C             ¤               Y2             ¤            
   ABS_PID_CV             ¤               ON_Time            ¤               OFF_Time            ¤               T1                    TON    ¤                  Run            ¤           PWM output is generated if TRUE   PID_CV           ¤        !   PID output to be scaled to Period   Period           ¤           PWM period       PWM_DOUT            ¤           PWM output             к _  А                          ALARM_MAPPING           HMI_Motor_Trip11             1              SWQA                    CTU    1              KKKK            1                               a╜Вe  @                   CYCLE     (      PID        )                                               PID    =              k1     АmD   950    =              t1      аB   80    =              td             =              db            =              ff            =	              man_cv            =
              pa            =              ia            =              da             =              DM             =              manual_control             =              reset             =              dp             =              zWrite_Freq            =       &   Writ frew thro drive-plc communication   zoff1             =              zR4A                 R_TRIG    =              zpressure_low_at_start             =              zCondForBosting_with_band             =          used for c effect   StagingFrequency1            =              SetKW    H       =              ActualKW    2       =              ControlPID_CV            =              Enable             =              Freq             =              AOut             =              MinCV            =               T10                    TON    =!              PT    ш      ="              Count           =#              Pause             =$           
   MaxReached             =%              Test    А>      =&              Y1            ='              Y2     }      =(              DWORD1    ы(      =)    MDЇ                  %           M1             =*              M2             =+              SetP             =,              SetN             =-                               a╜Вe  @                   HMI_MAPPING           HMI_Pump_EN            2                               a╜Вe  @                   HMI_PRG           BlankStr    Q       Q    ,              EntryAct           ,              RunAct          ,              ExitAct          ,              DT_INT          ,              DT_BYTE          ,              DT_WORD          ,              DT_DINT          ,              DT_DWORD          ,              DT_BOOL          ,              DT_REAL          ,           	   DT_STRING          ,              DataLogEntries   	                       _DataLogEntry            ,       &   SET,1,2,1,5,5,1,0,LOG_,0,0,1,0,1,32000   OUTLow             ,              OutHigh             ,              CLOCKLow          (PT:=T#500ms)      Ї       TP    ,           	   CLOCKHigh          (PT:=T#200ms)      ╚        TP    ,              ImageRegistered            ,                               a╜Вe  @                	   HMI_PRG_1           BlankStr    Q       Q    )              EntryAct           )              RunAct          )              ExitAct          )              DT_INT          )              DT_BYTE          )              DT_WORD          )              DT_DINT          )              DT_DWORD          )              DT_BOOL          )              DT_REAL          )           	   DT_STRING          )              DataLogEntries   	                       _DataLogEntry            )       &   SET,1,2,1,5,5,1,0,LOG_,0,0,1,0,1,32000   OUTLow             )              OutHigh             )              CLOCKLow          (PT:=T#500ms)      Ї       TP    )           	   CLOCKHigh          (PT:=T#200ms)      ╚        TP    )              ImageRegistered            )                               a╜Вe  @                   IMPLICITPOSTPLC_PRG           _2CnfDn             .           	   _2CnfData   	                 @    16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000                                                               .           	   _2RawData   	                          .              _2RawDataReal   	                           .              _2RdStsEdge                 R_TRIG    .       -   !EndSection!3000!3004!1.0.0.1!P4AOVI#00001#1!                    a╜Вe  @                   IMPLICITPOSTPLC_PRG_1           _2CnfDn             *           	   _2CnfData   	                 @    16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000                                                               *           	   _2RawData   	                          *              _2RawDataReal   	                           *              _2RdStsEdge                 R_TRIG    *       -   !EndSection!3000!3004!1.0.0.1!P4AOVI#00001#1!                    a╜Вe  @                   IMPLICITPREPLC_PRG           _1CnfDn             -           	   _1CnfData   	                 @    16#0001,16#0000,16#0001,16#0000,16#0000,16#0000,16#0000,16#0000                                                             -           	   _1RawData   	                          -           	   _1FilData   	                           -              _1RdStsEdge                 R_TRIG    -              _1FTRC0        	               FT_FODF    -              _1FTRC1        	               FT_FODF    -       -   !EndSection!3000!3006!1.0.0.1!P4UAI1#00000#1!                    a╜Вe  @                   IMPLICITPREPLC_PRG_1           _1CnfDn             0           	   _1CnfData   	                 @    16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000                                                               0           	   _1RawData   	                          0           	   _1FilData   	                           0              _1RdStsEdge                 R_TRIG    0              _1FTRC0        	               FT_FODF    0       -   !EndSection!3000!3006!1.0.0.1!P4UAI1#00000#1!                    a╜Вe  @                   INPUT_MAPPING                             a╜Вe  @                   INTERLOCKING           Bypass             4              STD            4              SGs             4              Pump_On_Plus                 R_TRIG    4              Pump1_On_Delay_Reset                    TON    4              Pump2_On_Delay                    TON    4              Pump2_On_Delay_Reset                    TON    4	              Dealy_Time_STart             4
              Relay_Start_Command_P2             4              Pump2_On_Delay_Count                    TON    4              Relay_Start_Command_PUMP2             4              Pump3_On_Delay_Count                    TON    4                               мKЕe  @                   MEI            Bar             <              PID_OP            <              Freq             <           
   Condition1             <	              Sec                    TON    <
              M0             <              MotorOn             <           
   Condition2             <           
   Condition3             <              Sec1                    TON    <              Reset1             <              SecEQ             <              MinEQ             <              HrEQ             <              Hooter             <              ActSec1            <              ActMin1            <              ActHr1            <    MWР                  %           ABC            <    MWP                   %           XYZ            <    MWZ                   %           Var1            <              Var2             <              Var3            <              KBLY             <               StagingSetTime          <#              ActSec           <$              Sec_Counter                    CTU   <%              Min_Counter                    CTU   <&              Hour_Counter                    CTU   <'              SetSec          <(              SetMin          <)              SetHr    
      <*                               a╜Вe  @                   OUTPUT_MAPPING                             a╜Вe  @                   PLC_PRG           SS            6              HMI            6                               a╜Вe  @                   SETPOINT                             a╜Вe  @                    
 и   6  3     5  7  1  2  ¤   <  =  4  ( И┴     K   Ц┴    K   д┴    K   ▓┴    K   ╟┴                ╘┴        +     ║╗localhost                                                                                                                                                                                                                                                                       Б#Tl╤╥Ъл `ч▐S            Tcp/Ip (Level 2)  'localhost' via Tcp/Ip__ 3S Tcp/Ip level 2 driver    8   щ  Address IP address or hostname 
   192.168.15.1    ш  Port     ░0   ъ  Blocksize Must match with runtime    А 7   d   Motorola byteorder                No    Yes B               Б#Tl╤╥Ъл `ч▐S            Tcp/Ip (Level 2)  'localhost' via Tcp/Ip_ 3S Tcp/Ip level 2 driver    5   щ  Address IP address or hostname 
   localhost    ш  Port     ░0   ъ  Blocksize Must match with runtime    А 7   d   Motorola byteorder                No    Yes       Б#Tl╤╥Ъл `ч▐S            Tcp/Ip (Level 2)  'localhost' via Tcp/Ip__ 3S Tcp/Ip level 2 driver    8   щ  Address IP address or hostname 
   192.168.15.1    ш  Port     ░0   ъ  Blocksize Must match with runtime    А 7   d   Motorola byteorder                No    Yes   K         @   a╜Вe√ф     ,   'Ш                     CoDeSys 1-2.2   р     ════════                     ¤<         ы      
   Є         є         ў          °                    "          $                                                   '          (          ▒          │          ╡          ╣          ║         ╢          ╧          ╨          ╤         ╝          ╛          └          ┬          ─         ╞      А   ╩       P  ╚          ╠         ╬       А  ╥                    ~          А          С          Т          У          Ф          Х          Ц          Ч          Ш          Щ          Б          В          Г          Д          Е          Ж          З       @  И       @  К       @  Л       @  М       @  П       @  в         а         и          Ю       А  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         т          ф         ц      
   ш         ъ         ь         ю         ё         я          Ё          Є         є          Ї          ї          ў      (                                                                        "         !          #          $         Ы          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          д          е          l          o          p          q          r          s         u          ▐          v         ж          з          |         ~         А         x          z      (   й          л         %         н          о          п         @         ▌          ф          ╪         &          Ё          	                   ц          ч          ш         щ          ъ         к          ▓          ┤          м          н          п          ░          ╖          ╕          ╛          ь          э                            I         J         K          	          L         M          Щ                             ▐          P         Q          S          )          	          	          Б           	          +	       @  ,	       @  -	          Z	          ════            ¤<  Є         є         ў          °                    "          $                                                   '          (          ╢          ╧          ╤          a         y          z          X          \         K          U         X         Z         т          ф         ц      
   ш         ъ         ь         ю         ё         я          Ё          Є         є          Ї          ї          ў      (                                                                        "         !          #          $         Ы          f         g          h          k         F          H         J         L          N         P         R          U         S          T          V          W          д          o          p          q          r          s         u          ▐          v         ж          з          |         ~         А         x          z      (   й          %         н          о          п         @         ▌          ф          ╪         &          Ё          	                   ц          ч          ш         щ          ъ         к          ▓          ┤          м          н          п          ░          ╖          ╕          ╛          ь          э                            I         J         K          	          L         M          Щ                             ▐          P         Q          S          )          	          	          Б           	          +	       @  ,	       @  -	          Z	          ════            ════∙     ════════                                                   з  	   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	                 
   Value                Variable       Min                Variable       Max                Variable          5  
   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          5  
   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          d        Member    	                    Index-Offset                            SubIndex-Offset                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          Я  	   	   Name                        Member    	                 
   Value                Member    
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          з  	   	   Name                     
   Index                            SubIndex                            Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	                 
   Value                Variable       Min                Variable       Max                Variable                         Є     ════════               В   _Dummy@    @   @@    @   @             дя@             дя@@   @     Аv@@   ; @+   ё     ════════                                  Аv@      4@   ░             Аv@      D@   ░                       └       @                           Аf@      4@     Аf@                Аv@     Аf@     @u@     Аf@        ў┴ы           Module.Root-1__not_found__    Graphical Operation Controller     IB          % QB          % MB        %   o     Module.GOC350Module.Root   Parameter.FileType1Module.GOC35D:\PLC\test 5_App.dat   FILEGOC35     IB          % QB          % MB        %    a╜Вe	╖KЕe     ════════           VAR_GLOBAL
END_VAR
                                                                                  "   , 4 4 A▓               Default_Task    
     ImplicitPREPLC_PRG();
PLC_PRG();ImplicitPOSTPLC_PRG();                   a╜Вe                 $√     ════════               ════════           Standard ж╫e	ж╫e      ════════                         	a╜Вe     ════════           VAR_CONFIG
END_VAR
                                                                                   '              ,   'Ш           Global_Variables a╜Вe	╖KЕe     ════════        ш+  VAR_GLOBAL
	BB: INT;

(*DIGITAL_INPUT*)
	VFD_RUN: BOOL;
	 Auto_Manual_Pump1: BOOL;
	Auto_Manual_Pump2: BOOL;
	 Auto_Manual_Pump3: BOOL;
	 Auto_Manual_Pump4: BOOL;
	 Auto_Manual_Pump5: BOOL;
       Auto_Manual_Pump6: BOOL;
      Auto_Manual_Pump7: BOOL;
	Auto_Manual_Pump8: BOOL;
	Remote_Start: BOOL;
	Auto_Manual_SW: BOOL;



	VFD_RUN_FEEDBACK AT %IX0.0: BOOL;
	 Auto_Manual_Pump1_FB AT %IX0.1: BOOL;
	Auto_Manual_Pump2_FB AT %IX0.2: BOOL;
	 Auto_Manual_Pump3_FB AT %IX0.3: BOOL;
	 Auto_Manual_Pump4_FB AT %IX0.4: BOOL;
	 Auto_Manual_Pump5_FB AT %IX0.5: BOOL;
       Auto_Manual_Pump6_FB AT %IX0.6: BOOL;
      Auto_Manual_Pump7_FB AT %IX0.7: BOOL;
	Auto_Manual_Pump8_FB AT %IX1.0: BOOL;
	Remote_Start_FB AT %IX1.1: BOOL;
	Auto_Manual_SW_FB AT %IX1.2: BOOL;



(*DIGITAL_OUTPUT*)
	VFD_start_Command: BOOL;
	Start_Command_Pump1: BOOL;
	Start_Command_Pump2: BOOL;
	Start_Command_Pump3: BOOL;
	Start_Command_Pump4: BOOL;
	Start_Command_Pump5: BOOL;
	Start_Command_Pump6: BOOL;
	Start_Command_Pump7: BOOL;
	Start_Command_Pump8: BOOL;
	ALARM: BOOL;

	VFD_ON AT %QX0.0: BOOL;
	Pump1_ON  AT %QX0.1: BOOL;
	Pump2_ON AT %QX0.2: BOOL;
	Pump3_ON AT %QX0.3: BOOL;
	Pump4_ON AT %QX0.4: BOOL;
	Pump5_ON AT %QX0.5: BOOL;
	Pump6_ON AT %QX0.6: BOOL;
	Pump7_ON AT %QX0.7: BOOL;
	Pump8_ON AT %QX1.0: BOOL;
	ALARM_Active AT %QX1.1: BOOL;






	VDF_Freq: REAL;
	Preliminary_permissive: BOOL;
	Pump_No: INT;




	Pump_Off_Command: BOOL;
	Preesure_Achived: BOOL;
	Pump1_On_Timer: TON;
	Pump2_On_Timer: TON;
	Pump3_On_Timer: TON;
	Pump4_On_Timer: TON;
	Pump5_On_Timer: TON;
	Pump6_On_Timer: TON;
	Pump7_On_Timer: TON;
	Pump8_On_Timer: TON;
	Pump1_On_Timer_Bit: BOOL;
	Pump1_Run: BOOL;
	ss: TON;
	Pump1_RunHours: INT;
	Pump1_On_Plus: R_TRIG;
	Pump2_On_Plus: R_TRIG;
	Pump3_On_Plus: R_TRIG;
	Pump4_On_Plus: R_TRIG;
	Pump5_On_Plus: R_TRIG;
	Pump6_On_Plus: R_TRIG;
	Pump7_On_Plus: R_TRIG;
	Pump8_On_Plus: R_TRIG;
	SSSS: TIME;
	Pump1_On_Timer_Min: INT;
	Pump1_On_Timer_Hr: INT;
	Pump1_On_Timer_Hr_Data: BOOL;
	Pump2_On_Timer_Min: INT;
	Pump2_On_Timer_Hr: INT;
	Pump2_On_Timer_Hr_Data: BOOL;
	Pump3_On_Timer_Min: INT;
	Pump3_On_Timer_Hr: INT;
	Pump3_On_Timer_Hr_Data: BOOL;
	Pump4_On_Timer_Min: INT;
	Pump4_On_Timer_Hr: INT;
	Pump4_On_Timer_Hr_Data: BOOL;
	Pump5_On_Timer_Min: INT;
	Pump5_On_Timer_Hr: INT;
	Pump5_On_Timer_Hr_Data: BOOL;
	Pump6_On_Timer_Min: INT;
	Pump6_On_Timer_Hr: INT;
	Pump6_On_Timer_Hr_Data: BOOL;
	Pump7_On_Timer_Min: INT;
	Pump7_On_Timer_Hr: INT;
	Pump7_On_Timer_Hr_Data: BOOL;
	Pump8_On_Timer_Min: INT;
	Pump8_On_Timer_Hr: INT;
	Pump8_On_Timer_Hr_Data: BOOL;
	Pump12_Active: BOOL;
	Pump13_Active: BOOL;
	Pump14_Active: BOOL;
	Pump15_Active: BOOL;
	Pump16_Active: BOOL;
	Pump17_Active: BOOL;
	Pump18_Active: BOOL;
	Pump21_Active: BOOL;
	Pump23_Active: BOOL;
	Pump24_Active: BOOL;
	Pump25_Active: BOOL;
	Pump26_Active: BOOL;
	Pump27_Active: BOOL;
	Pump28_Active: BOOL;
	Pump31_Active: BOOL;
	Pump32_Active: BOOL;
	Pump34_Active: BOOL;
	Pump35_Active: BOOL;
	Pump36_Active: BOOL;
	Pump37_Active: BOOL;
	Pump38_Active: BOOL;
	Pump41_Active: BOOL;
	Pump42_Active: BOOL;
	Pump43_Active: BOOL;
	Pump45_Active: BOOL;
	Pump46_Active: BOOL;
	Pump47_Active: BOOL;
	Pump48_Active: BOOL;
	Pump51_Active: BOOL;
	Pump52_Active: BOOL;
	Pump53_Active: BOOL;
	Pump54_Active: BOOL;
	Pump56_Active: BOOL;
	Pump57_Active: BOOL;
	Pump58_Active: BOOL;
	Pump61_Active: BOOL;
	Pump62_Active: BOOL;
	Pump63_Active: BOOL;
	Pump64_Active: BOOL;
	Pump65_Active: BOOL;
	Pump67_Active: BOOL;
	Pump68_Active: BOOL;
	Pump71_Active: BOOL;
	Pump72_Active: BOOL;
	Pump73_Active: BOOL;
	Pump74_Active: BOOL;
	Pump75_Active: BOOL;
	Pump76_Active: BOOL;
	Pump78_Active: BOOL;
	Pump81_Active: BOOL;
	Pump82_Active: BOOL;
	Pump83_Active: BOOL;
	Pump84_Active: BOOL;
	Pump85_Active: BOOL;
	Pump86_Active: BOOL;
	Pump87_Active: BOOL;
		Pump1_Activ: BOOL;
	Pump1_Active: BOOL;
	Pump2_Active: BOOL;
	Pump3_Active: BOOL;
	Pump4_Active: BOOL;
	Pump5_Active: BOOL;
	Pump6_Active: BOOL;
	Pump7_Active: BOOL;
	Pump8_Active: BOOL;



	Taget_Pressure: BOOL;
	Pump81_Off_Command: BOOL;
	Pump82_Off_Command: BOOL;
	Pump83_Off_Command: BOOL;
	Pump84_Off_Command: BOOL;
	Pump85_Off_Command: BOOL;
	Pump86_Off_Command: BOOL;
	Pump87_Off_Command: BOOL;
	Pump71_Off_Command: BOOL;
	Pump72_Off_Command: BOOL;
	Pump73_Off_Command: BOOL;
	Pump74_Off_Command: BOOL;
	Pump75_Off_Command: BOOL;
	Pump76_Off_Command: BOOL;
	Pump78_Off_Command: BOOL;
	Pump61_Off_Command: BOOL;
	Pump62_Off_Command: BOOL;
	Pump63_Off_Command: BOOL;
	Pump64_Off_Command: BOOL;
	Pump68_Off_Command: BOOL;
	Pump66_Off_Command: BOOL;
	Pump67_Off_Command: BOOL;
	Pump51_Off_Command: BOOL;
	Pump52_Off_Command: BOOL;
	Pump53_Off_Command: BOOL;
	Pump54_Off_Command: BOOL;
	Pump58_Off_Command: BOOL;
	Pump56_Off_Command: BOOL;
	Pump57_Off_Command: BOOL;
	Pump41_Off_Command: BOOL;
	Pump42_Off_Command: BOOL;
	Pump43_Off_Command: BOOL;
	Pump48_Off_Command: BOOL;
	Pump45_Off_Command: BOOL;
	Pump46_Off_Command: BOOL;
	Pump47_Off_Command: BOOL;
	Pump31_Off_Command: BOOL;
	Pump32_Off_Command: BOOL;
	Pump38_Off_Command: BOOL;
	Pump34_Off_Command: BOOL;
	Pump35_Off_Command: BOOL;
	Pump36_Off_Command: BOOL;
	Pump37_Off_Command: BOOL;
	Pump21_Off_Command: BOOL;
	Pump28_Off_Command: BOOL;
	Pump23_Off_Command: BOOL;
	Pump24_Off_Command: BOOL;
	Pump25_Off_Command: BOOL;
	Pump26_Off_Command: BOOL;
	Pump27_Off_Command: BOOL;
	Pump18_Off_Command: BOOL;
	Pump12_Off_Command: BOOL;
	Pump13_Off_Command: BOOL;
	Pump14_Off_Command: BOOL;
	Pump15_Off_Command: BOOL;
	Pump16_Off_Command: BOOL;
	Pump17_Off_Command: BOOL;
	Pump1_Off_Command: BOOL;
	Pump2_Off_Command: BOOL;
	Pump3_Off_Command: BOOL;
	Pump4_Off_Command: BOOL;
	Pump5_Off_Command: BOOL;
	Pump6_Off_Command: BOOL;
	Pump7_Off_Command: BOOL;
	Pump8_Off_Command: BOOL;
	Pump65_Off_Command: BOOL;
	KBL: TIME;
	Pump1_T_Reset: BOOL;
	Pump2_T_Reset: BOOL;
	Pump3_T_Reset: BOOL;
	Pump4_T_Reset: BOOL;
	Pump5_T_Reset: BOOL;
	Pump6_T_Reset: BOOL;
	Pump7_T_Reset: BOOL;
	Pump8_T_Reset: BOOL;
	Pump1_On_T_M_Reset: BOOL;
	Pump1_On_Plus_Hr: R_TRIG;
	Pump2_On_T_M_Reset: BOOL;
	Pump2_On_Plus_Hr: R_TRIG;
	Pump3_On_T_M_Reset: BOOL;
	Pump3_On_Plus_Hr: R_TRIG;
	Pump4_On_T_M_Reset: BOOL;
	Pump4_On_Plus_Hr: R_TRIG;
	Pump5_On_T_M_Reset: BOOL;
	Pump5_On_Plus_Hr: R_TRIG;
	Pump6_On_T_M_Reset: BOOL;
	Pump6_On_Plus_Hr: R_TRIG;
	Pump7_On_T_M_Reset: BOOL;
	Pump7_On_Plus_Hr: R_TRIG;
	Pump8_On_T_M_Reset: BOOL;
	Pump8_On_Plus_Hr: R_TRIG;
	Motor_Trip1: BOOL;
	VFD_Trip: BOOL;
	Motor_Trip2: BOOL;
	Motor_Trip3: BOOL;
	Motor_Trip4: BOOL;
	Motor_Trip5: BOOL;
	Motor_Trip6: BOOL;
	Motor_Trip7: BOOL;
	Motor_Trip8: BOOL;
	Emersency_Stop: BOOL;
	HMI_VFD_Trip: BOOL;
	HMI_Motor_Trip1: BOOL;
	HMI_Motor_Trip2: BOOL;
	HMI_Motor_Trip3: BOOL;
	HMI_Motor_Trip4: BOOL;
	HMI_Motor_Trip5: BOOL;
	HMI_Motor_Trip6: BOOL;
	HMI_Motor_Trip7: BOOL;
	HMI_Motor_Trip8: BOOL;
	HMI_E_Stop: BOOL;

	Staging_Time: TIME;
	Stagging_On_Timer: TON;
	Stagging_Delay_Timer: TON;
	Stagging_Delay_TIme: BOOL;
	Distagging_On_Timer: TON;
	Distagging_Delay_Timer: TON;
	Distagging_Delay_TIme: BOOL;
	DisStaging_Delay: TIME;
	Pump1_Stagging_On_Timer: TON;
	Pump1_Stagging_Delay_Timer: TON;
	Pump1_Stagging_Delay_TIme: BOOL;
	Pump2_Stagging_Delay_Timer: BOOL;
	Pump2_Stagging_On_Timer: TON;
	Pump2_Stagging_Delay_TIme: BOOL;
	Pump3_Stagging_On_Timer: TON;
	Pump3_Stagging_Delay_Timer: TON;
	Pump3_Stagging_Delay_TIme: BOOL;
	Pump4_Stagging_On_Timer: TON;
	Pump4_Stagging_Delay_Timer: TON;
	Pump4_Stagging_Delay_TIme: BOOL;
	Pump5_Stagging_On_Timer: TON;
	Pump5_Stagging_Delay_Timer: TON;
	Pump5_Stagging_Delay_TIme: BOOL;
	Pump6_Stagging_On_Timer: TON;
	Pump6_Stagging_Delay_Timer: TON;
	Pump6_Stagging_Delay_TIme: BOOL;
	Pump7_Stagging_On_Timer: TON;
	Pump7_Stagging_Delay_Timer: TON;
	Pump7_Stagging_Delay_TIme: BOOL;
	Pump8_Stagging_On_Timer: TON;
	Pump8_Stagging_Delay_Timer: TON;
	Pump8_Stagging_Delay_TIme: BOOL;
	Pump2_Stagging_Delay1_Timer: TON;
	Pump1_Distagging_On_Timer: TON;
	Pump1_Distagging_Delay_Timer: TON;
	Pump1_Distagging_Delay_TIme: BOOL;
	Pump2_Distagging_On_Timer: TON;
	Pump2_Distagging_Delay_Timer: TON;
	Pump2_Distagging_Delay_TIme: BOOL;
	Pump3_Distagging_On_Timer: TON;
	Pump3_Distagging_Delay_Timer: TON;
	Pump3_Distagging_Delay_TIme: BOOL;
	Pump4_Distagging_On_Timer: TON;
	Pump4_Distagging_Delay_Timer: TON;
	Pump4_Distagging_Delay_TIme: BOOL;
	Pump5_Distagging_On_Timer: TON;
	Pump5_Distagging_Delay_Timer: TON;
	Pump5_Distagging_Delay_TIme: BOOL;
	Pump6_Distagging_On_Timer: TON;
	Pump6_Distagging_Delay_Timer: TON;
	Pump6_Distagging_Delay_TIme: BOOL;
	Pump7_Distagging_On_Timer: TON;
	Pump7_Distagging_Delay_Timer: TON;
	Pump7_Distagging_Delay_TIme: BOOL;
	Pump8_Distagging_On_Timer: TON;
	Pump8_Distagging_Delay_Timer: TON;
	Pump8_Distagging_Delay_TIme: BOOL;
	Alarm_Input: BOOL;
	Reset: BOOL;
	Starting_Pump_On: BOOL;
	Pump1EN: BOOL;
	Pump2EN: BOOL;
	Pump3EN: BOOL;
	Pump4EN: BOOL;
	Pump5EN: BOOL;
	Pump6EN: BOOL;
	Pump7EN: BOOL;

	Pump8EN: BOOL;

	Pump_Stagging_On_Timer_Delay: BOOL;
	Start_Command_Pump_On_Bit1: BOOL;
	Start_Command_Pump_On_Bit2: BOOL;
	Start_Command_Pump_On_Bit3: BOOL;
	Pump1_RLY_FB: BOOL;
	Pump2_RLY_FB: BOOL;
	Pump3_RLY_FB: BOOL;
	Pump1_VFD_FB: BOOL;
	Pump2_VFD_FB: BOOL;
	Pump3_VFD_FB: BOOL;
	Pump1_On_Delay: TON;
	Pump1_Relay_ONS: BOOL;
	Pump12_EQ_Active: BOOL;
	Pump13_EQ_Active: BOOL;
	Pump14_EQ_Active: BOOL;
	Pump15_EQ_Active: BOOL;
	Pump16_EQ_Active: BOOL;
	Pump17_EQ_Active: BOOL;
	Pump18_EQ_Active: BOOL;
	Pump1_EQ_Active: BOOL;
	Pump28_EQ_Active: BOOL;
	Pump27_EQ_Active: BOOL;
	Pump26_EQ_Active: BOOL;
	Pump25_EQ_Active: BOOL;
	Pump24_EQ_Active: BOOL;
	Pump23_EQ_Active: BOOL;
	Pump21_EQ_Active: BOOL;
	Pump2_EQ_Active: BOOL;
	Pump31_EQ_Active: BOOL;
	Pump32_EQ_Active: BOOL;
	Pump34_EQ_Active: BOOL;
	Pump35_EQ_Active: BOOL;
	Pump36_EQ_Active: BOOL;
	Pump37_EQ_Active: BOOL;
	Pump38_EQ_Active: BOOL;
	Pump3_EQ_Active: BOOL;
	VFD_Refer: PID;
	Reset_PID: BOOL;
	k1: REAL := 950;
	t1: REAL := 80;
	td: REAL;
	db: INT;
	ff: INT;
	man_cv: INT;
	pa: BOOL := TRUE;
	ia: BOOL := TRUE;
	da: BOOL;
	DM: BOOL;
	manual_control: BOOL;

	dp: BOOL;
	ControlPID_CV: REAL;
	Actual_PR_INT: INT;
	Taget_Freq_equal: BOOL;
	MAX_CV: INT;
	CV: INT;
	M_CV: INT;
	MIN_CV: INT;
	man_CV_Set: INT;
	Relay_Start_Command: BOOL;
	Relay_Start_Command_PP2: BOOL;
	Pump3_On_Delay: TON;
	Pump3_On_Delay_Reset: TON;
	Relay_Start_Command_P3: BOOL;
END_VAR


VAR_GLOBAL CONSTANT

	MHMI_Staging_Time: TIME;
	Disstaging_Time: TIME;
	Pressure_Tranmitter: PID;
END_VAR
VAR_GLOBAL RETAIN

	MHMI_Pump_EN AT%MW3700: WORD:= 3;
	HMI_Set_PR: INT;
	Actaul_Pressure: REAL;
	PumpEN_No1: BOOL:= 1;
	PumpEN_No2 : BOOL:= 1;
	PumpEN_No3: BOOL:= 1;
	PumpEN_No4: BOOL:= 1;
	PumpEN_No5: BOOL;
	PumpEN_No6: BOOL;
	PumpEN_No7: BOOL;
	PumpEN_No8: BOOL;
	MHMI_Set_PR: INT:= 5;
	Pump_Stagging_On_Timer: TON;
	Pump_Stagging_Delay_Timer: TON;
	dfdfdfff: INT := 5;
	HMI_Set_Fre: INT;
END_VAR                                                                                               '           /    ════════                   HMI_GVL a╜Вe	a╜Вe/    ════════        ▓  VAR_GLOBAL CONSTANT
     _S0: BYTE:=0;
     _S1: BYTE:=1;
     _S2: BYTE:=2;
     _S3: BYTE:=3;
     _S4: BYTE:=4;
     _S5: BYTE:=5;
     _S6: BYTE:=6;
     _S7: BYTE:=7;
     _S8: BYTE:=8;
     _S9: BYTE:=9;
     _S10: BYTE:=10;
     _S11: BYTE:=11;
     _S12: BYTE:=12;
     _S13: BYTE:=13;
     _S14: BYTE:=14;
     _S15: BYTE:=15;
     _S16: BYTE:=16;
     _S17: BYTE:=17;
     _S18: BYTE:=18;
     _S19: BYTE:=19;
     _S20: BYTE:=20;
     _S21: BYTE:=21;
     _S22: BYTE:=22;
     _S23: BYTE:=23;
     _S24: BYTE:=24;
     _S25: BYTE:=25;
     _S26: BYTE:=26;
     _S27: BYTE:=27;
     _S28: BYTE:=28;
     _S29: BYTE:=29;
     _S30: BYTE:=30;
END_VAR                                                                                               '           8  , 4 4 '═                  ImplicitIOList a╜Вe	a╜Вe8    ════════        ╪  
VAR_GLOBAL

(*|StartSection||HardwareConfig|*)
(***************************************************************************************************************************)
(*                                                                   MAIN : GC35MH-32MR-D                                                                                                  *)
(***************************************************************************************************************************)
(*--------Digital Input--------*)
	_DI_MAIN_0 			AT		%IX0.0		:		BOOL;					(* DI 00, Main *)
	_DI_MAIN_1			AT		%IX0.1		:		BOOL;					(* DI 01, Main *)
	_DI_MAIN_2			AT		%IX0.2		:		BOOL;					(* DI 02, Main *)	
	_DI_MAIN_3			AT		%IX0.3		:		BOOL;					(* DI 03, Main *)
	_DI_MAIN_4			AT		%IX0.4		:		BOOL;					(* DI 04, Main *)
	_DI_MAIN_5			AT		%IX0.5		:		BOOL;					(* DI 05, Main *)
	_DI_MAIN_6			AT		%IX0.6		:		BOOL;					(* DI 06, Main *)
	_DI_MAIN_7			AT		%IX0.7		:		BOOL;					(* DI 07, Main *)
	_DI_MAIN_8			AT		%IX1.0		:		BOOL;					(* DI 08, Main *)
	_DI_MAIN_9			AT		%IX1.1		:		BOOL;					(* DI 09, Main *)
	_DI_MAIN_10			AT		%IX1.2		:		BOOL;					(* DI 10, Main *)
	_DI_MAIN_11			AT		%IX1.3		:		BOOL;					(* DI 11, Main *)
	_DI_MAIN_12			AT		%IX1.4		:		BOOL;					(* DI 12, Main *)
	_DI_MAIN_13			AT		%IX1.5		:		BOOL;					(* DI 13, Main *)
	_DI_MAIN_14			AT		%IX1.6		:		BOOL;					(* DI 14, Main *)
	_DI_MAIN_15			AT		%IX1.7		:		BOOL;					(* DI 15, Main *)
	
(*--------Relay Output--------*)
	_DO_MAIN_0			AT		%QX0.0	:		BOOL;					(* RO 00, Main *)
	_DO_MAIN_1			AT		%QX0.1	: 		BOOL;					(* RO 01, Main *)
	_DO_MAIN_2			AT		%QX0.2	: 		BOOL;					(* RO 02, Main *)
	_DO_MAIN_3			AT		%QX0.3	: 		BOOL;					(* RO 03, Main *)
	_DO_MAIN_4			AT		%QX0.4	: 		BOOL;					(* RO 04, Main *)
	_DO_MAIN_5			AT		%QX0.5	: 		BOOL;					(* RO 05, Main *)
	_DO_MAIN_6			AT		%QX0.6	: 		BOOL;					(* RO 06, Main *)
	_DO_MAIN_7			AT		%QX0.7	: 		BOOL;					(* RO 07, Main *)
	_DO_MAIN_8			AT		%QX1.0	: 		BOOL;					(* RO 08, Main *)
	_DO_MAIN_9			AT		%QX1.1	: 		BOOL;					(* RO 09, Main *)
	_DO_MAIN_10		AT		%QX1.2	: 		BOOL;					(* RO 10, Main *)
	_DO_MAIN_11		AT		%QX1.3	: 		BOOL;					(* RO 11, Main *)
	_DO_MAIN_12		AT		%QX1.4	: 		BOOL;					(* RO 12, Main *)
	_DO_MAIN_13		AT		%QX1.5	: 		BOOL;					(* RO 13, Main *)
	_DO_MAIN_14		AT		%QX1.6	: 		BOOL;					(* RO 14, Main *)
	_DO_MAIN_15		AT		%QX1.7	: 		BOOL;					(* RO 15, Main *)
	
(*--------Interrupt Parameters--------*)
	_ClearInterruptQueue						:		BOOL;					(* Clears queue of pending interrupt events *)
	_HoldAllInterrupts							:		BOOL;					(* Holds processing of all attached interrupt events  *)


(***************************************************************************************************************************)
(*                                                                  IOE1 : GC-4UAD-10                                                                                                             *)
(***************************************************************************************************************************)
	_IOE1UnitState							:		BYTE;	
(*--------Analog Input--------*)
	_AI_IOE1_00 								:		REAL;					(* AI 00, IOE1 *)
	_AI_IOE1_01								:		REAL;					(* AI 01, IOE1 *)
	_AI_IOE1_02								:		REAL;					(* AI 02, IOE1 *)	
	_AI_IOE1_03								:		REAL;					(* AI 03, IOE1 *)

	_IOE1CH0OK			AT		%IX12.0	:		BOOL;
	_IOE1CH1OK			AT		%IX12.1	:		BOOL;
	_IOE1CH2OK			AT		%IX12.2	:		BOOL;
	_IOE1CH3OK			AT		%IX12.3	:		BOOL;

	
	_IOE1CH0Enable		AT		%QX12.0	:		BOOL;
	_IOE1CH1Enable		AT		%QX12.1	:		BOOL;
	_IOE1CH2Enable		AT		%QX12.2	:		BOOL;
	_IOE1CH3Enable		AT		%QX12.3	:		BOOL;
	

(***************************************************************************************************************************)
(*                                                                  IOE2 : GC-4DA-12                                                                                                            *)
(***************************************************************************************************************************)
	_IOE2UnitState							:		BYTE;	
(*--------Analog Output--------*)
	_AO_IOE2_00 							:		REAL;					(* AO 00, IOE2 *)
	_AO_IOE2_01								:		REAL;					(* AO 01, IOE2 *)
	_AO_IOE2_02								:		REAL;					(* AO 02, IOE2 *)	
	_AO_IOE2_03								:		REAL;					(* AO 03, IOE2 *)
	
	_IOE2CH0OK			AT		%IX14.0	:		BOOL;
	_IOE2CH1OK			AT		%IX14.1	:		BOOL;
	_IOE2CH2OK			AT		%IX14.2	:		BOOL;
	_IOE2CH3OK			AT		%IX14.3	:		BOOL;
	_IOE2No24V			AT		%IX14.7	:		BOOL;
	
	_IOE2CH0Enable		AT		%QX14.0	:		BOOL;
	_IOE2CH1Enable		AT		%QX14.1	:		BOOL;
	_IOE2CH2Enable		AT		%QX14.2	:		BOOL;
	_IOE2CH3Enable		AT		%QX14.3	:		BOOL;
	

(*|EndSection||HardwareConfig|*)
END_VAR
                                                                                               '           	     ════════           Variable_Configuration a╜Вe	a╜Вe	     ════════           VAR_CONFIG
END_VAR
                                                                                                 ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssЇ   Р                               ,              ╠3                 
    @ А          @      DEFAULT             System      ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssЇ   Р                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '            1  , В В П            Alarm_Mapping a╜Вe	a╜Вe      ════════        W   PROGRAM Alarm_Mapping
VAR
	HMI_Motor_Trip11: BOOL;
	SWQA: CTU;
	KKKK: INT;
END_VAR       VFD_Trip  HMI_VFD_Trip      Motor_Trip1  HMI_Motor_Trip1      Motor_Trip2  HMI_Motor_Trip2      Motor_Trip3  HMI_Motor_Trip3      Motor_Trip4  HMI_Motor_Trip4      Motor_Trip5  HMI_Motor_Trip5      Motor_Trip6  HMI_Motor_Trip6      Motor_Trip7  HMI_Motor_Trip7      Motor_Trip8  HMI_Motor_Trip8      Emersency_Stop  
HMI_E_Stop      	Emersency_StopESWQA HMI_Motor_Trip8A6CTU              CASWQA.CVMOVE  KKKK   d                  =  , N N 'Є           CYCLE a╜Вe	a╜Вe      ════════        :  PROGRAM CYCLE
VAR

	PID: PID;
	k1: REAL := 950;
	t1: REAL := 80;
	td: REAL;
	db: INT;
	ff: INT;
	man_cv: INT;
	pa: BOOL := TRUE;
	ia: BOOL := TRUE;
	da: BOOL;
	DM: BOOL;
	manual_control: BOOL;
	reset: BOOL;
	dp: BOOL;
	zWrite_Freq: WORD;		(*Writ frew thro drive-plc communication*)
	zoff1: BOOL;
	zR4A: R_TRIG;
	zpressure_low_at_start: BOOL;
	zCondForBosting_with_band: BOOL;(*used for c effect*)
(* Cycle start rank checked leading pump  vfd contactor on -delay main vfd on freq max freq- delay freq down & next pump on(DOL)
if pre GT max vfd at min freq destaging time on and one by on pumps off after every destaing time*)
	StagingFrequency1: WORD;
	SetKW: INT := 72;
	ActualKW: INT := 50;
	ControlPID_CV: INT;
	Enable: BOOL;
	Freq: REAL;
	AOut: REAL;
	MinCV: INT;
	T10: TON;
	PT: TIME := T#1000ms;
	Count: INT := 1;
	Pause: BOOL;
	MaxReached: BOOL;
	Test: INT := 16000;
	Y1: INT;
	Y2: INT := 32000;
	DWORD1 AT %MD500: DWORD := 10475;
	M1: BOOL;
	M2: BOOL;
	SetP: BOOL;
	SetN: BOOL;
END_VAR
VAR_IN_OUT

END_VAR
VAR RETAIN
END_VAR	      CActualKWACountADD  ActualKW	ЛT10.QT10 APTTON       Л
MaxReached╦Pause       ActualKWASetKW+5GE 
MaxReachedCActualKWASetKW-10LE 
MaxReached        CActualKWACountSUB  ActualKW	
MaxReachedЛPauseKT10.Q       ActualKWA74GT  SetPCActualKWA68LT  SetN        CA16000MOVE  man_cvSetP  M1     CA32000MOVE  man_cvSetN  M2      
M1KM2  manual_control    6(*PID operation wich given required frequency to VFD*)CPIDSetKWActualKWk1t1tddbffman_cv32000MinCVpaiadadpdmmanual_controlAresetPID           ControlPID_CV        ControlPID_CV032000Y1AY2SCALE  AOutCAOut0Y20A50SCALE  Freq   d                  2  , Ь Ь й           HMI_Mapping PЕe	a╜Вe      ════════        5   PROGRAM HMI_Mapping
VAR
	HMI_Pump_EN: INT;
END_VAR*    Pump Enable from HMI CAMHMI_Pump_ENMOVE  Pump_No      Pump Enable from HMI CAdfdfdfffMOVE  Pump_No        1APump_NoLE  
PumpEN_No12APump_NoLE  
PumpEN_No23APump_NoLE  
PumpEN_No34APump_NoLE  
PumpEN_No45APump_NoLE  
PumpEN_No56APump_NoLE  
PumpEN_No67APump_NoLE  
PumpEN_No7C8APump_NoLE  
PumpEN_No8        CA4MOVE  %MB100VFD_Trip       CA2MOVE  %MB100	Remote_StartKVFD_RUN       CA3MOVE  %MB100	Remote_StartЛVFD_RUN╦VFD_Trip       CA4MOVE  %MB101	Pump1EN
PumpEN_No1Pump1ENKMotor_Trip1       CA2MOVE  %MB101	
PumpEN_No1Pump1ENKStart_Command_Pump1       CA3MOVE  %MB101	
PumpEN_No1ЛMotor_Trip1Pump1EN╦Start_Command_Pump1       CA0MOVE  %MB101	Л
PumpEN_No1╦Pump1EN       CA4MOVE  %MB102	
PumpEN_No2Pump2ENKMotor_Trip2       CA2MOVE  %MB102	
PumpEN_No2Pump2ENKStart_Command_Pump2       CA4MOVE  %MB103	
PumpEN_No3Pump3ENKMotor_Trip3       CA2MOVE  %MB103	
PumpEN_No3Pump3ENKStart_Command_Pump3       CA3MOVE  %MB103	
PumpEN_No3Pump3ENЛMotor_Trip3╦Start_Command_Pump3       CA0MOVE  %MB103	Л
PumpEN_No3╦Pump3EN       CA4MOVE  %MB104	
PumpEN_No4Pump4ENKMotor_Trip4       CA2MOVE  %MB104	
PumpEN_No4Pump4ENKStart_Command_Pump4       CA3MOVE  %MB104	
PumpEN_No4Pump4ENЛMotor_Trip4╦Start_Command_Pump4       CA0MOVE  %MB104	Л
PumpEN_No4╦Pump4EN       CA3MOVE  %MB102	
PumpEN_No2Pump2ENЛMotor_Trip2╦Start_Command_Pump2       CA0MOVE  %MB102	Л
PumpEN_No2╦Pump2EN       CA4MOVE  %MB105	
PumpEN_No5Pump5ENKMotor_Trip5       CA2MOVE  %MB105	
PumpEN_No5Pump5ENKStart_Command_Pump5       CA3MOVE  %MB105	
PumpEN_No5Pump5ENЛMotor_Trip5╦Start_Command_Pump5       CA0MOVE  %MB105	Л
PumpEN_No5╦Pump5EN       CA4MOVE  %MB106	
PumpEN_No6Pump6ENKMotor_Trip6       CA2MOVE  %MB106	
PumpEN_No6Pump6ENKStart_Command_Pump6       CA3MOVE  %MB106	
PumpEN_No6Pump6ENЛMotor_Trip6╦Start_Command_Pump6       CA0MOVE  %MB106	Л
PumpEN_No6╦Pump6EN       CA4MOVE  %MB107	
PumpEN_No7Pump7ENKMotor_Trip7       CA2MOVE  %MB107	
PumpEN_No7Pump7ENKStart_Command_Pump7       CA3MOVE  %MB107	
PumpEN_No7Pump7ENЛMotor_Trip7╦Start_Command_Pump7       CA0MOVE  %MB107	Л
PumpEN_No7╦Pump7EN       CA4MOVE  %MB108	
PumpEN_No8Pump8ENKMotor_Trip8       CA2MOVE  %MB108	
PumpEN_No8Pump8ENKStart_Command_Pump8       CA3MOVE  %MB108	
PumpEN_No8Pump8ENЛMotor_Trip8╦Start_Command_Pump8       CA0MOVE  %MB108	Л
PumpEN_No8╦Pump8EN       CA2MOVE  %MB109	Auto_Manual_SWKTaget_Pressure       CA1MOVE  %MB109	ЛTaget_PressureKAuto_Manual_SW           Pump3EN Pump2EN Pump1EN         d                  ,    ════════           HMI_PRG a╜Вe	a╜Вe      ════════        j  PROGRAM HMI_PRG 
(******************************************************************************************************************
	!!! ATTENTION: This is system generated POU. Do not modify. Modification may result in malfunctioning.!!!
*******************************************************************************************************************
	Created By : HMI Configuration
	Created On : 15.09.2023 09:55:01 AM
	Last Modified By : HMI Configuration
	Modified On : 28.11.2023 12:01:44 PM
*******************************************************************************************************************)
VAR CONSTANT
	BlankStr : STRING; 
	EntryAct: BYTE := 0; 
	RunAct: BYTE := 1; 
	ExitAct: BYTE := 2; 
	DT_INT: BYTE:=1; 
	DT_BYTE: BYTE:=2; 
	DT_WORD: BYTE:=3; 
	DT_DINT: BYTE:=4; 
	DT_DWORD: BYTE:=5; 
	DT_BOOL: BYTE:=6; 
	DT_REAL: BYTE:=7; 
	DT_STRING:BYTE:=8;
END_VAR
VAR
	DataLogEntries: ARRAY [1..0] OF _DataLogEntry;
	(*SET,1,2,1,5,5,1,0,LOG_,0,0,1,0,1,32000*)
	OUTLow, OutHigh:BOOL;
	CLOCKLow:TP:=(PT:=T#500ms);
	CLOCKHigh:TP:=(PT:=T#200ms);
	ImageRegistered:BOOL:=TRUE;
END_VAR┬ HMI_Begin(); 
	IF ImageRegistered THEN

		ImageRegistered := FALSE;

	END_IF


CASE _SYSVARHMI.PRESENTSCREENNUM OF
0:  (*  ScreenName: _S0 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=56, YPos:=7, Text:= 'MENU', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=0, YPos:=3, Text:= 'Kirlokar Brothers LTD', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=3 ,LocalScreen:=0 ,ScreenNum:=29 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey3, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:29 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=0 ,ScreenNum:=1 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:1 , PasswordLevel:0, KeyLegend:''*)
		PrintRTCTime(XPos:=98,YPos:=0, Format:=1, FontType:=4,  Modify:=FALSE);     (* Variable Name:TimeOfDay1, Locked: False, Control Type: Time of Day, CursorIndex:-1,FontCtrl:None*)
		PrintRTCDate(XPos:=0, YPos:=0, Format:=0, FontType:=4, Modify:=FALSE);      (* Variable Name:Date1, Locked: False, Control Type: Date, CursorIndex:-1,FontCtrl:None*)
			;
	ExitAct :
			;
	END_CASE
1:  (*  ScreenName: _S1 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=2, YPos:=5, Text:= 'STAGE IN TIME', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=2, YPos:=3, Text:= 'STAGE IN FRQ', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=34, YPos:=1, Text:= 'SETTINGS', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=1 ,ScreenNum:=0 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:0 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=1 ,ScreenNum:=2 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:2 , PasswordLevel:0, KeyLegend:''*)
		PrintVarValue(XPos:=93, YPos:=3, Addr:=ADR(_S9), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric1, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
		PrintTime_Sec(XPos:=93, YPos:=5, Addr:=ADR(SSSS), DigitsNum:=4, DPPos:=0, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:=T#9999000ms, MinLimit:=T#0ms);     (* Variable Name:Time1, Locked: False, Control Type: Time, CursorIndex:-1,Resolution:1 sec,Font:4,FontCtrl:None*)
			;
	ExitAct :
			;
	END_CASE
2:  (*  ScreenName: _S2 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=34, YPos:=1, Text:= 'SETTINGS', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=3, Text:= 'DESTAGE IN FRQ', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=5, Text:= 'DESTAGE IN TIME', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=2 ,ScreenNum:=1 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:1 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=2 ,ScreenNum:=3 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:3 , PasswordLevel:0, KeyLegend:''*)
		PrintVarValue(XPos:=99, YPos:=3, Addr:=ADR(_SYSVARINTERRUPT.EVENT_ALOG[0]), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric1, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
		PrintTime_Sec(XPos:=99, YPos:=5, Addr:=ADR(SSSS), DigitsNum:=4, DPPos:=0, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:=T#9999000ms, MinLimit:=T#0ms);     (* Variable Name:Time1, Locked: False, Control Type: Time, CursorIndex:-1,Resolution:1 sec,Font:4,FontCtrl:None*)
			;
	ExitAct :
			;
	END_CASE
3:  (*  ScreenName: _S3 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=4, YPos:=6, Text:= 'SLEEP DELAY', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=4, Text:= 'SLEEP FRQ', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=40, YPos:=1, Text:= 'SETTINGS', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=3 ,ScreenNum:=2 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:2 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=3 ,ScreenNum:=4 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:4 , PasswordLevel:0, KeyLegend:''*)
		PrintVarValue(XPos:=99, YPos:=4, Addr:=ADR(_SYSVARINTERRUPT.EVENT_ALOG[10]), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric1, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
		PrintVarValue(XPos:=99, YPos:=6, Addr:=ADR(_SYSVARINTERRUPT.EVENT_ALOG[11]), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric2, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
			;
	ExitAct :
			;
	END_CASE
4:  (*  ScreenName: _S4 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=4, YPos:=6, Text:= 'SET PRESSURE', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=4, Text:= 'CHANGE INTERVAL', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=34, YPos:=1, Text:= 'SETTINGS', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=4 ,ScreenNum:=3 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:3 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=4 ,ScreenNum:=5 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:5 , PasswordLevel:0, KeyLegend:''*)
		PrintVarValue(XPos:=102, YPos:=4, Addr:=ADR(_SYSVARINTERRUPT.EVENT_ALOG[12]), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric1, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
(*Error:		PrintVarValue(XPos:=102, YPos:=6, Addr:=ADR(), DataType:= DT_WORD, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='65535', MinLimit:='0');Error:*)     (* Variable Name: Numeric2, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
			;
	ExitAct :
			;
	END_CASE
5:  (*  ScreenName: _S5 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=4, YPos:=6, Text:= 'MAX RANGE (BAR)', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=4, Text:= 'CUT IN PRESSURE', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=34, YPos:=1, Text:= 'SETTINGS', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=5 ,ScreenNum:=4 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:4 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=5 ,ScreenNum:=6 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:6 , PasswordLevel:0, KeyLegend:''*)
		PrintVarValue(XPos:=99, YPos:=4, Addr:=ADR(_SYSVARINTERRUPT.EVENT_ALOG[14]), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric1, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
		PrintVarValue(XPos:=99, YPos:=6, Addr:=ADR(_SYSVARINTERRUPT.EVENT_ALOG[15]), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric2, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
			;
	ExitAct :
			;
	END_CASE
6:  (*  ScreenName: _S6 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=102, YPos:=7, Text:= 'MAIN', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=74, YPos:=5, Text:= 'PUMP-5', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=74, YPos:=3, Text:= 'PUMP-4', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=2, YPos:=7, Text:= 'PUMP-3', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=2, YPos:=5, Text:= 'PUMP-2', FontType:=4);      (* Variable Name:StaticText5, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=2, YPos:=3, Text:= 'PUMP-1', FontType:=4);      (* Variable Name:StaticText6, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=9, YPos:=1, Text:= 'REMOTE / LOCAL MODE', FontType:=4);      (* Variable Name:StaticText7, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=6 ,ScreenNum:=29 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:29 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=52, YPos:=3, Addr:=ADR(Auto_Manual_Pump1), BitPos:=0, TrueText:='A', FalseText:='M', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Auto_Manual_Pump1),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=52, YPos:=5, Addr:=ADR(Auto_Manual_Pump2), BitPos:=0, TrueText:='A', FalseText:='M', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Auto_Manual_Pump2),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=52, YPos:=7, Addr:=ADR(Auto_Manual_Pump3), BitPos:=0, TrueText:='A', FalseText:='M', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit3, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Auto_Manual_Pump3),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=120, YPos:=3, Addr:=ADR(Auto_Manual_Pump4), BitPos:=0, TrueText:='A', FalseText:='M', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit4, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Auto_Manual_Pump4),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=120, YPos:=5, Addr:=ADR(Auto_Manual_Pump5), BitPos:=0, TrueText:='A', FalseText:='M', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit5, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Auto_Manual_Pump5),Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
7:  (*  ScreenName: _S7 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=3, YPos:=5, Text:= 'PUMP-8 TRIP', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=3, Text:= 'PUMP-7 TRIP', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=45, YPos:=1, Text:= 'ALARMS', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=7 ,ScreenNum:=5 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:5 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=7 ,ScreenNum:=8 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:8 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=111, YPos:=3, Addr:=ADR(HMI_Motor_Trip7), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(HMI_Motor_Trip7),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=111, YPos:=5, Addr:=ADR(HMI_Motor_Trip8), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(HMI_Motor_Trip8),Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
8:  (*  ScreenName: _S8 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=17, YPos:=1, Text:= 'CASCADE SETTING', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=8 ,ScreenNum:=7 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:7 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=8 ,ScreenNum:=9 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:9 , PasswordLevel:0, KeyLegend:''*)
			;
	ExitAct :
			;
	END_CASE
9:  (*  ScreenName: _S9 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=102, YPos:=7, Text:= 'MAIN', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=7, Text:= 'PUMP-5 A/M', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=6, Text:= 'PUMP-4 A/M', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=5, Text:= 'PUMP-3 A/M', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=4, Text:= 'PUMP-2 A/M', FontType:=4);      (* Variable Name:StaticText5, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=3, Text:= 'PUMP-1 A/M', FontType:=4);      (* Variable Name:StaticText6, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=2, Text:= 'VFD RUN FB', FontType:=4);      (* Variable Name:StaticText7, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=0, Text:= 'DIGITAL INPUT', FontType:=4);      (* Variable Name:StaticText8, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=9 ,ScreenNum:=7 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:7 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=9 ,ScreenNum:=29 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:29 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=68, YPos:=2, Addr:=ADR(%IB0), BitPos:=0, TrueText:='ON', FalseText:='OFF', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.0,Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=68, YPos:=3, Addr:=ADR(%IB0), BitPos:=1, TrueText:='A', FalseText:='M', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.1,Font:4,FontCtrl:None, BitPos: 1*)
		PrintVarBool(XPos:=68, YPos:=4, Addr:=ADR(%IB0), BitPos:=2, TrueText:='A', FalseText:='M', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit3, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.2,Font:4,FontCtrl:None, BitPos: 2*)
		PrintVarBool(XPos:=68, YPos:=5, Addr:=ADR(%IB0), BitPos:=3, TrueText:='A', FalseText:='M', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit4, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.3,Font:4,FontCtrl:None, BitPos: 3*)
		PrintVarBool(XPos:=68, YPos:=6, Addr:=ADR(%IB0), BitPos:=4, TrueText:='A', FalseText:='M', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit5, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.4,Font:4,FontCtrl:None, BitPos: 4*)
		PrintVarBool(XPos:=68, YPos:=7, Addr:=ADR(%IB0), BitPos:=5, TrueText:='A', FalseText:='M', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit6, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.5,Font:4,FontCtrl:None, BitPos: 5*)
			;
	ExitAct :
			;
	END_CASE
10:  (*  ScreenName: _S10 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=28, YPos:=0, Text:= 'DIAGNOSTIC', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=2, Text:= 'DIGITAL INPUT', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=4, Text:= 'PUMP-2 AUTO/MANUAL', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=6, Text:= 'PUMP-3 AUTO/MANUAL', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=10 ,ScreenNum:=9 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:9 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=10 ,ScreenNum:=11 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:11 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=120, YPos:=6, Addr:=ADR(%IB0), BitPos:=3, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.3,Font:4,FontCtrl:None, BitPos: 3*)
		PrintVarBool(XPos:=120, YPos:=4, Addr:=ADR(%IB0), BitPos:=2, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.2,Font:4,FontCtrl:None, BitPos: 2*)
			;
	ExitAct :
			;
	END_CASE
11:  (*  ScreenName: _S11 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=4, YPos:=6, Text:= 'PUMP-5 AUTO/MANUAL', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=4, Text:= 'PUMP-4 AUTO/MANUAL', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=2, Text:= 'DIGITAL INPUT', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=0, Text:= 'DIAGNOSTIC', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=11 ,ScreenNum:=10 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:10 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=11 ,ScreenNum:=12 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:12 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=120, YPos:=4, Addr:=ADR(%IB0), BitPos:=4, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.4,Font:4,FontCtrl:None, BitPos: 4*)
		PrintVarBool(XPos:=120, YPos:=6, Addr:=ADR(%IB0), BitPos:=5, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.5,Font:4,FontCtrl:None, BitPos: 5*)
			;
	ExitAct :
			;
	END_CASE
12:  (*  ScreenName: _S12 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=28, YPos:=0, Text:= 'DIAGNOSTIC', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=2, Text:= 'DIGITAL OUTPUT', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=4, Text:= 'VFD START CMD', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=6, Text:= 'PUMP-1 START CMD', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=12 ,ScreenNum:=11 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:11 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=12 ,ScreenNum:=13 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:13 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=120, YPos:=6, Addr:=ADR(Start_Command_Pump1), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Start_Command_Pump1),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=120, YPos:=4, Addr:=ADR(%QB0), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%QX0.0,Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
13:  (*  ScreenName: _S13 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=4, YPos:=6, Text:= 'PUMP-3 START CMD', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=4, Text:= 'PUMP-2 START CMD', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=2, Text:= 'DIGITAL OUTPUT', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=0, Text:= 'DIAGNOSTIC', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=13 ,ScreenNum:=12 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:12 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=13 ,ScreenNum:=14 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:14 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=120, YPos:=4, Addr:=ADR(Start_Command_Pump2), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Start_Command_Pump2),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=120, YPos:=6, Addr:=ADR(Start_Command_Pump3), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Start_Command_Pump3),Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
14:  (*  ScreenName: _S14 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=28, YPos:=0, Text:= 'DIAGNOSTIC', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=2, Text:= 'DIGITAL OUTPUT', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=4, Text:= 'PUMP-4 START CMD', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=6, Text:= 'PUMP-5 START CMD', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=14 ,ScreenNum:=13 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:13 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=14 ,ScreenNum:=15 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:15 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=120, YPos:=6, Addr:=ADR(Start_Command_Pump5), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Start_Command_Pump5),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=120, YPos:=4, Addr:=ADR(Start_Command_Pump4), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Start_Command_Pump4),Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
15:  (*  ScreenName: _S15 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=1, YPos:=7, Text:= 'VFD SPEED (RPM)', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=5, Text:= 'ANALOG OUTPUT', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=6, YPos:=3, Text:= 'PT (BAR)', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=1, Text:= 'ANALOG INPUT', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=15 ,ScreenNum:=14 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:14 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=15 ,ScreenNum:=16 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:16 , PasswordLevel:0, KeyLegend:''*)
		PrintVarValue(XPos:=94, YPos:=3, Addr:=ADR(_SYSVARINTERRUPT.EVENT_ALOG[15]), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric1, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
		PrintVarValue(XPos:=94, YPos:=7, Addr:=ADR(_SYSVARINTERRUPT.EVENT_ALOG[16]), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric2, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
			;
	ExitAct :
			;
	END_CASE
16:  (*  ScreenName: _S16 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=2, YPos:=7, Text:= 'CUT IN PR.', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=2, YPos:=5, Text:= 'ACTUAL PR.', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=2, YPos:=3, Text:= 'SET PR.', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=9, YPos:=1, Text:= 'PRESSURE PARAMETERS', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=16 ,ScreenNum:=15 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:15 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=16 ,ScreenNum:=17 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:17 , PasswordLevel:0, KeyLegend:''*)
		PrintVarValue(XPos:=86, YPos:=3, Addr:=ADR(_SYSVARINTERRUPT.EVENT_ALOG[17]), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric1, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
		PrintVarValue(XPos:=86, YPos:=5, Addr:=ADR(_SYSVARINTERRUPT.EVENT_ALOG[18]), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric2, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
		PrintVarValue(XPos:=86, YPos:=7, Addr:=ADR(_SYSVARINTERRUPT.EVENT_ALOG[18]), DataType:= DT_BYTE, DigitsNum:=3, DPPos:=1, FontType:=4, LeadingZeros:=FALSE, Modify:=FALSE, MaxLimit:='255', MinLimit:='0');     (* Variable Name: Numeric3, Locked: False, Control Type: Num, CursorIndex:-1,Font:4,FontCtrl:None*)
			;
	ExitAct :
			;
	END_CASE
17:  (*  ScreenName: _S17 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=104, YPos:=7, Text:= 'MAIN', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=6, Text:= 'PUMP-5 ON/OFF', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=5, Text:= 'PUMP-4 ON/OFF', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=4, Text:= 'PUMP-3 ON/OFF', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=3, Text:= 'PUMP-2 ON/OFF', FontType:=4);      (* Variable Name:StaticText5, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=2, Text:= 'PUMP-1 ON/OFF', FontType:=4);      (* Variable Name:StaticText6, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=34, YPos:=0, Text:= 'PUMP STATUS', FontType:=4);      (* Variable Name:StaticText7, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=17 ,ScreenNum:=16 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:16 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=17 ,ScreenNum:=30 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:30 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=94, YPos:=2, Addr:=ADR(%QB0), BitPos:=1, TrueText:='ON', FalseText:='OFF', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%QX0.1,Font:4,FontCtrl:None, BitPos: 1*)
		PrintVarBool(XPos:=94, YPos:=3, Addr:=ADR(%QB0), BitPos:=2, TrueText:='ON', FalseText:='OFF', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%QX0.2,Font:4,FontCtrl:None, BitPos: 2*)
		PrintVarBool(XPos:=94, YPos:=4, Addr:=ADR(%QB0), BitPos:=3, TrueText:='ON', FalseText:='OFF', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit3, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%QX0.3,Font:4,FontCtrl:None, BitPos: 3*)
		PrintVarBool(XPos:=94, YPos:=5, Addr:=ADR(%QB0), BitPos:=4, TrueText:='ON', FalseText:='OFF', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit4, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%QX0.4,Font:4,FontCtrl:None, BitPos: 4*)
		PrintVarBool(XPos:=94, YPos:=6, Addr:=ADR(%QB0), BitPos:=5, TrueText:='ON', FalseText:='OFF', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit5, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%QX0.5,Font:4,FontCtrl:None, BitPos: 5*)
			;
	ExitAct :
			;
	END_CASE
18:  (*  ScreenName: _S18 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=28, YPos:=1, Text:= 'PUMP STATUS', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=3, Text:= 'PUMP-4 ON/OFF', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=5, Text:= 'PUMP-5 ON/OFF', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=18 ,ScreenNum:=17 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:17 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=18 ,ScreenNum:=19 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:19 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=111, YPos:=5, Addr:=ADR(%QB0), BitPos:=5, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%QX0.5,Font:4,FontCtrl:None, BitPos: 5*)
		PrintVarBool(XPos:=111, YPos:=3, Addr:=ADR(%QB0), BitPos:=4, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%QX0.4,Font:4,FontCtrl:None, BitPos: 4*)
			;
	ExitAct :
			;
	END_CASE
19:  (*  ScreenName: _S19 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=102, YPos:=7, Text:= 'MAIN', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=5, Text:= 'P-3 TRIP', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=69, YPos:=1, Text:= 'P-4 TRIP', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=3, Text:= 'P-2 TRIP', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=1, Text:= 'P-1 TRIP', FontType:=4);      (* Variable Name:StaticText5, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=47, YPos:=0, Text:= 'ALARMS', FontType:=4);      (* Variable Name:StaticText6, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=69, YPos:=3, Text:= 'P-5 TRIP', FontType:=4);      (* Variable Name:StaticText7, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=69, YPos:=5, Text:= 'P-6 TRIP', FontType:=4);      (* Variable Name:StaticText8, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=19 ,ScreenNum:=18 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:18 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=19 ,ScreenNum:=29 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:29 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=53, YPos:=1, Addr:=ADR(HMI_Motor_Trip1), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(HMI_Motor_Trip1),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=53, YPos:=3, Addr:=ADR(HMI_Motor_Trip2), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(HMI_Motor_Trip2),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=119, YPos:=3, Addr:=ADR(HMI_Motor_Trip5), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit3, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(HMI_Motor_Trip5),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=119, YPos:=1, Addr:=ADR(HMI_Motor_Trip4), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit4, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(HMI_Motor_Trip4),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=53, YPos:=5, Addr:=ADR(HMI_Motor_Trip3), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit5, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(HMI_Motor_Trip3),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=119, YPos:=5, Addr:=ADR(HMI_Motor_Trip6), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit6, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(HMI_Motor_Trip6),Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
20:  (*  ScreenName: _S20 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=3, YPos:=7, Text:= 'PUMP-6 TRIP', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=45, YPos:=1, Text:= 'ALARMS', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=3, Text:= 'PUMP-4 TRIP', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=5, Text:= 'PUMP-5 TRIP', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=20 ,ScreenNum:=19 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:19 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=20 ,ScreenNum:=21 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:21 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=111, YPos:=5, Addr:=ADR(HMI_Motor_Trip5), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(HMI_Motor_Trip5),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=111, YPos:=3, Addr:=ADR(HMI_Motor_Trip4), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(HMI_Motor_Trip4),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=111, YPos:=7, Addr:=ADR(HMI_Motor_Trip6), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit3, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(HMI_Motor_Trip6),Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
21:  (*  ScreenName: _S21 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=3, YPos:=4, Text:= 'PRESSURE HIGH', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=2, Text:= 'VFD UNHEALTHY', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=53, YPos:=0, Text:= 'ALARMS', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=3, YPos:=6, Text:= 'EMG. STOP PRESSED', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=21 ,ScreenNum:=20 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:20 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=21 ,ScreenNum:=19 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:19 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=111, YPos:=6, Addr:=ADR(ALARM), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(ALARM),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=111, YPos:=2, Addr:=ADR(ALARM), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(ALARM),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=111, YPos:=4, Addr:=ADR(ALARM), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit3, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(ALARM),Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
22:  (*  ScreenName: _S22 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=9, YPos:=1, Text:= 'REMOTE / LOCAL MODE', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=2, YPos:=3, Text:= 'PUMP-6', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=2, YPos:=5, Text:= 'PUMP-7', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=2, YPos:=7, Text:= 'PUMP-8', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=22 ,ScreenNum:=21 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:21 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=22 ,ScreenNum:=24 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:24 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=52, YPos:=7, Addr:=ADR(Auto_Manual_Pump8), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Auto_Manual_Pump8),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=52, YPos:=5, Addr:=ADR(Auto_Manual_Pump8), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Auto_Manual_Pump8),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=52, YPos:=3, Addr:=ADR(Auto_Manual_Pump6), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit3, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Auto_Manual_Pump6),Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
23:  (*  ScreenName: _S23 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=28, YPos:=0, Text:= 'DIAGNOSTIC', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=2, Text:= 'DIGITAL INPUT', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=4, Text:= 'PUMP-6 AUTO/MANUAL', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=6, Text:= 'PUMP-7 AUTO/MANUAL', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=23 ,ScreenNum:=22 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:22 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=23 ,ScreenNum:=24 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:24 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=120, YPos:=6, Addr:=ADR(%IB0), BitPos:=7, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.7,Font:4,FontCtrl:None, BitPos: 7*)
		PrintVarBool(XPos:=120, YPos:=4, Addr:=ADR(%IB0), BitPos:=6, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX0.6,Font:4,FontCtrl:None, BitPos: 6*)
			;
	ExitAct :
			;
	END_CASE
24:  (*  ScreenName: _S24 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=4, YPos:=4, Text:= 'PUMP-8 AUTO/MANUAL', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=2, Text:= 'DIGITAL INPUT', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=0, Text:= 'DIAGNOSTIC', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=24 ,ScreenNum:=23 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:23 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=24 ,ScreenNum:=25 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:25 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=120, YPos:=4, Addr:=ADR(%IB1), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, MemoryAddress:%IX1.0,Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
25:  (*  ScreenName: _S25 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=4, YPos:=6, Text:= 'PUMP-7 START CMD', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=4, YPos:=4, Text:= 'PUMP-6 START CMD', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=2, Text:= 'DIGITAL OUTPUT', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=0, Text:= 'DIAGNOSTIC', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=25 ,ScreenNum:=24 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:24 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=25 ,ScreenNum:=26 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:26 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=120, YPos:=4, Addr:=ADR(Start_Command_Pump6), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Start_Command_Pump6),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=120, YPos:=6, Addr:=ADR(Start_Command_Pump7), BitPos:=0, TrueText:='T', FalseText:='F', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Start_Command_Pump7),Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
26:  (*  ScreenName: _S26 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=104, YPos:=7, Text:= 'NEXT', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=0, Text:= 'PUMP ENABLE', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=14, YPos:=3, Text:= 'PUMP-NO', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=26 ,ScreenNum:=27 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:27 , PasswordLevel:0, KeyLegend:''*)
		PrintVarValue(XPos:=78, YPos:=2, Addr:=ADR(MHMI_Pump_EN), DataType:= DT_WORD, DigitsNum:=1, DPPos:=0, FontType:=0, LeadingZeros:=FALSE, Modify:=TRUE, MaxLimit:='65535', MinLimit:='0');     (* Variable Name: Numeric1, Locked: False, Control Type: Num, CursorIndex:0,Font:0,FontCtrl:None*)
			;
	ExitAct :
			;
	END_CASE
27:  (*  ScreenName: _S27 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=102, YPos:=7, Text:= 'NEXT', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=6, YPos:=6, Text:= 'PUMP NO 3', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=6, YPos:=4, Text:= 'PUMP NO 2', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=6, YPos:=2, Text:= 'PUMP NO 1', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=0, Text:= 'PUMP ENABLE', FontType:=4);      (* Variable Name:StaticText5, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyTog(FunKeyNo:=1 ,LocalScreen:=27 ,Addr:=ADR(Pump1EN) ,BitPos:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:2, DataType:1, VariableFK:ADR(Pump1EN), BitPos: 0, KeyLegend:''*)
		FunKeyTog(FunKeyNo:=2 ,LocalScreen:=27 ,Addr:=ADR(Pump2EN) ,BitPos:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey2, Locked: False, Control Type: FunctionKey, Action:2, DataType:1, VariableFK:ADR(Pump2EN), BitPos: 0, KeyLegend:''*)
		FunKeyTog(FunKeyNo:=3 ,LocalScreen:=27 ,Addr:=ADR(Pump3EN) ,BitPos:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey3, Locked: False, Control Type: FunctionKey, Action:2, DataType:1, VariableFK:ADR(Pump3EN), BitPos: 0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=27 ,ScreenNum:=28 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:28 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=72, YPos:=2, Addr:=ADR(Pump1EN), BitPos:=0, TrueText:='ENABLE', FalseText:='DISABLE', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Pump1EN),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=72, YPos:=4, Addr:=ADR(Pump2EN), BitPos:=0, TrueText:='ENABLE', FalseText:='DISABLE', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Pump2EN),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=72, YPos:=6, Addr:=ADR(Pump3EN), BitPos:=0, TrueText:='ENABLE', FalseText:='DISABLE', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit3, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Pump3EN),Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
28:  (*  ScreenName: _S28 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=104, YPos:=7, Text:= 'NEXT', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=28, YPos:=0, Text:= 'PUMP ENABLE', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=6, YPos:=2, Text:= 'PUMP NO 4', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=6, YPos:=4, Text:= 'PUMP NO 5', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=6, YPos:=6, Text:= 'PUMP NO 6', FontType:=4);      (* Variable Name:StaticText5, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyTog(FunKeyNo:=1 ,LocalScreen:=28 ,Addr:=ADR(Pump4EN) ,BitPos:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:2, DataType:1, VariableFK:ADR(Pump4EN), BitPos: 0, KeyLegend:''*)
		FunKeyTog(FunKeyNo:=2 ,LocalScreen:=28 ,Addr:=ADR(Pump5EN) ,BitPos:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey2, Locked: False, Control Type: FunctionKey, Action:2, DataType:1, VariableFK:ADR(Pump5EN), BitPos: 0, KeyLegend:''*)
		FunKeyTog(FunKeyNo:=3 ,LocalScreen:=28 ,Addr:=ADR(Pump6EN) ,BitPos:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey3, Locked: False, Control Type: FunctionKey, Action:2, DataType:1, VariableFK:ADR(Pump6EN), BitPos: 0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=28 ,ScreenNum:=29 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:29 , PasswordLevel:0, KeyLegend:''*)
		PrintVarBool(XPos:=72, YPos:=6, Addr:=ADR(Pump6EN), BitPos:=0, TrueText:='ENABLE', FalseText:='DISABLE', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit1, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Pump6EN),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=72, YPos:=4, Addr:=ADR(Pump5EN), BitPos:=0, TrueText:='ENABLE', FalseText:='DISABLE', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit2, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Pump5EN),Font:4,FontCtrl:None, BitPos: 0*)
		PrintVarBool(XPos:=72, YPos:=2, Addr:=ADR(Pump4EN), BitPos:=0, TrueText:='ENABLE', FalseText:='DISABLE', FontType:=4, Modify:=FALSE);     (* Variable Name:Bit3, Locked: False, Control Type: Bit, CursorIndex:-1,DataType:1, VariableFK:ADR(Pump4EN),Font:4,FontCtrl:None, BitPos: 0*)
			;
	ExitAct :
			;
	END_CASE
29:  (*  ScreenName: _S29 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=104, YPos:=7, Text:= 'NEXT', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=24, YPos:=6, Text:= 'F3', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=24, YPos:=4, Text:= 'F2', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=24, YPos:=2, Text:= 'F1', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=44, YPos:=6, Text:= 'ALARM', FontType:=4);      (* Variable Name:StaticText5, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=44, YPos:=4, Text:= 'A/M MODE', FontType:=4);      (* Variable Name:StaticText6, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=44, YPos:=2, Text:= 'PUMP SELECTION', FontType:=4);      (* Variable Name:StaticText7, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=54, YPos:=0, Text:= 'MAIN', FontType:=4);      (* Variable Name:StaticText8, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=1 ,LocalScreen:=29 ,ScreenNum:=26 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey1, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:26 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=2 ,LocalScreen:=29 ,ScreenNum:=6 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey2, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:6 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=5 ,LocalScreen:=29 ,ScreenNum:=30 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey5, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:30 , PasswordLevel:0, KeyLegend:''*)
			;
	ExitAct :
			;
	END_CASE
30:  (*  ScreenName: _S30 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
		PrintText(XPos:=0, YPos:=7, Text:= 'MANU', FontType:=4);      (* Variable Name:StaticText1, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=54, YPos:=0, Text:= 'MAIN', FontType:=4);      (* Variable Name:StaticText2, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=54, YPos:=2, Text:= 'DIGITAL I/O', FontType:=4);      (* Variable Name:StaticText3, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=54, YPos:=4, Text:= 'PUMP STATUS', FontType:=4);      (* Variable Name:StaticText4, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=54, YPos:=6, Text:= 'SETTING', FontType:=4);      (* Variable Name:StaticText5, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=24, YPos:=2, Text:= 'F2', FontType:=4);      (* Variable Name:StaticText6, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=24, YPos:=4, Text:= 'F3', FontType:=4);      (* Variable Name:StaticText7, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
		PrintText(XPos:=24, YPos:=6, Text:= 'F4', FontType:=4);      (* Variable Name:StaticText8, Locked: False, Control Type: Text, CursorIndex:-1,Font:4,InverseFont: FALSE*)
			;
	RunAct :
		FunKeyGoTo(FunKeyNo:=2 ,LocalScreen:=30 ,ScreenNum:=9 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey2, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:9 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=3 ,LocalScreen:=30 ,ScreenNum:=17 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey3, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:17 , PasswordLevel:0, KeyLegend:''*)
		FunKeyGoTo(FunKeyNo:=4 ,LocalScreen:=30 ,ScreenNum:=4 ,PSWLevel:=0 ,KeyLegend:='');     (* Variable Name:FunctionKey4, Locked: False, Control Type: FunctionKey, Action:3, ScreenNo:4 , PasswordLevel:0, KeyLegend:''*)
			;
	ExitAct :
			;
	END_CASE
ELSE
	System_Menu();
END_CASE

(*Global Key Definitions*)





HMI_Over();

CLOCKLow;
IF CLOCKLow.Q=FALSE THEN
	CLOCKLow(IN:=FALSE);
	OUTLow := NOT OUTLow;
	CLOCKLow(IN:=TRUE);
END_IF

CLOCKHigh;
IF CLOCKHigh.Q=FALSE THEN
	CLOCKHigh(IN:=FALSE);
	OUTHigh := NOT OUTHigh;
	CLOCKHigh(IN:=TRUE);
END_IF               )    ════════        	   HMI_PRG_1 a╜Вe	a╜Вe      ════════        l  PROGRAM HMI_PRG_1 
(******************************************************************************************************************
	!!! ATTENTION: This is system generated POU. Do not modify. Modification may result in malfunctioning.!!!
*******************************************************************************************************************
	Created By : HMI Configuration
	Created On : 02.08.2023 05:04:30 PM
	Last Modified By : HMI Configuration
	Modified On : 27.09.2023 12:22:41 PM
*******************************************************************************************************************)
VAR CONSTANT
	BlankStr : STRING; 
	EntryAct: BYTE := 0; 
	RunAct: BYTE := 1; 
	ExitAct: BYTE := 2; 
	DT_INT: BYTE:=1; 
	DT_BYTE: BYTE:=2; 
	DT_WORD: BYTE:=3; 
	DT_DINT: BYTE:=4; 
	DT_DWORD: BYTE:=5; 
	DT_BOOL: BYTE:=6; 
	DT_REAL: BYTE:=7; 
	DT_STRING:BYTE:=8;
END_VAR
VAR
	DataLogEntries: ARRAY [1..0] OF _DataLogEntry;
	(*SET,1,2,1,5,5,1,0,LOG_,0,0,1,0,1,32000*)
	OUTLow, OutHigh:BOOL;
	CLOCKLow:TP:=(PT:=T#500ms);
	CLOCKHigh:TP:=(PT:=T#200ms);
	ImageRegistered:BOOL:=TRUE;
END_VARУ  HMI_Begin(); 
	IF ImageRegistered THEN

		ImageRegistered := FALSE;

	END_IF


CASE _SYSVARHMI.PRESENTSCREENNUM OF
0:  (*  ScreenName: _S0 , ScreenDescription: , ScreenEntryAction: , ScreenDisplayAction: , ScreenExitAction: *)

	CASE _SYSVARHMI.SCREENSTATE OF
	EntryAct :
			;
	RunAct :
			;
	ExitAct :
			;
	END_CASE
ELSE
	System_Menu();
END_CASE

(*Global Key Definitions*)





HMI_Over();

CLOCKLow;
IF CLOCKLow.Q=FALSE THEN
	CLOCKLow(IN:=FALSE);
	OUTLow := NOT OUTLow;
	CLOCKLow(IN:=TRUE);
END_IF

CLOCKHigh;
IF CLOCKHigh.Q=FALSE THEN
	CLOCKHigh(IN:=FALSE);
	OUTHigh := NOT OUTHigh;
	CLOCKHigh(IN:=TRUE);
END_IF               .    ════════           ImplicitPOSTPLC_PRG a╜Вe	a╜Вe      ════════           
PROGRAM ImplicitPOSTPLC_PRG 
(******************************************************************************************************************
	!!! ATTENTION: This is system generated POU. Do not modify. Modification may result in malfunctioning.!!!
*******************************************************************************************************************
	Created By : HMI Configuration
	Created On : 15.09.2023 09:55:01 AM
	Last Modified By : Hardware Configuration
	Modified On : 15.12.2023 02:02:25 PM
*******************************************************************************************************************)
VAR
(*|StartSection||HardwareConfig||Var|*)


(*!StartSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)
	_2CnfDn : BOOL;
	_2CnfData : ARRAY [0..7] OF WORD := 16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000;
	_2RawData : ARRAY [0..3] OF INT;
	_2RawDataReal : ARRAY [0..3] OF REAL;		
	_2RdStsEdge : R_TRIG;
(*!EndSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)

(*!StartSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)
(*!EndSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)

(*!StartSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
(*!EndSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
(*|EndSection||HardwareConfig||Var|*)
END_VAR
  
(*|StartSection||HardwareConfig|*)
(*!StartSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
;

(*!EndSection!1000!1004!1.0.0.1!B16I16R#000#0!*)

(*!StartSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)
;
(*$1$TRUE$3$Current 0 to 20mA$8$$9$$10$$11$$13$16#0001$*)
(*$1001$TRUE$1003$Current 0 to 20mA$1007$TRUE$1008$0mA$1009$20mA$1013$16#0001$*)
(*$2005$$2008$$2009$$2010$$2011$$2012$$*)
(*$3005$$3008$$3009$$3010$$3011$$3012$$*)
(*$999001$0$999002$05$*)

(*!EndSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)

(*!StartSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)
CASE _IOE2UnitState OF
0,1	: IF _SYSVARCPU.W_REG_STATUS.6 THEN  _IOE2UnitState := 1; END_IF
	  IF _SYSVARCPU.AMODULEORDERINGCODE[6] = 'GC-4DA-12' THEN  _IOE2UnitState := 2; END_IF
2	: _2CnfDn:=IM_Write(6, ADR(_2CnfData[0]), 3000, 16);
	  IF _2CnfDn THEN _IOE2UnitState := 100; END_IF
100	:
	_IOE2CH0Enable :=TRUE;
	_IOE2CH1Enable :=FALSE;
	_IOE2CH2Enable :=FALSE;
	_IOE2CH3Enable :=FALSE;
	_2RawDataReal[0] :=_AO_IOE2_00;
	_2RawData[0] := REAL_TO_INT(LIMIT(_2RawDataReal[0],-32768.0,32767.0));
	IM_Write(6, ADR( _2RawData[0]), 1000, 8);	
END_CASE
IF NOT _SYSVARCPU.W_REG_STATUS.6 THEN _IOE2UnitState := 0; END_IF
(*$1$TRUE$5$$6$$7$$8$$*)
(*$999001$0$999002$06$*)

(*!EndSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)
(*|EndSection||HardwareConfig|*)

(*!StartSection!HMIToolConfiguration!*)
iLEDAction(KeyNo:=1, LEDControlByte:=_SYSVARDATALOG.bLogStatus);
iLEDAction(KeyNo:=2, LEDControlByte:=%MB100);
iLEDAction(KeyNo:=3, LEDControlByte:=%MB101);
iLEDAction(KeyNo:=4, LEDControlByte:=%MB102);
iLEDAction(KeyNo:=5, LEDControlByte:=%MB103);
iLEDAction(KeyNo:=6, LEDControlByte:=%MB104);
iLEDAction(KeyNo:=7, LEDControlByte:=%MB105);
iLEDAction(KeyNo:=8, LEDControlByte:=%MB109);
(*!EndSection!HMIToolConfiguration!*)

;               *    ════════           ImplicitPOSTPLC_PRG_1 a╜Вe	a╜Вe      ════════        i  

PROGRAM ImplicitPOSTPLC_PRG_1
(******************************************************************************************************************
	!!! ATTENTION: This is system generated POU. Do not modify. Modification may result in malfunctioning.!!!
*******************************************************************************************************************
	Created By : Hardware Configuration
	Created On : 02.08.2023 02:46:58 PM
	Last Modified By : HMI Configuration
	Modified On : 27.09.2023 12:22:42 PM
*******************************************************************************************************************)
VAR
(*|StartSection||HardwareConfig||Var|*)


(*!StartSection!2000!2002!1.0.0.1!C422#00010#1!*)
(*!EndSection!2000!2002!1.0.0.1!C422#00010#1!*)

(*!StartSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)
	_2CnfDn : BOOL;
	_2CnfData : ARRAY [0..7] OF WORD := 16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000;
	_2RawData : ARRAY [0..3] OF INT;
	_2RawDataReal : ARRAY [0..3] OF REAL;		
	_2RdStsEdge : R_TRIG;
(*!EndSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)

(*!StartSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)
(*!EndSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)

(*!StartSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
(*!EndSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
(*|EndSection||HardwareConfig||Var|*)
END_VAR
█  (*!StartSection!HMIToolConfiguration!*)
;
(*!EndSection!HMIToolConfiguration!*)

(*|StartSection||HardwareConfig|*)
(*!StartSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
;

(*!EndSection!1000!1004!1.0.0.1!B16I16R#000#0!*)

(*!StartSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)
;
(*$1$TRUE$8$$9$$10$$11$$*)
(*$1005$$1008$$1009$$1010$$1011$$1012$$*)
(*$2005$$2008$$2009$$2010$$2011$$2012$$*)
(*$3005$$3008$$3009$$3010$$3011$$3012$$*)
(*$999001$0$999002$05$*)

(*!EndSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)

(*!StartSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)
CASE _IOE2UnitState OF
0,1	: IF _SYSVARCPU.W_REG_STATUS.6 THEN  _IOE2UnitState := 1; END_IF
	  IF _SYSVARCPU.AMODULEORDERINGCODE[6] = 'GC-4DA-12' THEN  _IOE2UnitState := 2; END_IF
2	: _2CnfDn:=IM_Write(6, ADR(_2CnfData[0]), 3000, 16);
	  IF _2CnfDn THEN _IOE2UnitState := 100; END_IF
100	:
	_IOE2CH0Enable :=TRUE;
	_IOE2CH1Enable :=TRUE;
	_IOE2CH2Enable :=FALSE;
	_IOE2CH3Enable :=FALSE;
	_2RawDataReal[0] :=SCALE(	_AO_IOE2_00, 0, 50, 0, 4000);
	_2RawData[0] := REAL_TO_INT(LIMIT(_2RawDataReal[0],-32768.0,32767.0));
	_2RawDataReal[1] :=SCALE(	_AO_IOE2_01, 0, 50, 0, 4000);
	_2RawData[1] := REAL_TO_INT(LIMIT(_2RawDataReal[1],-32768.0,32767.0));	
	IM_Write(6, ADR( _2RawData[0]), 1000, 8);	
END_CASE
IF NOT _SYSVARCPU.W_REG_STATUS.6 THEN _IOE2UnitState := 0; END_IF
(*$1$TRUE$4$TRUE$6$50$7$0V$8$10V$*)
(*$1001$TRUE$1004$TRUE$1006$50$1007$0V$1008$10V$*)
(*$2005$$2006$$2007$$2008$$*)
(*$3005$$3006$$3007$$3008$$*)
(*$999001$0$999002$06$*)

(*!EndSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)

(*!StartSection!2000!2002!1.0.0.1!C422#00010#1!*)
;
(*$999001$1$999002$01$*)

(*!EndSection!2000!2002!1.0.0.1!C422#00010#1!*)
(*|EndSection||HardwareConfig|*)               -    ════════           ImplicitPREPLC_PRG a╜Вe	a╜Вe      ════════        )  
PROGRAM ImplicitPREPLC_PRG 
(******************************************************************************************************************
	!!! ATTENTION: This is system generated POU. Do not modify. Modification may result in malfunctioning.!!!
*******************************************************************************************************************
	Created By : HMI Configuration
	Created On : 15.09.2023 09:55:01 AM
	Last Modified By : Hardware Configuration
	Modified On : 15.12.2023 02:02:25 PM
*******************************************************************************************************************)
VAR
(*|StartSection||HardwareConfig||Var|*)


(*!StartSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)


(*!EndSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)

(*!StartSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)
	_1CnfDn	: BOOL;
	_1CnfData : ARRAY [0..7] OF WORD := 16#0001,16#0000,16#0001,16#0000,16#0000,16#0000,16#0000,16#0000;
	_1RawData : ARRAY [0..3] OF INT;
	_1FilData : ARRAY [0..3] OF REAL;
	_1RdStsEdge : R_TRIG;
	_1FTRC0 : FT_FODF;	
	_1FTRC1 : FT_FODF;	
(*!EndSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)

(*!StartSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
(*!EndSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
(*|EndSection||HardwareConfig||Var|*)
END_VAR
Л  
(*|StartSection||HardwareConfig|*)
(*!StartSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
Events_Clear(_ClearInterruptQueue);
Events_Hold(_HoldAllInterrupts);
Events_Release(NOT _HoldAllInterrupts);
(*!EndSection!1000!1004!1.0.0.1!B16I16R#000#0!*)

(*!StartSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)
CASE _IOE1UnitState OF
0,1	: IF _SYSVARCPU.W_REG_STATUS.5 THEN  _IOE1UnitState := 1; END_IF
	  IF _SYSVARCPU.AMODULEORDERINGCODE[5] = 'GC-4UAD-10' THEN  _IOE1UnitState := 2; END_IF
2	: _1CnfDn:=IM_Write(5, ADR(_1CnfData[0]), 3000, 16);
	  IF _1CnfDn THEN _IOE1UnitState := 100; END_IF
100	:
	_IOE1CH0Enable :=TRUE;
	_IOE1CH1Enable :=TRUE;
	_IOE1CH2Enable :=FALSE;
	_IOE1CH3Enable :=FALSE;
	IM_Read(5, 1000,ADR( _1RawData[0]), 8);
	_1FTRC0(INP:=_1RawData[0] , T:=T#50ms , OUT=>_1FilData[0] );
	_AI_IOE1_00 := _1FilData[0];
	_1FTRC1(INP:=_1RawData[1] , T:=T#50ms , OUT=>_1FilData[1] );
	_AI_IOE1_01 :=SCALE(	_1FilData[1], 	0, 	1000, 	0, 	100);
END_CASE
IF NOT _SYSVARCPU.W_REG_STATUS.5 THEN _IOE1UnitState := 0; END_IF
(*!EndSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)

(*!StartSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)
;
(*!EndSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)
(*|EndSection||HardwareConfig|*)

(*!StartSection!HMIToolConfiguration!*) 
AttachSystemPOU (POUIdentifier:= 1,POUIndex:= INDEXOF(HMI_PRG));
iKeyAction(KeyNo:=1, ActVal:=1, Addr:=ADR(Reset), BitPos:=0, ScreenNum:=0, PasswordLevel:=0);    (* Variable Name:iKey1, Locked: False, Control Type: iKey, Action:1, DataType:1, VariableFK:ADR(Reset), BitPos: 0, ScreenName:=0, PasswordLevel:=0, LEDControl:._SYSVARDATALOG.bLogStatus*)
iKeyAction(KeyNo:=2, ActVal:=1, Addr:=ADR(%IB0), BitPos:=0, ScreenNum:=0, PasswordLevel:=0);    (* Variable Name:iKey2, Locked: False, Control Type: iKey, Action:1, DataType:1, MemoryAddress:%IX0.0, BitPos: 0, ScreenName:=0, PasswordLevel:=0, LEDControl:%MB100*)
(*Error:iKeyAction(KeyNo:=3, ActVal:=1, Addr:=ADR(), BitPos:=0, ScreenNum:=0, PasswordLevel:=0);    (* Variable Name:iKey3, Locked: False, Control Type: iKey, Action:1, DataType:1, BitPos: 0, ScreenName:=0, PasswordLevel:=0, LEDControl:%MB101*)Error:*);
(*Error:iKeyAction(KeyNo:=4, ActVal:=1, Addr:=ADR(), BitPos:=0, ScreenNum:=0, PasswordLevel:=0);    (* Variable Name:iKey4, Locked: False, Control Type: iKey, Action:1, DataType:1, BitPos: 0, ScreenName:=0, PasswordLevel:=0, LEDControl:%MB102*)Error:*);
(*Error:iKeyAction(KeyNo:=5, ActVal:=1, Addr:=ADR(), BitPos:=0, ScreenNum:=0, PasswordLevel:=0);    (* Variable Name:iKey5, Locked: False, Control Type: iKey, Action:1, DataType:1, BitPos: 0, ScreenName:=0, PasswordLevel:=0, LEDControl:%MB103*)Error:*);
(*Error:iKeyAction(KeyNo:=6, ActVal:=1, Addr:=ADR(), BitPos:=0, ScreenNum:=0, PasswordLevel:=0);    (* Variable Name:iKey6, Locked: False, Control Type: iKey, Action:1, DataType:1, BitPos: 0, ScreenName:=0, PasswordLevel:=0, LEDControl:%MB104*)Error:*);
(*Error:iKeyAction(KeyNo:=7, ActVal:=1, Addr:=ADR(), BitPos:=0, ScreenNum:=0, PasswordLevel:=0);    (* Variable Name:iKey7, Locked: False, Control Type: iKey, Action:1, DataType:1, BitPos: 0, ScreenName:=0, PasswordLevel:=0, LEDControl:%MB105*)Error:*);
(*Error:iKeyAction(KeyNo:=8, ActVal:=1, Addr:=ADR(), BitPos:=0, ScreenNum:=0, PasswordLevel:=0);    (* Variable Name:iKey8, Locked: False, Control Type: iKey, Action:1, DataType:1, BitPos: 0, ScreenName:=0, PasswordLevel:=0, LEDControl:%MB109*)Error:*);
(*!EndSection!HMIToolConfiguration!*)

;               0    ════════           ImplicitPREPLC_PRG_1 a╜Вe	a╜Вe      ════════        |  

PROGRAM ImplicitPREPLC_PRG_1
(******************************************************************************************************************
	!!! ATTENTION: This is system generated POU. Do not modify. Modification may result in malfunctioning.!!!
*******************************************************************************************************************
	Created By : Hardware Configuration
	Created On : 02.08.2023 02:46:58 PM
	Last Modified By : HMI Configuration
	Modified On : 27.09.2023 12:22:42 PM
*******************************************************************************************************************)
VAR
(*|StartSection||HardwareConfig||Var|*)


(*!StartSection!2000!2002!1.0.0.1!C422#00010#1!*)
(*!EndSection!2000!2002!1.0.0.1!C422#00010#1!*)

(*!StartSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)


(*!EndSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)

(*!StartSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)
	_1CnfDn	: BOOL;
	_1CnfData : ARRAY [0..7] OF WORD := 16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000,16#0000;
	_1RawData : ARRAY [0..3] OF INT;
	_1FilData : ARRAY [0..3] OF REAL;
	_1RdStsEdge : R_TRIG;
	_1FTRC0 : FT_FODF;	
(*!EndSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)

(*!StartSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
(*!EndSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
(*|EndSection||HardwareConfig||Var|*)
END_VAR
V  (*!StartSection!HMIToolConfiguration!*) 
AttachSystemPOU (POUIdentifier:= 1,POUIndex:= INDEXOF(HMI_PRG));

(*!EndSection!HMIToolConfiguration!*)

(*|StartSection||HardwareConfig|*)
(*!StartSection!1000!1004!1.0.0.1!B16I16R#000#0!*)
Events_Clear(_ClearInterruptQueue);
Events_Hold(_HoldAllInterrupts);
Events_Release(NOT _HoldAllInterrupts);
(*!EndSection!1000!1004!1.0.0.1!B16I16R#000#0!*)

(*!StartSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)
CASE _IOE1UnitState OF
0,1	: IF _SYSVARCPU.W_REG_STATUS.5 THEN  _IOE1UnitState := 1; END_IF
	  IF _SYSVARCPU.AMODULEORDERINGCODE[5] = 'GC-4UAD-10' THEN  _IOE1UnitState := 2; END_IF
2	: _1CnfDn:=IM_Write(5, ADR(_1CnfData[0]), 3000, 16);
	  IF _1CnfDn THEN _IOE1UnitState := 100; END_IF
100	:
	_IOE1CH0Enable :=TRUE;
	_IOE1CH1Enable :=FALSE;
	_IOE1CH2Enable :=FALSE;
	_IOE1CH3Enable :=FALSE;
	IM_Read(5, 1000,ADR( _1RawData[0]), 8);
	_1FTRC0(INP:=_1RawData[0] , T:=T#50ms , OUT=>_1FilData[0] );
	_AI_IOE1_00 := _1FilData[0];
END_CASE
IF NOT _SYSVARCPU.W_REG_STATUS.5 THEN _IOE1UnitState := 0; END_IF
(*!EndSection!3000!3006!1.0.0.1!P4UAI1#00000#1!*)

(*!StartSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)
;
(*!EndSection!3000!3004!1.0.0.1!P4AOVI#00001#1!*)

(*!StartSection!2000!2002!1.0.0.1!C422#00010#1!*)
;
(*!EndSection!2000!2002!1.0.0.1!C422#00010#1!*)
(*|EndSection||HardwareConfig|*)               3  , N N [╠           Input_Mapping a╜Вe	a╜Вe      ════════        #   PROGRAM Input_Mapping
VAR
END_VAR    Analog Input

  
Auto_Manual_SW╦Auto_Manual_SW  Auto_Manual_SW      
VFD_RUN_FEEDBACK╦VFD_RUN_FEEDBACK  VFD_RUN      
Remote_Start_FB╦Remote_Start_FB  Remote_Start   Analog Input

  
Auto_Manual_Pump1_FB╦Auto_Manual_Pump1_FB  Auto_Manual_Pump1   Analog Input

  
Auto_Manual_Pump2_FB╦Auto_Manual_Pump2_FB  Auto_Manual_Pump2   Analog Input

  
Auto_Manual_Pump3_FB╦Auto_Manual_Pump3_FB  Auto_Manual_Pump3   Analog Input

  
Auto_Manual_Pump4_FB╦Auto_Manual_Pump4_FB  Auto_Manual_Pump4   Analog Input

  Auto_Manual_Pump5_FB  Auto_Manual_Pump5   Analog Input

  Auto_Manual_Pump6_FB  Auto_Manual_Pump6   Analog Input

  Auto_Manual_Pump7_FB  Auto_Manual_Pump7   Analog Input

  Auto_Manual_Pump8_FB  Auto_Manual_Pump8      	
Alarm_InputKVFD_TripKReset  VFD_Trip      	
Alarm_InputKMotor_Trip1KReset  Motor_Trip1      	
Alarm_InputKMotor_Trip2KReset  Motor_Trip2      	
Alarm_InputKMotor_Trip3KReset  Motor_Trip3      	
Alarm_InputKMotor_Trip4KReset  Motor_Trip4      	
Alarm_InputKMotor_Trip5KReset  Motor_Trip5      	
Alarm_InputKMotor_Trip6KReset  Motor_Trip6      	
Alarm_InputKMotor_Trip7KReset  Motor_Trip7      	
Alarm_InputKMotor_Trip8KReset  Motor_Trip8      	
Alarm_InputKEmersency_StopKReset  Emersency_Stopd                  4  , N N [╠           Interlocking -oЕe	мKЕe      ════════        K  PROGRAM Interlocking
VAR
	Bypass: BOOL;
	STD: INT;
	SGs: BOOL;
	Pump_On_Plus: R_TRIG;
	Pump1_On_Delay_Reset: TON;
	Pump2_On_Delay: TON;
	Pump2_On_Delay_Reset: TON;
	Dealy_Time_STart: BOOL;
	Relay_Start_Command_P2: BOOL;
	Pump2_On_Delay_Count: TON;
	Relay_Start_Command_PUMP2: BOOL;
	Pump3_On_Delay_Count: TON;
END_VARл       	
Auto_Manual_Pump1Auto_Manual_Pump2Auto_Manual_Pump3Auto_Manual_Pump4Auto_Manual_Pump5Auto_Manual_Pump6Auto_Manual_Pump7KAuto_Manual_Pump8Auto_Manual_SWRemote_StartJ	ЛVFD_Trip╦Emersency_StopIVFD_TripKEmersency_Stop  VFD_start_Command   Permissive Pump 1  	
Auto_Manual_Pump1KStart_Command_Pump1

PumpEN_No1
PumpEN_No2
PumpEN_No3
PumpEN_No4
PumpEN_No5
PumpEN_No6K
PumpEN_No7Pump1ENAuto_Manual_SW
ЛStart_Command_Pump_On_Bit1KRelay_Start_CommandRemote_Start
	ЛEmersency_StopЛVFD_Trip╦Motor_Trip1IEmersency_StopVFD_TripKMotor_Trip1
Pump1_ActiveIЛPump3_ActiveЛPump2_ActiveKPump1_EQ_Active
ЛPump1_Off_Command╦Taget_Pressure
	BypassPump1_ActiveЛStart_Command_Pump_On_Bit1╦Pump_Stagging_On_Timer.QЛPump_Stagging_On_Timer.Q	BypassKPump1_Stagging_Delay_TIme	BypassKStarting_Pump_On	ЛTaget_PressurePump_Stagging_Delay_Timer.Q╦VFD_start_Command╦Bypass╦Pump1_Distagging_Delay_TIme  Start_Command_Pump1      	
	Pump1ENKStart_Command_Pump1ЛPump1EN	Pump2ENKStart_Command_Pump2╦Pump2ENPump_Stagging_On_Timer.QЛRelay_Start_CommandЛTaget_PressureEPump1_On_Delay AT#5STON        Start_Command_Pump_On_Bit1      	Start_Command_Pump_On_Bit1EPump1_On_Delay_Reset AT#7STON        Start_Command_Pump_On_Bit1      	
Pump1_On_Delay_Reset.QKRelay_Start_Command╦Taget_Pressure  Relay_Start_Command   Permissive Pump 2

  	
Auto_Manual_Pump2KStart_Command_Pump2

PumpEN_No2
PumpEN_No3
PumpEN_No4
PumpEN_No5K
PumpEN_No6Pump2ENAuto_Manual_SWRemote_StartЛEmersency_StopЛVFD_Trip
Start_Command_Pump_On_Bit1Relay_Start_Command╦Pump1ENЛMotor_Trip2
	ЛTaget_Pressure╦Start_Command_Pump_On_Bit2KRelay_Start_Command_PP2
Pump2_ActiveI
Pump1_ActivePump1_EQ_Active╦Pump1ENJPump2_EQ_ActiveIЛTaget_PressureKStart_Command_Pump2
ЛPump2_Off_Command╦Taget_Pressure
Pump_Stagging_On_Timer.Q	BypassKPump2_Stagging_Delay_TImeIЛTaget_PressurePump_Stagging_Delay_Timer.Q╦VFD_start_Command╦Pump2_Distagging_Delay_TIme  Start_Command_Pump2      	ЛStart_Command_Pump_On_Bit1ЛRelay_Start_Command_PP2ЛTaget_PressureEPump2_On_Delay AT#5STON        Start_Command_Pump_On_Bit2      	Relay_Start_CommandStart_Command_Pump_On_Bit2EPump2_On_Delay_Reset AT#4STON        Start_Command_Pump_On_Bit2      	Start_Command_Pump_On_Bit2EPump2_On_Delay_Count AT#2STON               	
Pump2_On_Delay_Count.QKRelay_Start_Command_PP2╦Taget_Pressure  Relay_Start_Command_PP2            Permissive Pump 3

  	
Auto_Manual_Pump3KStart_Command_Pump3

PumpEN_No3
PumpEN_No4
PumpEN_No4K
PumpEN_No5Pump3EN
	BYPASSKStart_Command_Pump_On_Bit1Relay_Start_Command╦Pump1EN
	BYPASSKStart_Command_Pump_On_Bit2Relay_Start_Command_PP2╦Pump2ENAuto_Manual_SW
	ЛTaget_PressureJЛPump2EN╦Start_Command_Pump_On_Bit3KRelay_Start_Command_P3Remote_StartЛEmersency_StopЛVFD_TripЛMotor_Trip3
Pump3_ActiveI
Pump1_ActivePump1_EQ_ActiveЛPump1ENPump2_ActivePump2_EQ_Active╦Pump2ENJPump2_EQ_ActiveIЛTaget_PressureKStart_Command_Pump3
ЛPump3_Off_Command╦Taget_PressurePump_Stagging_Delay_Timer.Q╦Pump3_Distagging_Delay_TIme  Start_Command_Pump3      	
	Pump3_ActivePump_Stagging_Delay_Timer.QStart_Command_Pump3KVFD_start_CommandKStart_Command_Pump_On_Bit3╦Taget_Pressure  Start_Command_Pump_On_Bit3      	Start_Command_Pump1Start_Command_Pump3Start_Command_Pump2Pump_Stagging_On_Timer.QRelay_Start_CommandЛTaget_PressureEPump3_On_Delay AT#5STON        Start_Command_Pump_On_Bit3      	Start_Command_Pump_On_Bit3EPump3_On_Delay_Reset AT#4STON        Start_Command_Pump_On_Bit3      	Start_Command_Pump_On_Bit3EPump3_On_Delay_Count AT#2STON               	
Pump3_On_Delay_Count.QKRelay_Start_Command_P3╦Taget_Pressure  Relay_Start_Command_P3            Permissive Pump 4

  	
Auto_Manual_Pump4KStart_Command_Pump4

PumpEN_No4
PumpEN_No5
PumpEN_No6
PumpEN_No7K
PumpEN_No8Pump4ENAuto_Manual_SWRemote_StartЛEmersency_StopЛVFD_TripЛMotor_Trip4Pump4_Active
ЛPump4_Off_Command╦Taget_PressurePump4_Stagging_Delay_TIme╦Pump4_Distagging_Delay_TIme  Start_Command_Pump4   Permissive Pump 5

  	
Auto_Manual_Pump5KStart_Command_Pump5

PumpEN_No5
PumpEN_No6
PumpEN_No7K
PumpEN_No8Pump5ENAuto_Manual_SWRemote_StartЛEmersency_StopЛVFD_TripЛMotor_Trip5Pump5_Active
ЛPump5_Off_Command╦Taget_PressurePump5_Stagging_Delay_TIme╦Pump5_Distagging_Delay_TIme  Start_Command_Pump5   Permissive pump 6

  	
Auto_Manual_Pump6KStart_Command_Pump6

PumpEN_No6
PumpEN_No7K
PumpEN_No8Pump6ENAuto_Manual_SWRemote_StartЛEmersency_StopЛVFD_TripЛMotor_Trip6Pump6_Active
ЛPump6_Off_Command╦Taget_PressurePump6_Stagging_Delay_TIme╦Pump6_Distagging_Delay_TIme  Start_Command_Pump6   Permissive  pump 8

  	
Auto_Manual_Pump7KStart_Command_Pump7

PumpEN_No7K
PumpEN_No7Pump7ENAuto_Manual_SWRemote_StartЛEmersency_StopЛVFD_TripЛMotor_Trip7Pump7_Active
ЛPump7_Off_Command╦Taget_PressurePump7_Stagging_Delay_TIme╦Pump7_Distagging_Delay_TIme  Start_Command_Pump7   Permissive  pump 8

  	
Auto_Manual_Pump8KStart_Command_Pump8
PumpEN_No8Pump8ENAuto_Manual_SWRemote_StartЛEmersency_StopЛVFD_TripЛMotor_Trip8Pump8_Active
ЛPump8_Off_Command╦Taget_PressurePump8_Stagging_Delay_TIme╦Pump8_Distagging_Delay_TIme  Start_Command_Pump8   Pump 1 Run Hr  	
BypassKStart_Command_Pump1ЛPump1_T_ResetPump1_On_Timer AT#59sTON       EPump1_On_Plus@R_TRIG             CPump1_On_Timer_MinA1ADD  Pump1_On_Timer_MinPump1_On_Plus.Q  Pump1_T_Reset     CA0MOVE  Pump1_On_Timer_MinPump1_On_T_M_Reset       CPump1_On_Timer_MinA60EQ  Pump1_On_T_M_Reset        CPump1_On_Timer_MinA60EQ  Pump1_On_Timer_Hr_Data        CPump1_On_Timer_HrA1ADD  Pump1_On_Timer_Hr	Pump1_On_Timer_Hr_DataEPump1_On_Plus_Hr@R_TRIG           Pump 2 Run Hr  	
BypassKStart_Command_Pump2ЛPump2_T_ResetPump2_On_Timer AT#5sTON       EPump2_On_Plus@R_TRIG             CPump2_On_Timer_MinA1ADD  Pump2_On_Timer_MinPump2_On_Plus.Q  Pump2_T_Reset     CA0MOVE  Pump2_On_Timer_MinPump2_On_T_M_Reset       CPump2_On_Timer_MinA6EQ  Pump2_On_T_M_Reset        CPump2_On_Timer_MinA5EQ  Pump2_On_Timer_Hr_Data        CPump2_On_Timer_HrA1ADD  Pump2_On_Timer_Hr	Pump2_On_Timer_Hr_DataEPump2_On_Plus_Hr@R_TRIG           Pump 3 Run Hr  	
BypassKStart_Command_Pump3ЛPump3_T_ResetPump3_On_Timer AT#5sTON       EPump3_On_Plus@R_TRIG             CPump3_On_Timer_MinA1ADD  Pump3_On_Timer_MinPump3_On_Plus.Q  Pump3_T_Reset     CA0MOVE  Pump3_On_Timer_MinPump3_On_T_M_Reset       CPump3_On_Timer_MinA6EQ  Pump3_On_T_M_Reset        CPump3_On_Timer_MinA5EQ  Pump3_On_Timer_Hr_Data        CPump3_On_Timer_HrA1ADD  Pump3_On_Timer_Hr	Pump3_On_Timer_Hr_DataEPump3_On_Plus_Hr@R_TRIG           Pump 4 Run Hr  	
BypassKStart_Command_Pump4ЛPump4_T_ResetPump4_On_Timer AT#5sTON       EPump4_On_Plus@R_TRIG             CPump4_On_Timer_MinA1ADD  Pump4_On_Timer_MinPump4_On_Plus.Q  Pump4_T_Reset     CA0MOVE  Pump4_On_Timer_MinPump4_On_T_M_Reset       CPump4_On_Timer_MinA6EQ  Pump4_On_T_M_Reset        CPump4_On_Timer_MinA5EQ  Pump4_On_Timer_Hr_Data        CPump4_On_Timer_HrA1ADD  Pump4_On_Timer_Hr	Pump4_On_Timer_Hr_DataEPump4_On_Plus_Hr@R_TRIG           Pump 5 Run Hr  	
BypassKStart_Command_Pump5ЛPump5_T_ResetPump5_On_Timer AT#5sTON       EPump5_On_Plus@R_TRIG             CPump5_On_Timer_MinA1ADD  Pump5_On_Timer_MinPump5_On_Plus.Q  Pump5_T_Reset     CA0MOVE  Pump5_On_Timer_MinPump5_On_T_M_Reset       CPump5_On_Timer_MinA6EQ  Pump5_On_T_M_Reset        CPump5_On_Timer_MinA5EQ  Pump5_On_Timer_Hr_Data        CPump5_On_Timer_HrA1ADD  Pump5_On_Timer_Hr	Pump5_On_Timer_Hr_DataEPump5_On_Plus_Hr@R_TRIG           Pump 6Run Hr  	
BypassKStart_Command_Pump6ЛPump6_T_ResetPump6_On_Timer AT#5sTON       EPump6_On_Plus@R_TRIG             CPump6_On_Timer_MinA1ADD  Pump6_On_Timer_MinPump6_On_Plus.Q  Pump6_T_Reset     CA0MOVE  Pump6_On_Timer_MinPump6_On_T_M_Reset       CPump6_On_Timer_MinA6EQ  Pump6_On_T_M_Reset        CPump6_On_Timer_MinA5EQ  Pump6_On_Timer_Hr_Data        CPump6_On_Timer_HrA1ADD  Pump6_On_Timer_Hr	Pump6_On_Timer_Hr_DataEPump6_On_Plus_Hr@R_TRIG           Pump 7 Run Hr  	
BypassKStart_Command_Pump7ЛPump7_T_ResetPump7_On_Timer AT#5sTON       EPump7_On_Plus@R_TRIG             CPump7_On_Timer_MinA1ADD  Pump7_On_Timer_MinPump7_On_Plus.Q  Pump7_T_Reset     CA0MOVE  Pump7_On_Timer_MinPump7_On_T_M_Reset       CPump7_On_Timer_MinA6EQ  Pump7_On_T_M_Reset        CPump7_On_Timer_MinA5EQ  Pump7_On_Timer_Hr_Data        CPump7_On_Timer_HrA1ADD  Pump7_On_Timer_Hr	Pump7_On_Timer_Hr_DataEPump7_On_Plus_Hr@R_TRIG           Pump 8 Run Hr  	
BypassKStart_Command_Pump8ЛPump8_T_ResetPump8_On_Timer AT#5sTON       EPump8_On_Plus@R_TRIG             CPump8_On_Timer_MinA1ADD  Pump8_On_Timer_MinPump8_On_Plus.Q  Pump8_T_Reset     CA0MOVE  Pump8_On_Timer_MinPump8_On_T_M_Reset       CPump8_On_Timer_MinA6EQ  Pump8_On_T_M_Reset        CPump8_On_Timer_MinA5EQ  Pump8_On_Timer_Hr_Data        CPump8_On_Timer_HrA1ADD  Pump8_On_Timer_Hr	Pump8_On_Timer_Hr_DataEPump8_On_Plus_Hr@R_TRIG           Pump 1 Run Hr Comparision Pump1_On_Timer_HrAPump2_On_Timer_HrLT  Pump12_ActivePump1_On_Timer_HrAPump3_On_Timer_HrLT  Pump13_ActivePump1_On_Timer_HrAPump4_On_Timer_HrLT  Pump14_ActivePump1_On_Timer_HrAPump5_On_Timer_HrLT  Pump15_ActivePump1_On_Timer_HrAPump6_On_Timer_HrLT  Pump16_ActivePump1_On_Timer_HrAPump7_On_Timer_HrLT  Pump17_ActiveCPump1_On_Timer_HrAPump8_On_Timer_HrLT  Pump18_Active      Pump 1 Run Hr Comparision Pump1_On_Timer_HrAPump2_On_Timer_HrEQ  Pump12_EQ_ActivePump1_On_Timer_HrAPump3_On_Timer_HrEQ  Pump13_EQ_ActivePump1_On_Timer_HrAPump4_On_Timer_HrEQ  Pump14_EQ_ActivePump1_On_Timer_HrAPump5_On_Timer_HrEQ  Pump15_EQ_ActivePump1_On_Timer_HrAPump6_On_Timer_HrEQ  Pump16_EQ_ActivePump1_On_Timer_HrAPump7_On_Timer_HrEQ  Pump17_EQ_ActiveCPump1_On_Timer_HrAPump8_On_Timer_HrEQ  Pump18_EQ_Active                  
Pump12_ActivePump13_ActivePump14_ActivePump15_ActivePump16_ActivePump17_ActiveKPump18_Active  Pump1_Active      
Pump12_EQ_ActivePump13_EQ_ActivePump14_EQ_ActivePump15_EQ_ActivePump16_EQ_ActivePump17_EQ_ActiveKPump18_EQ_Active  Pump1_EQ_Active            Pump 2 Run Hr Comparision Pump2_On_Timer_HrAPump1_On_Timer_HrLT  Pump21_ActivePump2_On_Timer_HrAPump3_On_Timer_HrLT  Pump23_ActivePump2_On_Timer_HrAPump4_On_Timer_HrLT  Pump24_ActivePump2_On_Timer_HrAPump5_On_Timer_HrLT  Pump25_ActivePump2_On_Timer_HrAPump6_On_Timer_HrLT  Pump26_ActivePump2_On_Timer_HrAPump7_On_Timer_HrLT  Pump27_ActiveCPump2_On_Timer_HrAPump8_On_Timer_HrLT  Pump28_Active         
Pump21_ActivePump23_ActivePump24_ActivePump25_ActivePump26_ActivePump27_ActiveKPump28_Active  Pump2_Active   Pump 2 Run Hr Comparision Pump2_On_Timer_HrAPump1_On_Timer_HrEQ  Pump21_EQ_ActivePump2_On_Timer_HrAPump3_On_Timer_HrEQ  Pump23_EQ_ActivePump2_On_Timer_HrAPump4_On_Timer_HrEQ  Pump24_EQ_ActivePump2_On_Timer_HrAPump5_On_Timer_HrEQ  Pump25_EQ_ActivePump2_On_Timer_HrAPump6_On_Timer_HrEQ  Pump26_EQ_ActivePump2_On_Timer_HrAPump7_On_Timer_HrEQ  Pump27_EQ_ActiveCPump2_On_Timer_HrAPump8_On_Timer_HrEQ  Pump28_EQ_Active         
Pump21_EQ_ActivePump23_EQ_ActivePump24_EQ_ActivePump25_EQ_ActivePump26_EQ_ActivePump27_EQ_ActiveKPump28_EQ_Active  Pump2_EQ_Active            Pump 3 Run Hr Comparision Pump3_On_Timer_HrAPump1_On_Timer_HrLT  Pump31_ActivePump3_On_Timer_HrAPump2_On_Timer_HrLT  Pump32_ActivePump3_On_Timer_HrAPump4_On_Timer_HrLT  Pump34_ActivePump3_On_Timer_HrAPump5_On_Timer_HrLT  Pump35_ActivePump3_On_Timer_HrAPump6_On_Timer_HrLT  Pump36_ActivePump3_On_Timer_HrAPump7_On_Timer_HrLT  Pump37_ActiveCPump3_On_Timer_HrAPump8_On_Timer_HrLT  Pump38_Active                  
Pump31_ActivePump32_ActivePump34_ActivePump35_ActivePump36_ActivePump37_ActiveKPump38_Active  Pump3_Active   Pump 3 Run Hr Comparision Pump3_On_Timer_HrAPump1_On_Timer_HrEQ  Pump31_EQ_ActivePump3_On_Timer_HrAPump2_On_Timer_HrEQ  Pump32_EQ_ActivePump3_On_Timer_HrAPump4_On_Timer_HrEQ  Pump34_EQ_ActivePump3_On_Timer_HrAPump5_On_Timer_HrEQ  Pump35_EQ_ActivePump3_On_Timer_HrAPump6_On_Timer_HrEQ  Pump36_EQ_ActivePump3_On_Timer_HrAPump7_On_Timer_HrEQ  Pump37_EQ_ActiveCPump3_On_Timer_HrAPump8_On_Timer_HrEQ  Pump38_EQ_Active         
Pump31_EQ_ActivePump32_EQ_ActivePump34_EQ_ActivePump35_EQ_ActivePump36_EQ_ActivePump37_EQ_ActiveKPump38_EQ_Active  Pump3_EQ_Active            Pump 4 Run Hr Comparision Pump4_On_Timer_HrAPump1_On_Timer_HrLE  Pump41_ActivePump4_On_Timer_HrAPump2_On_Timer_HrLE  Pump42_ActivePump4_On_Timer_HrAPump3_On_Timer_HrLE  Pump43_ActivePump4_On_Timer_HrAPump5_On_Timer_HrLE  Pump45_ActivePump4_On_Timer_HrAPump6_On_Timer_HrLE  Pump46_ActivePump4_On_Timer_HrAPump7_On_Timer_HrLE  Pump47_ActiveCPump4_On_Timer_HrAPump8_On_Timer_HrLE  Pump48_Active         
Pump41_ActivePump42_ActivePump43_ActivePump45_ActivePump46_ActivePump47_ActiveKPump48_Active  Pump4_Active   Pump 5 Run Hr Comparision Pump5_On_Timer_HrAPump1_On_Timer_HrLE  Pump51_ActivePump5_On_Timer_HrAPump2_On_Timer_HrLE  Pump52_ActivePump5_On_Timer_HrAPump3_On_Timer_HrLE  Pump53_ActivePump5_On_Timer_HrAPump4_On_Timer_HrLE  Pump54_ActivePump5_On_Timer_HrAPump6_On_Timer_HrLE  Pump45_ActivePump5_On_Timer_HrAPump7_On_Timer_HrLE  Pump57_ActiveCPump5_On_Timer_HrAPump8_On_Timer_HrLE  Pump58_Active         
Pump51_ActivePump52_ActivePump53_ActivePump54_ActivePump56_ActivePump57_ActiveKPump58_Active  Pump5_Active   Pump 6 Run Hr Comparision Pump6_On_Timer_HrAPump1_On_Timer_HrLE  Pump61_ActivePump6_On_Timer_HrAPump2_On_Timer_HrLE  Pump62_ActivePump6_On_Timer_HrAPump3_On_Timer_HrLE  Pump63_ActivePump6_On_Timer_HrAPump4_On_Timer_HrLE  Pump64_ActivePump6_On_Timer_HrAPump5_On_Timer_HrLE  Pump65_ActivePump6_On_Timer_HrAPump7_On_Timer_HrLE  Pump67_ActiveCPump6_On_Timer_HrAPump8_On_Timer_HrLE  Pump68_Active         
Pump61_ActivePump62_ActivePump63_ActivePump64_ActivePump65_ActivePump67_ActiveKPump68_Active  Pump6_Active   Pump 7 Run Hr Comparision Pump7_On_Timer_HrAPump1_On_Timer_HrLE  Pump71_ActivePump7_On_Timer_HrAPump2_On_Timer_HrLE  Pump72_ActivePump7_On_Timer_HrAPump3_On_Timer_HrLE  Pump73_ActivePump7_On_Timer_HrAPump4_On_Timer_HrLE  Pump74_ActivePump7_On_Timer_HrAPump5_On_Timer_HrLE  Pump75_ActivePump7_On_Timer_HrAPump6_On_Timer_HrLE  Pump76_ActiveCPump7_On_Timer_HrAPump8_On_Timer_HrLE  Pump78_Active         
Pump71_ActivePump72_ActivePump73_ActivePump74_ActivePump76_ActivePump76_ActiveKPump78_Active  Pump7_Active      
Pump81_ActivePump82_ActivePump83_ActivePump84_ActivePump86_ActivePump87_ActiveKPump85_Active  Pump8_Active   Pump 8 Run Hr Comparision Pump8_On_Timer_HrAPump1_On_Timer_HrLE  Pump81_ActivePump8_On_Timer_HrAPump2_On_Timer_HrLE  Pump82_ActivePump8_On_Timer_HrAPump3_On_Timer_HrLE  Pump83_ActivePump8_On_Timer_HrAPump4_On_Timer_HrLE  Pump84_ActivePump8_On_Timer_HrAPump5_On_Timer_HrLE  Pump85_ActivePump8_On_Timer_HrAPump7_On_Timer_HrLE  Pump87_ActiveCPump8_On_Timer_HrAPump6_On_Timer_HrLE  Pump86_Active         	Auto_Manual_SWKRemote_Start  Pump_Off_Command   Pump 1 Off Command Pump1_On_Timer_HrAPump2_On_Timer_HrGT  Pump12_Off_CommandPump1_On_Timer_HrAPump3_On_Timer_HrGT  Pump13_Off_CommandPump1_On_Timer_HrAPump4_On_Timer_HrGT  Pump14_Off_CommandPump1_On_Timer_HrAPump5_On_Timer_HrGT  Pump15_Off_CommandPump1_On_Timer_HrAPump6_On_Timer_HrGE  Pump16_Off_CommandPump1_On_Timer_HrAPump7_On_Timer_HrGE  Pump17_Off_CommandCPump1_On_Timer_HrAPump8_On_Timer_HrGE  Pump18_Off_Command         
	Pump12_Off_CommandPump13_Off_CommandPump14_Off_CommandPump15_Off_CommandPump16_Off_CommandPump17_Off_CommandKPump18_Off_Command╦Taget_Pressure  Pump1_Off_Command   Pump 2 Off Command Pump2_On_Timer_HrAPump1_On_Timer_HrGT  Pump21_Off_CommandPump2_On_Timer_HrAPump3_On_Timer_HrGT  Pump23_Off_CommandPump2_On_Timer_HrAPump4_On_Timer_HrGT  Pump24_Off_CommandPump2_On_Timer_HrAPump5_On_Timer_HrGT  Pump25_Off_CommandPump2_On_Timer_HrAPump6_On_Timer_HrGE  Pump26_Off_CommandPump2_On_Timer_HrAPump7_On_Timer_HrGE  Pump27_Off_CommandCPump2_On_Timer_HrAPump8_On_Timer_HrGE  Pump28_Off_Command         
	Pump21_Off_CommandPump23_Off_CommandPump24_Off_CommandPump25_Off_CommandPump26_Off_CommandPump27_Off_CommandKPump28_Off_Command╦Taget_Pressure  Pump2_Off_Command   Pump 3 Off Command Pump3_On_Timer_HrAPump1_On_Timer_HrGT  Pump31_Off_CommandPump3_On_Timer_HrAPump2_On_Timer_HrGT  Pump32_Off_CommandPump3_On_Timer_HrAPump4_On_Timer_HrGT  Pump34_Off_CommandPump3_On_Timer_HrAPump5_On_Timer_HrGT  Pump35_Off_CommandPump3_On_Timer_HrAPump6_On_Timer_HrGE  Pump36_Off_CommandPump3_On_Timer_HrAPump7_On_Timer_HrGE  Pump37_Off_CommandCPump3_On_Timer_HrAPump8_On_Timer_HrGE  Pump38_Off_Command         
	Pump31_Off_CommandPump32_Off_CommandPump34_Off_CommandPump35_Off_CommandPump36_Off_CommandPump37_Off_CommandKPump38_Off_Command╦Taget_Pressure  Pump3_Off_Command   Pump 4 Off Command Pump4_On_Timer_HrAPump1_On_Timer_HrGT  Pump41_Off_CommandPump4_On_Timer_HrAPump2_On_Timer_HrGT  Pump42_Off_CommandPump4_On_Timer_HrAPump3_On_Timer_HrGT  Pump43_Off_CommandPump4_On_Timer_HrAPump5_On_Timer_HrGT  Pump45_Off_CommandPump4_On_Timer_HrAPump6_On_Timer_HrGE  Pump46_Off_CommandPump4_On_Timer_HrAPump7_On_Timer_HrGE  Pump47_Off_CommandCPump4_On_Timer_HrAPump8_On_Timer_HrGE  Pump48_Off_Command         
	Pump41_Off_CommandPump42_Off_CommandPump43_Off_CommandPump45_Off_CommandPump46_Off_CommandPump47_Off_CommandKPump48_Off_Command╦Taget_Pressure  Pump4_Off_Command   Pump 5 Off Command Pump5_On_Timer_HrAPump1_On_Timer_HrGE  Pump51_Off_CommandPump5_On_Timer_HrAPump2_On_Timer_HrGE  Pump52_Off_CommandPump5_On_Timer_HrAPump3_On_Timer_HrGE  Pump53_Off_CommandPump5_On_Timer_HrAPump4_On_Timer_HrGE  Pump54_Off_CommandPump5_On_Timer_HrAPump6_On_Timer_HrGE  Pump56_Off_CommandPump5_On_Timer_HrAPump7_On_Timer_HrGE  Pump57_Off_CommandCPump5_On_Timer_HrAPump8_On_Timer_HrGE  Pump58_Off_Command         
	Pump51_Off_CommandPump52_Off_CommandPump53_Off_CommandPump54_Off_CommandPump56_Off_CommandPump57_Off_CommandKPump58_Off_Command╦Taget_Pressure  Pump5_Off_Command   Pump 6 Off Command Pump6_On_Timer_HrAPump1_On_Timer_HrGE  Pump61_Off_CommandPump6_On_Timer_HrAPump2_On_Timer_HrGE  Pump62_Off_CommandPump6_On_Timer_HrAPump3_On_Timer_HrGE  Pump63_Off_CommandPump6_On_Timer_HrAPump4_On_Timer_HrGE  Pump64_Off_CommandPump6_On_Timer_HrAPump5_On_Timer_HrGE  Pump65_Off_CommandPump6_On_Timer_HrAPump7_On_Timer_HrGE  Pump67_Off_CommandCPump6_On_Timer_HrAPump8_On_Timer_HrGE  Pump68_Off_Command         
	Pump61_Off_CommandPump62_Off_CommandPump63_Off_CommandPump64_Off_CommandPump65_Off_CommandPump67_Off_CommandKPump68_Off_Command╦Taget_Pressure  Pump6_Off_Command   Pump 7 Off Command Pump7_On_Timer_HrAPump1_On_Timer_HrGE  Pump71_Off_CommandPump7_On_Timer_HrAPump2_On_Timer_HrGE  Pump72_Off_CommandPump7_On_Timer_HrAPump3_On_Timer_HrGE  Pump73_Off_CommandPump7_On_Timer_HrAPump4_On_Timer_HrGE  Pump74_Off_CommandPump7_On_Timer_HrAPump5_On_Timer_HrGE  Pump75_Off_CommandPump7_On_Timer_HrAPump6_On_Timer_HrGE  Pump76_Off_CommandCPump7_On_Timer_HrAPump8_On_Timer_HrGE  Pump78_Off_Command         
	Pump71_Off_CommandPump72_Off_CommandPump73_Off_CommandPump74_Off_CommandPump76_Off_CommandPump75_Off_CommandKPump78_Off_Command╦Taget_Pressure  Pump7_Off_Command   Pump 8 Off Command Pump8_On_Timer_HrAPump1_On_Timer_HrGE  Pump81_Off_CommandPump8_On_Timer_HrAPump2_On_Timer_HrGE  Pump82_Off_CommandPump8_On_Timer_HrAPump3_On_Timer_HrGE  Pump83_Off_CommandPump8_On_Timer_HrAPump4_On_Timer_HrGE  Pump84_Off_CommandPump8_On_Timer_HrAPump5_On_Timer_HrGE  Pump85_Off_CommandPump8_On_Timer_HrAPump6_On_Timer_HrGE  Pump86_Off_CommandCPump8_On_Timer_HrAPump7_On_Timer_HrGE  Pump87_Off_Command         
	Pump81_Off_CommandPump82_Off_CommandPump83_Off_CommandPump84_Off_CommandPump86_Off_CommandPump85_Off_CommandKPump87_Off_Command╦Taget_Pressure  Pump8_Off_Command            Stagging  	ЛTaget_PressurePump1_ActiveЛPump1_Off_CommandЛPump1_Stagging_Delay_Timer.QEPump1_Stagging_On_Timer AT#59STON               	Pump1_Stagging_On_Timer.QEPump1_Stagging_Delay_Timer AT#2STON               	
Pump1_Stagging_On_Timer.QKPump1_Stagging_Delay_TIme╦Taget_Pressure  Pump1_Stagging_Delay_TIme   Stagging  	ЛTaget_PressurePump2_ActiveЛPump2_Off_CommandЛPump2_Stagging_Delay1_Timer.QEPump2_Stagging_On_Timer AT#200STON               	Pump2_Stagging_On_Timer.QEPump2_Stagging_Delay1_Timer AT#2STON               	
Pump2_Stagging_On_Timer.QKPump2_Stagging_Delay_TIme╦Taget_Pressure  Pump2_Stagging_Delay_TIme   Stagging  	ЛTaget_PressurePump3_ActiveЛPump3_Off_CommandЛPump3_Stagging_Delay_Timer.QEPump3_Stagging_On_Timer AT#400STON               	Pump3_Stagging_On_Timer.QEPump3_Stagging_Delay_Timer AT#2STON               	
Pump3_Stagging_On_Timer.QKPump3_Stagging_Delay_TIme╦Taget_Pressure  Pump3_Stagging_Delay_TIme   Stagging  	ЛTaget_PressurePump4_ActiveЛPump4_Off_CommandЛPump4_Stagging_Delay_Timer.QEPump4_Stagging_On_Timer AT#600STON               	Pump4_Stagging_On_Timer.QEPump4_Stagging_Delay_Timer AT#2STON            Stagging  	ЛTaget_PressurePump5_ActiveЛPump5_Off_CommandЛPump5_Stagging_Delay_Timer.QEPump5_Stagging_On_Timer AT#10STON               	Pump5_Stagging_On_Timer.QEPump5_Stagging_Delay_Timer AT#2STON               	
Pump5_Stagging_On_Timer.QKPump5_Stagging_Delay_TIme╦Taget_Pressure  Pump5_Stagging_Delay_TIme      	
Pump4_Stagging_On_Timer.QKPump4_Stagging_Delay_TIme╦Taget_Pressure  Pump4_Stagging_Delay_TIme   Stagging  	ЛTaget_PressurePump6_ActiveЛPump6_Off_CommandЛPump6_Stagging_Delay_Timer.QEPump6_Stagging_On_Timer AT#10STON               	Pump6_Stagging_On_Timer.QEPump6_Stagging_Delay_Timer AT#2STON               	
Pump6_Stagging_On_Timer.QKPump6_Stagging_Delay_TIme╦Taget_Pressure  Pump6_Stagging_Delay_TIme   Stagging  	ЛTaget_PressurePump7_ActiveЛPump7_Off_CommandЛPump7_Stagging_Delay_Timer.QEPump7_Stagging_On_Timer AT#10STON               	Pump7_Stagging_On_Timer.QEPump7_Stagging_Delay_Timer AT#2STON               	
Pump7_Stagging_On_Timer.QKPump7_Stagging_Delay_TIme╦Taget_Pressure  Pump7_Stagging_Delay_TIme   Stagging  	ЛTaget_PressurePump8_ActiveЛPump8_Off_CommandЛPump8_Stagging_Delay_Timer.QEPump8_Stagging_On_Timer AT#10STON               	Pump8_Stagging_On_Timer.QEPump8_Stagging_Delay_Timer AT#2STON               	
Pump8_Stagging_On_Timer.QKPump8_Stagging_Delay_TIme╦Taget_Pressure  Pump8_Stagging_Delay_TIme            DIsStagging Pump 1  	Taget_PressureЛPump1_ActivePump1_Off_CommandЛPump1_Distagging_Delay_Timer.QEPump1_Distagging_On_Timer AT#10STON               	Pump1_distagging_On_Timer.QEPump1_Distagging_Delay_Timer AT#2STON               	
Pump1_Distagging_On_Timer.QKPump1_Distagging_Delay_TImeKTaget_Pressure  Pump1_Distagging_Delay_TIme   DIsStagging Pump 2  	Taget_PressureЛPump2_ActivePump2_Off_CommandЛPump2_Distagging_Delay_Timer.QEPump2_Distagging_On_Timer AT#10STON               	Pump2_distagging_On_Timer.QEPump2_Distagging_Delay_Timer AT#2STON               	
Pump2_Distagging_On_Timer.QKPump2_Distagging_Delay_TImeKTaget_Pressure  Pump2_Distagging_Delay_TIme   DIsStagging Pump 2  	Taget_PressureЛPump3_ActivePump3_Off_CommandЛPump3_Distagging_Delay_Timer.QEPump3_Distagging_On_Timer AT#10STON               	Pump3_distagging_On_Timer.QEPump3_Distagging_Delay_Timer AT#2STON               	
Pump3_Distagging_On_Timer.QKPump3_Distagging_Delay_TImeKTaget_Pressure  Pump3_Distagging_Delay_TIme   DIsStagging Pump4  	Taget_PressureЛPump4_ActivePump4_Off_CommandЛPump4_Distagging_Delay_Timer.QEPump4_Distagging_On_Timer AT#10STON               	Pump4_distagging_On_Timer.QEPump4_Distagging_Delay_Timer AT#2STON               	
Pump4_Distagging_On_Timer.QKPump4_Distagging_Delay_TImeKTaget_Pressure  Pump4_Distagging_Delay_TIme   DIsStagging Pump 2  	Taget_PressureЛPump5_ActivePump5_Off_CommandЛPump5_Distagging_Delay_Timer.QEPump5_Distagging_On_Timer AT#10STON               	Pump5_distagging_On_Timer.QEPump5_Distagging_Delay_Timer AT#2STON               	
Pump5_Distagging_On_Timer.QKPump5_Distagging_Delay_TImeKTaget_Pressure  Pump5_Distagging_Delay_TIme   DIsStagging Pump 6  	Taget_PressureЛPump5_ActivePump5_Off_CommandЛPump6_Distagging_Delay_Timer.QEPump6_Distagging_On_Timer AT#10STON               	Pump6_distagging_On_Timer.QEPump6_Distagging_Delay_Timer AT#2STON               	
Pump6_Distagging_On_Timer.QKPump6_Distagging_Delay_TImeKTaget_Pressure  Pump6_Distagging_Delay_TIme   DIsStagging Pump 7  	Taget_PressureЛPump7_ActivePump7_Off_CommandЛPump7_Distagging_Delay_Timer.QEPump7_Distagging_On_Timer AT#10STON               	Pump7_distagging_On_Timer.QEPump7_Distagging_Delay_Timer AT#2STON               	
Pump7_Distagging_On_Timer.QKPump7_Distagging_Delay_TImeKTaget_Pressure  Pump7_Distagging_Delay_TIme   DIsStagging Pump8  	Taget_PressureЛPump8_ActivePump8_Off_CommandЛPump8_Distagging_Delay_Timer.QEPump8_Distagging_On_Timer AT#10STON               	Pump8_distagging_On_Timer.QEPump8_Distagging_Delay_Timer AT#2STON               	
Pump8_Distagging_On_Timer.QKPump8_Distagging_Delay_TImeKTaget_Pressure  Pump8_Distagging_Delay_TIme      	ЛTaget_PressureЛStart_Command_Pump2ЛStart_Command_Pump3ЛStart_Command_Pump4ЛStart_Command_Pump5ЛStart_Command_Pump6ЛStart_Command_Pump7╦Start_Command_Pump8  Starting_Pump_On   Stagging  	
	Bypass╦Taget_PressurePump3_RLY_FBPump2_RLY_FBPump1_RLY_FBKTaget_Freq_equalAuto_Manual_SWEPump_Stagging_On_Timer AT#10STON               	Pump_Stagging_On_Timer.QEPump_Stagging_Delay_Timer AT#10STON                        Pump_Stagging_On_Timer.Q  Pump_Stagging_On_Timer_Delay      Pump_Stagging_Delay_Timer.Q  _                  <  , 4 4 A▓           MEI a╜Вe	a╜Вe      ════════        o  PROGRAM MEI
VAR



	Bar: REAL;
	PID_OP: WORD;
	Freq: REAL;
	Condition1: BOOL;
	Sec: TON;

	M0: BOOL;
	MotorOn: BOOL;
	Condition2: BOOL;
	Condition3: BOOL;
	Sec1: TON;

	Reset1: BOOL;
	SecEQ: BOOL;
	MinEQ: BOOL;
	HrEQ: BOOL;
	Hooter: BOOL;
	ActSec1: WORD;
	ActMin1: WORD;
	ActHr1 AT %MW400: WORD;
	ABC AT %MW80: WORD;
	XYZ AT %MW90: DWORD;
	Var1: INT;
	Var2: REAL;
	Var3: WORD;

	KBLY: REAL;
END_VAR
VAR RETAIN
	StagingSetTime: WORD := 30;
	ActSec: WORD;
	Sec_Counter: CTU;
	Min_Counter: CTU;
	Hour_Counter: CTU;
	SetSec: WORD := 30;
	SetMin: WORD := 20;
	SetHr: WORD := 10;
END_VAR    Analog Scaling C_AI_IOE1_00010000A10SCALE  Bar      PID op to modbus -- scaling
 C_AI_IOE1_00010000A1000SCALE  KBLY      PID op to modbus -- scaling
 CPID_OP0320000A50SCALE  Freq        AABCWORD_TO_DWORD  XYZAABCWORD_TO_INT  Var1AABCWORD_TO_REAL  Var2CAABCREAL_TO_WORD  Var3         	
Condition1ЛSec.QESec AT#1sTON            sec counter increment CActSecA1ADD  ActSec	
Condition1KSec.Q       CActSecAStagingSetTimeGE  M0         	
Condition1KM0  MotorOn     CA0MOVE  ActSec
Condition2     sec counter increment  	
Condition3Sec1.QESec1 AT#1sTON            measure Sec_CounterCondition3 AND Sec1.QReset1 OR Sec_Counter.QA60CTU  ActSec1    Min_CounterSec_Counter.QReset1 OR Min_Counter.QA60CTU  ActMin1    EHour_CounterMin_Counter.QReset1A60CTU  ActHr1          compare SetSecASec_Counter.CVGE  SecEQSetMinAMin_Counter.CVGE  MinEQCSetHrAHour_Counter.CVGE  HrEQ         	
Condition3SecEQMinEQKHrEQ  Hooter         d                  5  ,     ~           Output_Mapping a╜Вe	a╜Вe      ════════        &   PROGRAM Output_Mapping
VAR
END_VAR

    Analog OutPut

 CAVDF_FreqMOVE  _AO_IOE2_00         VFD_start_Command  VFD_ON      Start_Command_Pump1  Pump1_ON      Start_Command_Pump2  Pump2_ON      Start_Command_Pump3  Pump3_ON      Start_Command_Pump4  Pump4_ON      Start_Command_Pump5  Pump5_ON      Start_Command_Pump6  Pump6_ON      Start_Command_Pump7  Pump7_ON      Start_Command_Pump8  Pump8_ONd                  6  , 4 4 A▓           PLC_PRG a╜Вe	a╜Вe      ════════        4   PROGRAM PLC_PRG
VAR
	SS: INT;
	HMI: INT;
END_VAR	      E??? MEI              E??? CYCLE              E??? Alarm_Mapping              E??? HMI_Mapping              E??? Input_Mapping              E??? Interlocking              E??? Output_Mapping              E??? Setpoint              E??? Alarm_Mapping         d                  7  , h h uц           Setpoint ╔Вe	a╜Вe      ════════            PROGRAM Setpoint
VAR

END_VAR    HMI Set Pressure CAMHMI_Set_PRMOVE  
HMI_Set_PR        C
HMI_Set_PRAActaul_PressureEQ  Taget_Pressure        C	ControlPID_CVAHMI_Set_FreEQ  Taget_Freq_equal        CAMHMI_Staging_TimeMOVE  Staging_Time        CACVMOVE  MAX_CV        CAM_CVMOVE  MIN_CV        CA
Man_CV_SetMOVE  man_cvAuto_Manual_SW                C	VFD_Refer
HMI_Set_PRActual_PR_INTk1t1tddbffman_cvMAX_CVMIN_CVpaiadadpdm A	reset_PIDPID           	ControlPID_CV        CAActaul_PressureREAL_TO_INT  Actual_PR_INT        C_AI_IOE1_0005000A10SCALE  Actaul_Pressure   d                    ¤   , ╨ ╨ йt         #   Standard.lib 28.7.20 17:57:22 @к _    GOC35.lib 28.7.20 17:57:22 @к _$   GOC35Util.lib 28.7.20 17:57:22 @к _$   Utilities.lib 28.7.20 17:57:22 @к _)   GOC35HiddenExt.lib 28.7.20 17:57:22 @к _   C:\Program Files\CoDeSysForAutomationAlliance\Mitsubishi Electric India Targets\GOC35\Libraries\PIDA.lib 28.7.20 17:57:22 @к _      CONCAT @               	   CTD @       	   CTU @       
   CTUD @          DELETE @          F_TRIG @       
   FIND @          INSERT @       
   LEFT @       	   LEN @       	   MID @          R_TRIG @          REPLACE @          RIGHT @          RS @       	   RTC @       
   SEMA @          SR @       	   TOF @       	   TON @          TP @             Global Variables 0 @       &   ▄   B_Move @
      CCLIEFBasic_DiagInfo       CCLIEFBasic_SlaveInfo       CCLIEFBasicStation       Comset       Count       enErrorCode       ETHDiagnostic    	   GOC_EVENT    	   SysStruct       TxStatus                  CCLIEFBasic_Master_Config @          CCLIEFBasic_Master_Diag @          CCLIEFBasic_Slave_Config @          CCLIEFBasic_Slave_Diag @          CCLIEFBasic_Slave_Info @          ClearScreenLog @          CloseTCPPort @          Event_Attach_ISR @          Event_Attach_SOP @          Event_Detach @          Events_Clear @          Events_Hold @          Events_Release @          GetETHDiag @          GetETHPortConfig @          GetETHStatus @          IM_Read @          IM_Write @          OpenPort @          OpenTCPPort @          Port_Status @          PTO_CONFIG @          PTO_RUN @          PulseCatchConfig @          Read_Date @          Read_Date_Time @          Read_Time @          ReadMasterClock @          ReceiveByte @          ReceiveByteEx @          Refresh_In @          Refresh_Out @          SendByte @          Set_HSC_Cmp @          Write_Date @          Write_Date_Time @          Write_Time @             Global_Variables @          A  DisplayScreen @      _DataLogEntry    
   _SysVarCPU       _SysVarDataLog    
   _SysVarHMI       _SysVarInterrupt       _SysVarMemPtr    
   _SysVarRTC       _SysVarSDCard       _SysVarVerInfo       RTU_ComBuff    
   RTU_ComSet       RTU_RecStruct       RTU_TT    
   ServerDiag       TCP_ComBuff                ╩   ENCAB0 @      HSC_CONFIG1 ш     PV ш     Mode ш     CV ш     QD ш     QU ш     Directionold ш     ConfigDn ш     LOAD ш     RUN ш     RESET ш     InitCV ш     RETAINCV ш  	   PoweredOn ш     ╩   ENCAB3 @      HSC_CONFIG1 ш     PV ш     Mode ш     CV ш     QD ш     QU ш     Directionold ш     ConfigDn ш     LOAD ш     RUN ш     RESET ш     InitCV ш     RETAINCV ш  	   PoweredOn ш     ъ   ENCABZ0 @      HSC_CONFIG1 ш     PV ш     Mode ш     CV ш     QD ш     QU ш     Directionold ш     ConfigDn ш     Z_EnableOld ш     LOAD ш     RUN ш     RESET ш     InitCV ш     RETAINCV ш     Z_EN ш  	   PoweredOn ш     ъ   ENCABZ3 @      HSC_CONFIG1 ш     PV ш     Mode ш     CV ш     QD ш     QU ш     Directionold ш     ConfigDn ш     Z_EnableOld ш     LOAD ш     RUN ш     RESET ш     InitCV ш     RETAINCV ш     Z_EN ш  	   PoweredOn ш        FREQ2 @          FREQ5 @          FT_AVG @           FT_FODF @           Get_Bit_Mbus @        ╙   HSC0 @      HSC_CONFIG1 ш     PV ш     Mode ш     DIR ш     CV ш     QD ш     QU ш     Directionold ш     ConfigDn ш     LOAD ш     RUN ш     RESET ш     InitCV ш     RETAINCV ш  	   PoweredOn ш     ╙   HSC3 @      HSC_CONFIG1 ш     PV ш     Mode ш     DIR ш     CV ш     QD ш     QU ш     Directionold ш     ConfigDn ш     LOAD ш     RUN ш     RESET ш     InitCV ш     RETAINCV ш  	   PoweredOn ш        HSUDCnt0 @          HSUDCnt3 @          MBUSTCP_Server @        !   MBUSTCP_Server.ProcessFNC01 @       !   MBUSTCP_Server.ProcessFNC02 @       !   MBUSTCP_Server.ProcessFNC03 @       !   MBUSTCP_Server.ProcessFNC04 @       !   MBUSTCP_Server.ProcessFNC05 @       !   MBUSTCP_Server.ProcessFNC06 @       !   MBUSTCP_Server.ProcessFNC15 @       !   MBUSTCP_Server.ProcessFNC16 @       !   MBUSTCP_Server.ProcessFNC23 @          Put_Bit_Mbus @           RTU_CRC16 @           RTU_Master @           RTU_Slave_Ex @           SCALE @              Global_Variables @       C   C   ALARM_MSG @      GEN_MODE       POINT       SYSTIME                   ASC_TO_BYTE @           ASC_TO_DWORD @           ASC_TO_WORD @           BCD_TO_BYTE @           BCD_TO_DWORD @           BCD_TO_WORD @           BLINK @           BTCHK_B @           BTCHK_D @           BTCHK_W @           BTSRH_B @           BTSRH_D @           BTSRH_W @           BTTOG_B @           BTTOG_D @           BTTOG_W @           BYTE_TO_ASC @           BYTE_TO_BCD @           CHARCURVE @           DBFIL_B @           DBFIL_I @           DBFIL_W @           DBRD_B @           DBRD_D @           DBRD_I @           DBRD_STR @           DBRD_W @           DBSRCH_B @           DBSRCH_D @           DBSRCH_I @           DBSRCH_STR @           DBSRCH_W @           DBWR_B @           DBWR_D @           DBWR_I @           DBWR_STR @           DBWR_W @           DEG_TO_RAD @           DT_TO_SYSTIME @           DWORD_TO_ASC @           DWORD_TO_BCD @           FIFO_STK @        	   GEN @           Get_Bit @           HYSTERESIS @           LIFO_STK @           LIMITALARM @           LMTCMP_I @           LMTCMP_R @           LookInDB_I @           Put_Bit @           PUTBIT_B @           PUTBIT_D @           PUTBIT_W @           RAD_TO_DEG @           RAMP_INT @           RAMP_REAL @           Search_Bit @           STATISTICS_INT @           STATISTICS_REAL @           SYSTIME_TO_DT @           TBL_RDWR @           Toggle_Bit @           VARIANCE @           WORD_TO_ASC @           WORD_TO_BCD @              Global_Variables @       ;      AttachSystemPOU @                  ClearScreen @          EEPROM_GET_VERSION @          FunKeyGoTo @          FunKeyMom @          FunKeyMomClear @          FunKeyTog @          GET_EXTENDEDRETAIN @          GET_VIEWDATALOG @          GetHMIEntryMode @       
   GoTo @          GoToNext @          HMI_Begin @          HMI_Over @          HSC_CONFIG @          HSC_READ @          HSC_WRITE @          HSCIn_Read @          iKeyAction @          iLEDAction @          MultiLang_GetDataPointer @          PrintASCII @          PrintDate @          PrintIP @          PrintMultiLingualText @          PrintMultiSymbol @          PrintMultiText @          PrintRTCDate @          PrintRTCTime @          PrintSymbol @          PrintText @          PrintTime_Min @          PrintTime_Sec @          PrintTOD @          PrintVarBool @          PrintVarSymbol @          PrintVarValue @          READETHVERSION @          RegisterSymbol @          SD_FILECLOSE @          SD_FILEEOF @          SD_FILEGETPOS @          SD_FILEOPEN @          SD_FILEREAD @          SD_FILESETPOS @          SD_FILEWRITE @          SET_EXTENDEDRETAIN @          SET_HSC_DIR @          SET_VIEWDATALOG @          SetETHMAC @          SetETHPortConfig @          SetHMIEntryMode @          ShowCursorText @          System_Menu @          TD_CONFIG @          TD_READ @          TransferAppConfiguration @          UpdateLCD @          Z_CONFIG @             Global_Variables @             PID @                   PID_TO_PWM @              Global_Variables @                         ════════           2                                    
             ·   ,   'Ш        °     ════════                      POUs
               __SystemPOUs                 HMI_PRG  ,               	   HMI_PRG_1  )                  ImplicitPOSTPLC_PRG  .                  ImplicitPOSTPLC_PRG_1  *                  ImplicitPREPLC_PRG  -                  ImplicitPREPLC_PRG_1  0                      Alarm_Mapping  1                  CYCLE  =                  HMI_Mapping  2                  Input_Mapping  3                 Interlocking  4                  MEI  <                  Output_Mapping  5                  PLC_PRG  6                  Setpoint  7                
   Data types                    Visualizations                    Global Variables                Global_Variables                     HMI_GVL  /                  ImplicitIOList  8                  Variable_Configuration  	                                                ════════             з╫e¤<             ¤<                 	   localhost            P      	   localhost            P      	   localhost            P     ╧|e   F╦[г