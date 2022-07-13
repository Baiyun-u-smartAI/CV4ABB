
MODULE Module1
	CONST jointtarget jpos10:=[[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST jointtarget jpos20:=[[90,0,0,0,90,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pSafeCam:=[[79.32,270.74,284.53],[0.00451826,-0.712599,0.701555,0.001432],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pCam:=[[79.08,350.68,162.85],[0.00520876,-0.709082,0.705106,-0.00107304],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget pSafeXipan:=[[-83.89,345.76,349.52],[0.00552764,-0.716136,0.697884,0.00872034],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pXipan:=[[-63.40,345.90,157.09],[0.00556212,-0.716184,0.697831,0.00902655],[1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget pSafeCangchu:=[[22.92,-338.18,420.68],[0.484473,0.509348,-0.474157,0.530118],[-1,-1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget pPickHezi:=[[86.72,273.13,21.90],[0.502611,-0.477376,-0.503327,-0.515903],[0,-1,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget pSafeKonghe:=[[-198.82,310.53,195.81],[0.507436,-0.515731,0.48533,0.490902],[1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget pSafe:=[[156.38,258.00,557.98],[0.00188542,0.490752,-0.871297,0.00106932],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget pSafePickHezi:=[[85.78,281.26,189.07],[0.502473,-0.477595,-0.503406,-0.515758],[0,-1,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
     PERS robtarget pV10Base :=[[201.95,248.36,354.03],[0.6582,-0.270787,0.645959,0.276017],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget pDiuBase:=[[85.78,281.26,189.07],[0.502473,-0.477595,-0.503406,-0.515758],[0,-1,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
     VAR socketdev client_socket;
    VAR string received_string;
    VAR string SocketStr;
    !*********  
    PERS num DuidiaoWeizhi{8};  
    !!!!!!!!
    PERS num nCount:=5;
	PERS num nNumber:=1;
    PERS num nfind;  
    PERS num nStrlength;  
    PERS num nArray_cs2{5};  
    PERS num yanse := 0; 
    PERS num bianhao  := 2;
    PERS num jiaodu := 102;
    PERS num i;
    
    PERS num CunLiaoWeizhi{8};  ! ????????
    PERS num temp;  ! ????
    !*********
    VAR bool ok_cs2;
	PERS robtarget pV10:=[[56.36,463.72,447.96],[0.00412902,-0.712597,0.70156,0.00139014],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPickWuliao:=[[297.30,-74.13,336.60],[0.00194878,-0.00429586,-0.999948,-0.00900608],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pSafeWuliao:=[[297.28,-74.13,614.94],[0.00212926,-0.00440477,-0.999947,-0.0090247],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPlaceWuliao:=[[102.7,476.02,356.41],[0.00433857,-0.702672,-0.711448,0.00864817],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pSafeKHandGZ:=[[83.51,314.67,158.23],[0.501213,-0.48272,-0.504904,-0.510724],[0,-1,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPickKonghe:=[[-208.30,388.27,72.00],[0.511544,-0.511247,0.481834,0.494758],[1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPlaceKonghe:=[[-208.29,273.33,22.05],[0.511661,-0.511042,0.481831,0.494851],[1,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPickGaizi:=[[72.40,557.18,282.33],[0.0152942,-0.711373,0.702642,0.00295459],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPlaceGaizi:=[[74.37,442.60,271.68],[0.0152928,-0.711342,0.702673,0.00293855],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pCangchu:=[[61.41,-569.12,390.60],[0.522447,0.488073,-0.484783,0.503805],[-1,0,-3,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pHome:=[[301.70,0.00,557.99],[0.00209483,2.18741E-06,-0.999998,6.47308E-06],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	
	PERS robtarget pPlaceWuliaoBase:=[[66.83,475.99,360.05],[0.00417779,-0.717566,-0.696425,0.00858264],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPickHuan:=[[-212.36,448.33,238.28],[0.00549011,-0.716151,0.69787,0.00866653],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPlaceEnd:=[[82.52,451.08,239.92],[0.00494902,-0.716814,0.697204,0.00778217],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	
	PERS robtarget pPlaceWuliao10:=[[364.35,0.00,594.00],[0.5,0,0.866026,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPlaceWuliao20:=[[364.35,0.00,594.00],[0.5,0,0.866026,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pHome10:=[[364.35,0.00,594.00],[0.5,0,0.866026,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pDuidiao:=[[37.72,-512.69,207.46],[0.00324221,0.699696,-0.714384,-0.00832741],[-1,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pDuidiao10:=[[364.35,0.00,594.00],[0.5,0,0.866026,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget pDiu:=[[102.69,-356.49,558.54],[0.00712234,-0.759474,0.650497,0.00182009],[-1,0,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pGai_2:=[[74.38,442.60,239.21],[0.0153554,-0.711351,0.702663,0.00295434],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pGai_12:=[[74.38,442.59,248.95],[0.0153127,-0.711351,0.702664,0.00293263],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pGai_3:=[[-216.29,436.73,246.01],[0.015429,-0.711374,0.702638,0.00298094],[1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pGai_temp:=[[-353.12,276.21,355.77],[0.201915,-0.649043,0.348513,0.645377],[1,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pGai_zhua:=[[-209.74,274.71,28.24],[0.499404,-0.504508,0.500215,0.495835],[1,0,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pGai_cang_temp:=[[86.55,334.59,431.79],[0.665877,-0.235026,0.670552,0.227444],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pGai_cang_temp10:=[[337.55,20.30,450.28],[0.756663,0.0595193,0.650903,-0.0156372],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pcang_chu:=[[53.51,-530.89,391.98],[0.511606,0.488609,0.502362,-0.497145],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pcang_chu10:=[[193.05,-355.18,549.99],[0.0942183,0.362714,0.926196,-0.0414996],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPlace_4:=[[103.38,439.92,356.92],[0.00434083,-0.70267,-0.711452,0.00852841],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPlace_3:=[[66.14,438.92,357.78],[0.00439385,-0.702689,-0.711433,0.00854175],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPlace_2:=[[102.70,476.02,356.41],[0.00433857,-0.702672,-0.711448,0.00864817],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS robtarget pPlace_1:=[[65.76,475.40,355.71],[0.00442459,-0.702691,-0.71143,0.00855409],[0,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !***************
PROC main()
    rInitAll;  
    rKonghe;
    rGetXipan;
    nCount := 1;  
    WHILE nCount <= 4 DO ! ?? 4 ???
        rPaizhao;
        rShibie;
    ENDWHILE
    rPutXipan;
    rGetGaizi;
    rPutGaizi;
    MoveJ pcang_chu10, v100, fine, tool0;
    MoveJ pHome,v100,z10,tool0;
    Reset do00;
    Reset do01;
    WaitTime 1;
    Stop;
    
  
ENDPROC
	PROC rInitAll()
		MoveAbsJ jpos10\NoEOffs, v100, z15, tool0;
        	Reset do00;
       	 	Reset do01;
        nNumber := 1;
        nCount := 1;     
      
        FOR i FROM 1 TO 5 DO
            CunLiaoWeizhi{i} := 0;  ! ???
        ENDFOR
          i := 1;
        MoveJ pHome, v100, z10, tool0;
        WaitTime 2;   
        
	ENDPROC
  
 PROC rPaizhao()
        MoveJ pSafeWuliao, v100, fine, tool0;
        SocketClose client_socket;  ! ??
        SocketCreate client_socket;  ! ??
        SocketConnect client_socket, "192.168.125.2", 5376;  ! ??
        
        SocketSend client_socket\Str:="startup";
        WaitTime 10;
        SocketReceive client_socket\Str:=received_string;  ! ?????
        SocketClose client_socket;  ! ?? 
        TPWrite "Server Wrote-"+received_string;   
   
        !*******************
        SocketStr:=received_string;
        nStrlength:=StrLen(SocketStr);
        TPWrite "sort-" + SocketStr;  
        nfind:=0;
        FOR i FROM 1 TO 2 DO   
            nfind:=StrFind(SocketStr,nfind+1,",");  
            nArray_cs2{i}:=nfind;
        ENDFOR
        
        ! ??,??,??
        ok_cs2:=StrToVal(StrPart(SocketStr,1,nArray_cs2{1}-1),yanse);   
        ok_cs2:=StrToVal(StrPart(SocketStr,nArray_cs2{1} + 1,nArray_cs2{2} - nArray_cs2{1} - 1),jiaodu);
        ok_cs2:=StrToVal(StrPart(SocketStr,nArray_cs2{2} + 1,nStrlength - nArray_cs2{2}),bianhao);
        
        TPWrite "yanse="\Num:=yanse;
        TPWrite "jiaodu="\Num:=jiaodu;
        TPWrite "bianhao="\Num:=bianhao; 
        WaitTime 2;
        
	ENDPROC  
    
    
    PROC rGetWuliao()   ! ???
		MoveJ Offs(pPickWuliao,0,0,20), v150, fine, tool0;
		MoveL pPickWuliao, v50, fine, tool0;
		Set do01;
		WaitTime 1;
		MoveL Offs(pPickWuliao,0,0,100), v150, fine, tool0;
         MoveJ pSafeWuliao, v100, fine, tool0;
	ENDPROC 
   
    
    
 	PROC rShibie()  ! ??????
            rGetWuliao;  ! ???
            temp := bianhao;
      IF temp = 1 THEN
          pPlaceWuliao := pPlace_1;
      ELSEIF temp = 2 THEN
          pPlaceWuliao := pPlace_2;
      ELSEIF temp= 3 THEN
          pPlaceWuliao := pPlace_3;
      ELSEIF temp = 4 THEN
          pPlaceWuliao := pPlace_4;
      ELSE
         bianhao := 8;
      ENDIF
            
      
            IF yanse = 0 AND bianhao >= 1 AND bianhao < 5 AND CunLiaoWeizhi{temp} <= 0  THEN   ! ??????????????
                !rCalpos; ! ????????
                MoveJ Offs(pPlaceWuliao,0,0,50), v100, z5, tool0;
                MoveL pPlaceWuliao, v50,fine, tool0;
                MoveL Offs(pPlaceWuliao,0,0,-1), v50, fine, tool0;
			    MoveJ RelTool(pPlaceWuliao,0,0,3\Rz :=-jiaodu), v50, fine, tool0;
			    Reset do01;
			    WaitTime 1;
			    MoveL Offs(pPlaceWuliao,0,0,100), v100, fine, tool0;
                
                CunLiaoWeizhi{bianhao} := 1;   ! ??????????
                   nCount := nCount + 1;
		    ELSE
                rDiu;  	 ! ??	    
		    ENDIF
	
	ENDPROC    
    
    
  PROC rDiu()
		MoveJ pDiu, v100, fine, tool0;
        MoveJ Offs(pDuidiao,0,0,100), v100, z5, tool0;
	    MoveL pDuidiao, v100, fine, tool0;
		Reset do01;
		WaitTime 1;
        MoveL Offs(pDuidiao,0,0,50), v100, fine, tool0;
        WaitTime 1;
        MoveJ pDiu, v100, fine, tool0;
	WaitTime 2;
	ENDPROC
    
 PROC rGetKonghe()
        MoveJ pSafe, v200, fine, tool0;
		MoveJ pSafeKonghe, v100, fine, tool0;
		MoveJ Offs(pPickKonghe,10,0,0), v150, fine, tool0;
		MoveL pPickKonghe, v100, fine, tool0;
		Set do00;
		WaitTime 2;
		MoveL Offs(pPickKonghe,0,0,10), v150, fine, tool0;
		MoveJ pSafeKonghe, v200, fine, tool0;
	ENDPROC  
 
 	PROC rPutKonghe()
		MoveJ Offs(pPlaceKonghe,0,0,100), v100, z5, tool0;
        MoveL pPlaceKonghe, v100, fine, tool0;
        Reset do00;
        WaitTime 1;
        MoveL Offs(pPlaceKonghe,0,0,200), v100, z5, tool0;
		MoveJ Offs(pPickHuan,0,0,200), v100, z5, tool0;
		MoveL pPickHuan, v100, fine, tool0;
		Set do00;
		WaitTime 1;
		MoveL Offs(pPickHuan,-10,0,100), v100, fine, tool0;
		MoveJ Offs(pPlaceEnd,0,0,100), v100, fine, tool0;
		MoveL pPlaceEnd, v100, fine, tool0;
		Reset do00;
		WaitTime 1;
		MoveL Offs(pPlaceEnd,0,0,100), v100, fine, tool0;
	ENDPROC   

    PROC rGetXipan()
		MoveAbsJ jpos20\NoEOffs, v200, z15, tool0;
		MoveJ pSafeXipan, v200, z15, tool0;
		MoveJ Offs(pXipan,0,0,200), v200, z1, tool0;
		MoveL Offs(pXipan,0,0,50), v100, fine, tool0;
		MoveL pXipan, v50, fine, tool0;
		Set do00;
		WaitTime 1;
		MoveL Offs(pXipan,0,0,50), v100, fine, tool0;
		MoveL Offs(pXipan,0,0,200), v200, fine, tool0;
		MoveJ pSafeXipan, v200, z15, tool0;
	ENDPROC      
  

	PROC rPutWuliao()
		MoveJ pSafeWuliao, v200, fine, tool0;
		MoveJ Offs(pPlaceWuliao,0,0,50), v150, fine, tool0;
		MoveL pPlaceWuliao, v100, fine, tool0;
		Reset do01;
		WaitTime 1;
		MoveL Offs(pPlaceWuliao,0,0,50), v150, fine, tool0;
		MoveJ pSafeWuliao, v150, fine, tool0;
	ENDPROC    
 
     PROC rPutXipan()
		MoveJ pSafeXipan, v200, z5, tool0;
		MoveJ Offs(pXipan,0,0,120), v200, z1, tool0;
		MoveL Offs(pXipan,0,0,50), v100, fine, tool0;
		MoveL pXipan, v50, fine, tool0;
		Reset do00;
		WaitTime 1;
		MoveL Offs(pXipan,0,0,50), v100, fine, tool0;
		MoveL Offs(pXipan,0,0,200), v200, fine, tool0;
		MoveJ pSafeXipan, v200, z15, tool0;
	ENDPROC  


    
	PROC rGetGaizi()
        MoveJ pSafe, v200, fine, tool0;
		MoveJ Offs(pPickGaizi,0,0,50), v150, fine, tool0;
		MoveL pPickGaizi, v100, fine, tool0;
		Set do00;
		WaitTime 1;
		MoveL Offs(pPickGaizi,0,0,50), v150, fine, tool0;
	ENDPROC
    
	PROC rPutGaizi()
		MoveJ Offs(pPlaceGaizi,0,0,50), v150, fine, tool0;
		MoveL pPlaceGaizi, v100, fine, tool0;
		Reset do00;
		WaitTime 1;
		MoveJ pGai_2, v100, fine, tool0;
		Set do00;
		WaitTime 1;
		MoveL Offs(pGai_2,0,0,50), v100, fine, tool0;
		MoveJ Offs(pGai_3,0,0,60), v100, fine, tool0;
		MoveL pGai_3, v100, fine, tool0;
		Reset do00;
		MoveL Offs(pGai_3,0,0,100), v100, fine, tool0;
		MoveJ pGai_temp, v100, fine, tool0;
		MoveJ Offs(pGai_zhua,0,0,50), v100, fine, tool0;
		MoveL pGai_zhua, v100, fine, tool0;
		Set do00;
		WaitTime 1;
		MoveL Offs(pGai_zhua,0,0,50), v100, fine, tool0;
		MoveJ pGai_cang_temp, v100, fine, tool0;
		MoveJ pGai_cang_temp10, v100, fine, tool0;
		MoveJ Offs(pcang_chu,0,0,50), v100, fine, tool0;
		MoveL pcang_chu, v100, fine, tool0;
		Reset do00;
		WaitTime 1;
		MoveL Offs(pcang_chu,0,0,120), v100, fine, tool0;
	ENDPROC
   
    PROC rKonghe()
        rGetKonghe;
        rPutKonghe;
    ENDPROC
    PROC rGaizi()
        rGetGaizi;
        rPutGaizi;
    ENDPROC
        
     PROC rTeachPoints()
        MoveJ pHome, v1000, z5, tool0;
        MoveJ pSafe, v1000, z5, tool0;
        MoveJ pSafeKonghe, v1000, z5, tool0;
        MoveJ pPickKonghe, v1000, z5, tool0;       
        MoveJ pPlaceKonghe, v1000, z5, tool0;
        MoveJ pPickHuan, v1000, z5, tool0;
        MoveJ pPlaceEnd, v1000, z5, tool0;
        MoveJ pSafeXipan, v1000, z5, tool0;
        MoveL pXipan, v1000, z5, tool0;
        MoveJ pSafeWuliao, v1000, z5, tool0;
        MoveJ pPickWuliao, v1000, z5, tool0;
        MoveJ pPlaceWuliaoBase, v1000, z5, tool0;
        MoveJ pSafeCam, v1000, z5, tool0;
        MoveJ pCam, v1000, z5, tool0;
        MoveJ pV10, v1000, z5, tool0;
        MoveJ pDuidiao, v1000, z5, tool0;
        MoveJ pSafeKHandGZ, v1000, z5, tool0;
        MoveJ pPickGaizi, v1000, z5, tool0;
        MoveJ pPlaceGaizi, v1000, z5, tool0;
        MoveJ pSafePickHezi, v1000, z5, tool0;
        MoveJ pPickHezi, v1000, z5, tool0;
        MoveJ pSafeCangchu, v1000, z5, tool0;
        MoveJ pCangchu, v1000, z5, tool0;
         MoveJ pV10Base, v1000, z5, tool0;  ! ?????
        MoveJ pDiuBase, v1000, z5, tool0;   ! ??????????
    ENDPROC

ENDMODULE