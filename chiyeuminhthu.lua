--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.9.19) ~  Much Love, Ferib 

]]--

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then local v68=0;while true do if (v68==0) then v19=v0(v3(v30,1,1));return "";end end else local v69=v2(v0(v30,16));if v19 then local v76=v5(v69,v19);v19=nil;return v76;else return v69;end end end);local function v20(v31,v32,v33)if v33 then local v70=0 -(877 -(282 + 595)) ;local v71;while true do if (v70==(0 -0)) then v71=(v31/(2^(v32-1)))%((1639 -(1523 + 114))^(((v33-(1 -0)) -(v32-(2 -1))) + (620 -(555 + 64)))) ;return v71-(v71%(932 -(857 + 67 + 7))) ;end end else local v72=(570 -((523 -156) + 201))^(v32-(928 -(214 + 713))) ;return (((v31%(v72 + v72))>=v72) and (1 + 0)) or (0 + 0) ;end end local function v21()local v34=117 -(32 + 85) ;local v35;while true do if (v34==(1066 -(68 + 978 + 19))) then return v35;end if (v34==((282 + 988) -(226 + 1044))) then v35=v1(v16,v18,v18);v18=v18 + (4 -3) ;v34=1;end end end local function v22()local v36,v37=v1(v16,v18,v18 + (4 -2) );v18=v18 + (959 -(892 + 65)) ;return (v37 * (472 -216)) + v36 ;end local function v23()local v38,v39,v40,v41=v1(v16,v18,v18 + (4 -1) );v18=v18 + 4 ;return (v41 * (16777566 -(87 + 263))) + (v40 * (65716 -((164 -97) + 113))) + (v39 * (188 + 68)) + v38 ;end local function v24()local v42=0 + (1138 -(116 + 1022)) ;local v43;local v44;local v45;local v46;local v47;local v48;while true do if (v42==1) then v45=3 -2 ;v46=(v20(v44,953 -(802 + (624 -474)) ,53 -33 ) * ((3 -1)^(24 + 5 + 3))) + v43 ;v42=(2485 -(998 + 488)) -(915 + 82) ;end if (v42==(8 -5)) then if (v47==(0 + 0)) then if (v46==(0 -0)) then return v48 * (1187 -(1069 + 118)) ;else local v100=0;while true do if (v100==(0 -(0 + 0))) then v47=1 -0 ;v45=0;break;end end end elseif (v47==(356 + 1691)) then return ((v46==(0 -0)) and (v48 * ((1 + 0 + 0)/(791 -(368 + 423))))) or (v48 * NaN) ;end return v8(v48,v47-1023 ) * (v45 + (v46/((7 -5)^(163 -111)))) ;end if (v42==(18 -((869 -(814 + 45)) + 8))) then v43=v23();v44=v23();v42=3 -2 ;end if (v42==((1093 -649) -(416 + 26))) then v47=v20(v44,793 -(201 + 571) ,98 -67 );v48=((v20(v44,14 + 18 )==((1 + 0) -0)) and  -(439 -(145 + 293))) or ((153 + 278) -(44 + 386)) ;v42=3;end end end local function v25(v49)local v50=885 -(261 + 624) ;local v51;local v52;while true do if (v50==(3 -1)) then v52={};for v77=1081 -(1020 + 60) , #v51 do v52[v77]=v2(v1(v3(v51,v77,v77)));end v50=1426 -(630 + 793) ;end if (v50==(0 -0)) then v51=nil;if  not v49 then v49=v23();if (v49==(0 -0)) then return "";end end v50=(767 -(745 + 21)) + 0 ;end if (v50==(9 -6)) then return v6(v52);end if (v50==((602 + 1146) -(760 + (2715 -1728)))) then v51=v3(v16,v18,(v18 + v49) -(1914 -(1789 + 124)) );v18=v18 + v49 ;v50=2;end end end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v53=0;local v54;local v55;local v56;local v57;local v58;local v59;while true do local v67=0 -0 ;while true do if ((1 -0)~=v67) then else if (v53~=(0 -0)) then else local v96=0;while true do if (v96~=2) then else v53=1;break;end if (v96==(0 -0)) then local v105=0;while true do if (v105~=(0 -0)) then else v54={};v55={};v105=2 -1 ;end if ((1 + 0)~=v105) then else v96=1;break;end end end if (v96~=(286 -(134 + 151))) then else v56={};v57={v54,v55,nil,v56};v96=3 -1 ;end end end break;end if (v67==0) then if (v53==(1992 -(582 + 1408))) then local v97=65 -(30 + 35) ;while true do if (v97~=(3 -2)) then else return v57;end if (v97==(0 -0)) then local v106=0 -0 ;while true do if ((1825 -(1195 + 629))==v106) then v97=1 -0 ;break;end if (v106~=(1212 -(323 + 889))) then else for v114=242 -(187 + 54) ,v23() do local v115=0;local v116;local v117;while true do if ((780 -(162 + 618))==v115) then v116=580 -(361 + 219) ;v117=nil;v115=1;end if (v115~=1) then else while true do if (v116==(320 -(53 + 267))) then v117=v21();if (v20(v117,1 + 0 ,1)~=(0 + 0)) then else local v170=0 -0 ;local v171;local v172;local v173;local v174;while true do if (v170==(414 -(15 + 398))) then v173=nil;v174=nil;v170=2 -0 ;end if (v170==(1 + 1)) then while true do if (v171==3) then if (v20(v173,1639 -(1373 + 263) ,11 -8 )~=(1001 -(451 + 549))) then else v174[4]=v59[v174[4]];end v54[v114]=v174;break;end if ((1 + 1)==v171) then local v180=0 -0 ;local v181;while true do if (v180==(0 -0)) then v181=1384 -(746 + 638) ;while true do if (v181~=(1 + 0)) then else v171=4 -1 ;break;end if (v181==(341 -(218 + 123))) then if (v20(v173,1582 -(1535 + 46) ,1 + 0 )~=(1 + 0)) then else v174[740 -(542 + 196) ]=v59[v174[2]];end if (v20(v173,2,1 + 1 )==(561 -(306 + 254))) then v174[1 + 2 ]=v59[v174[3]];end v181=1;end end break;end end end if (v171==(1 -0)) then local v182=1467 -(899 + 568) ;while true do if (v182~=(0 + 0)) then else v174={v22(),v22(),nil,nil};if (v172==(290 -(60 + 230))) then local v186=0 + 0 ;local v187;local v188;while true do if (v186==(572 -(426 + 146))) then v187=0;v188=nil;v186=1;end if (v186~=(1 + 0)) then else while true do if ((1456 -(282 + 1174))~=v187) then else v188=811 -(569 + 242) ;while true do if (v188~=(0 -0)) then else v174[1 + 2 ]=v22();v174[4]=v22();break;end end break;end end break;end end elseif (v172==(1025 -(706 + 318))) then v174[3]=v23();elseif (v172==(7 -5)) then v174[1124 -(118 + 1003) ]=v23() -((1253 -(721 + 530))^16) ;elseif (v172==(1274 -(945 + 326))) then local v195=0 -0 ;local v196;while true do if (v195~=(0 -0)) then else v196=0;while true do if (v196~=(377 -(142 + 235))) then else v174[3 + 0 ]=v23() -((702 -(271 + 429))^(72 -56)) ;v174[4 + 0 ]=v22();break;end end break;end end end v182=978 -(553 + 424) ;end if (v182==1) then v171=1502 -(1408 + 92) ;break;end end end if (v171~=(0 + 0)) then else v172=v20(v117,1088 -(461 + 625) ,2 + 1 );v173=v20(v117,2 + 2 ,6);v171=1289 -(993 + 295) ;end end break;end if (v170~=(0 -0)) then else v171=0;v172=nil;v170=2 -1 ;end end end break;end end break;end end end for v118=2 -1 ,v23() do v55[v118-(1 + 0) ]=v28();end v106=1 + 0 ;end end end end end if (v53~=(1172 -(418 + 753))) then else local v98=753 -(239 + 514) ;local v99;while true do if (v98~=(0 + 0)) then else v99=0 + 0 ;while true do if (v99~=(1 + 1)) then else v53=1 + 1 ;break;end if (0==v99) then v58=v23();v59={};v99=1;end if (1==v99) then local v111=0 + 0 ;while true do if (v111~=1) then else v99=1 + 1 ;break;end if ((529 -(406 + 123))==v111) then for v150=1,v58 do local v151=0 -0 ;local v152;local v153;local v154;local v155;while true do if (v151==(1204 -(373 + 829))) then while true do if ((732 -(476 + 255))==v152) then v155=nil;while true do if (v153==(1770 -(1749 + 20))) then if (v154==(1 + 0)) then v155=v21()~=(0 + 0) ;elseif (v154==(1324 -(1249 + 73))) then v155=v24();elseif (v154==3) then v155=v25();end v59[v150]=v155;break;end if ((0 + 0)~=v153) then else local v177=1145 -(466 + 679) ;local v178;while true do if (v177~=(0 -0)) then else v178=0;while true do if (v178==1) then v153=239 -(64 + 174) ;break;end if ((0 -0)~=v178) then else local v185=0 -0 ;while true do if (v185==1) then v178=1901 -(106 + 1794) ;break;end if (v185~=(0 + 0)) then else v154=v21();v155=nil;v185=1 + 0 ;end end end end break;end end end end break;end if (0~=v152) then else local v175=0 + 0 ;while true do if ((0 -0)==v175) then v153=0 -0 ;v154=nil;v175=115 -(4 + 110) ;end if ((585 -(57 + 527))~=v175) then else v152=1;break;end end end end break;end if (v151==(1505 -(363 + 1141))) then v154=nil;v155=nil;v151=1429 -(41 + 1386) ;end if (v151~=(103 -(17 + 86))) then else v152=0 + 0 ;v153=nil;v151=2 -1 ;end end end v57[6 -3 ]=v21();v111=2 -1 ;end end end end break;end end end v67=167 -(122 + 44) ;end end end end local function v29(v60,v61,v62)local v63=0;local v64;local v65;local v66;while true do if (v63==1) then v66=v60[3];return function(...)local v79=v64;local v80=v65;local v81=v66;local v82=v27;local v83=1;local v84= -1;local v85={};local v86={...};local v87=v12("#",...) -1 ;local v88={};local v89={};for v93=0,v87 do if (v93>=v81) then v85[v93-v81 ]=v86[v93 + 1 ];else v89[v93]=v86[v93 + 1 ];end end local v90=(v87-v81) + 1 ;local v91;local v92;while true do v91=v79[v83];v92=v91[1];if (v92<=6) then if (v92<=2) then if (v92<=0) then local v107=v91[2];local v108,v109=v82(v89[v107](v13(v89,v107 + 1 ,v91[3])));v84=(v109 + v107) -1 ;local v110=0;for v112=v107,v84 do local v113=0;while true do if (v113==0) then v110=v110 + 1 ;v89[v112]=v108[v110];break;end end end elseif (v92==1) then if ((v91[3]=="_ENV") or (v91[3]=="getfenv")) then v89[v91[2]]=v62;else v89[v91[2]]=v62[v91[3]];end else local v120=v91[2];local v121,v122=v82(v89[v120](v13(v89,v120 + 1 ,v91[3])));v84=(v122 + v120) -1 ;local v123=0;for v138=v120,v84 do v123=v123 + 1 ;v89[v138]=v121[v123];end end elseif (v92<=4) then if (v92==3) then local v124=0;local v125;while true do if (v124==0) then v125=v91[2];v89[v125]=v89[v125](v13(v89,v125 + 1 ,v84));break;end end else local v126=0;local v127;local v128;while true do if (v126==1) then v89[v127 + 1 ]=v128;v89[v127]=v128[v91[4]];break;end if (v126==0) then v127=v91[2];v128=v89[v91[3]];v126=1;end end end elseif (v92>5) then v89[v91[2]]();else local v129=0;local v130;local v131;while true do if (v129==0) then v130=v91[2];v131=v89[v91[3]];v129=1;end if (v129==1) then v89[v130 + 1 ]=v131;v89[v130]=v131[v91[4]];break;end end end elseif (v92<=9) then if (v92<=7) then do return;end elseif (v92>8) then local v132=0;local v133;while true do if (v132==0) then v133=v91[2];v89[v133]=v89[v133](v13(v89,v133 + 1 ,v84));break;end end else v89[v91[2]]();end elseif (v92<=11) then if (v92>10) then v89[v91[2]]=v91[3];else v89[v91[2]]=v91[3];end elseif (v92==12) then if ((v91[3]=="_ENV") or (v91[3]=="getfenv")) then v89[v91[2]]=v62;else v89[v91[2]]=v62[v91[3]];end else do return;end end v83=v83 + 1 ;end end;end if (0==v63) then v64=v60[1];v65=v60[2];v63=1;end end end return v29(v28(),{},v17)(...);end v15("LOL!043O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403513O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F686F616E676E6F727073637269707465722F73637269707462796B68616E682F6D61696E2F6B686E612O68752O626600083O00120C3O00013O00120C000100023O00200400010001000300120B000300044O0002000100034O00095O00022O00083O000100012O000D3O00017O00",v9(),...);
