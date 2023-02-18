local t=string.byte;local M=string.char;local c=string.sub;local C=table.concat;local L=math.ldexp;local Q=getfenv or function()return _ENV end;local l=setmetatable;local T=select;local U=unpack;local d=tonumber;local function V(t)local e,o,n="","",{}local a=256;local B={}for l=0,a-1 do B[l]=M(l)end;local l=1;local function J()local e=d(c(t,l,l),36)l=l+1;local o=d(c(t,l,l+e-1),36)l=l+e;return o end;e=M(J())n[1]=e;while l<#t do local l=J()if B[l]then o=B[l]else o=e..c(e,1,1)end;B[a]=e..c(o,1,1)n[#n+1],e,a=o,o,a+1 end;return table.concat(n)end;local a=V('25D25F27525E25L27525F24V24S24I24N24W25324X24Q24T24K25E23925M27526M26M26B24V27I24M26B26O26B24G24S24N24M25L27B24G24I24V26B24R24S24S24O26B27228728924O24L25224T24G25324Q24S24T26B24S24X28E28A28H28J28P28R24X24M24Z24V24I24G24M24C24G27B24W25228Y28224S28428628828A24Q24M24W28C26B25425A25L24Q24L28S28B25324R24M24T25L24Z29D24V26J28U28K28M24T26J26I26B27P26B28H24G28B27Y24U24Z24I25324I24H24Q27S25325626B24U27U24I24T24N2AP2AO28824U29H29J24R2AH27U2AE2AG28L2AK2AM25625L26B2BB29R2AZ24826Q24E29K29F24O26J24Z27H24T25326N2A228L28N26J26L2BV26I29P26J25324S27F2BN24K2BU2BW26X24U2AH24G24R26J26924I24Z24Q26K25024M24H2BJ24W26926I2A729T29V26B2BM27I2532CC27B24V2CN28Y25329928O26926929V2AU2D02D22BD29I2BF24E2C526L26I2D626I2BA2BC2BJ2BE26P2BH28D2BJ26J25024I24X24T2BQ28I2A32BT2BV2DF2BY2C02C227I2C42E026I2C72C92CB2CD2CF2CH2CJ2CL2CN2CP29U28O2CT2BO2CW24S2CY26I2D82DU26B2D42D626B2ER28O2DL2DB2DN2DE2DG2AT2DI2BC2DA24W24826O2DO29R26J2CE24Z2D624L2AL24M2DW28J2BS2A52E72E22C127G2E52F22E92532CA2CC2CE2CG2CI2CK28F2CM2CO26B2CQ2EK2BN2CV2692CX2CZ24M2D12ES2EU2AT2EW2GD2D92EZ2F82FA2F22DH2DJ2BB2GL24826V2FB2DQ25027H25324M2FH24V2FJ2BR2A42F22FP2E427J2FT2C82FV2EB2FY2EE2G128A2G32EI2CR2EL2G92GB2EQ2GJ2GF2D52GH2EX2F72GT2DD2E72GP2F62GS26U2GV28F26J24X27Y24T24W2EO28Z2G82FK2DY2FN2BW2H72FR2H92E72FU2FW2EC2FZ2EF2G22EH2G52EJ2CS2G82EN2EP2HT2GG2D72HP2EY28F2BE2I12GO2F425L2GP2D625L29B29D26B23W27H28N23Z24Q24H29K27B27D2H82C424K24I2AQ26X23V25325324Z23O2GD26J26J26C24R2JU24Z24W26X26K26K24X24I25026L24K24Q29T25224H25224W24M2I528N2GZ2BO26L2AE26K24W24R2H22572DS28Y26K2JE2A426K2C827I2KR24S29929326C2CO26I2A62JB28526B24427I24N24S25029K2KZ2JG2JI26X23Y24I24O24M2LF2AT2LI26J25423X2JQ27U28D2GA29I26L26826T26S26O26O26926N26B23V24Q28024328Y2AY25224U29K24L2852KJ2MB24024I25124M23K28N2FH24K29K27G2522FJ26B23U2BO24S23Q24T2AJ2H22ML2MN24M25A2DI25L2H428N26B2LP2LR24024G27H24Z25323V2KG2LB2F62832LD2LT2LH2LJ28D2LL24T2JH24H2LO2LQ2LS2LG2LV2LX2LZ29K2692NL2NN2532MC2KG2MA2MC2ME24M2MG24M2MI2MK28D2MM24V2MO26B2MQ2MS2MU24T2MW2MY24X2N02MB2N327G2N52N724H2N928D2MZ2N12P424X24S2GZ2572OF2M12OD24Q2NO2OG24H2692ND2J72AT2JA2NU2862472AJ29K2NW2LI2O42LR2PW24H2LW25L25M2LY2AQ2OB2472K928024W28424U2MA2Q623U2I62OB24X24H25724I24W2KJ28L24N2K626K26V26V26Z2M826V26U26Y26Y26Z2QH25M25M2OM2OO23W24T24V2AO2OQ2NB25L2PQ25L2Q326X23M24N24N23L2522JU2BT2542GQ26B2Q82M02ET23K27S2AC26B24724S26B2N62N827U26J23L23Q24723M26B23P24623X23K24723U23W23X2NI23U23O23V2472RU23W2SQ24423W24123S26I2QH2F623K28524V24H29228B2OQ2DX2FM2NS2BC25M2JL27E2IH2JO2LZ2JS2K32JX2G92K22JV2K52K725725625524S26L24W2AG2932KR2NM2PL25324W26K2K425726K25526M24Q24K24T28Q24M26L24V25224I2OI2PB2CO2LB2RT2BB2J92RH2LC2PV2PX28D2PZ2502Q124M2Q32Q52Q72OA2M123R2522FF26B2432GD2CM26N2QI2QK2M12QM2QO2QQ2GD2ME2QU2QW2QY26O2R02R22R42VA2R62R824Q2MJ2RA2RC2NA2OS2812RH2RJ2RL2RN2RP2C02A52RS2F62RV2OB2RY24Q2S023V2KK27U2S226B2V32FF26A26B26J2NQ24K29I2JD2RB2562SY2VA2T02T22T42S02T72FL2H52F52TB2TD2JN26J2JP2JR2JT2JV2TK2CC2TM2K42QU2TQ2TS2TU2TW24M2TY2OE2U22U42U62U82UA2UC2UE2UG2UI2P124M2UK2NE2F62UN2PS2UP2PU2S12US2LE2O72UV2NJ2UX2AJ2UZ2W92M12JX24U29J2WJ24M2R52QJ2NH2VD2QN2QP2QR2VI2K72VK2QZ2R12R32R52R72MH2VT24U2VV2RD2AA2RF2W02AJ2RK2RM2RO2RQ2W62RT2YF2ET2S52P827U2YK2ET2WV2BC2T124V2T32T52ML2T82X22RT2TC27C2TE2C32X72TH2XA2JW2JY2692XE2TO26K2XH2TT2TV2922XL2QE2XN2U324W2U52U72U92UB28Y2XU2UH2MB2UJ2LA2Y02Y12UO2NE2UQ2Y62JJ2UT2Y92UW2UY2RS2V02Q92M124524Q2982LD2V72OF23K2B127J2KK2YM2VC2ET2VE2YR2VH2QT2YU2QX2YW2VO2YZ2VS2VU2WS2VX2KJ2RG2NE2W12ZB2W42RR2ZF2V12ET3118311A286311C2V92RT2ZP2ZR2WZ2AA2ZU2BT2X32BB2ZX2JM2TF31012X92TJ310531072XG2TR310B2XK2XM2U02XO310I2XQ310L2XT2UF310P2G52XX2XZ2JA2Y126B310V27827925F25I27923125N21F21O23U25N27522X25V313L23V25V27523025V26B25F313T313V25N313U23V313O25F23031453144275');local n=bit and bit.bxor or function(l,o)local e,n=1,0 while l>0 and o>0 do local c,a=l%2,o%2 if c~=a then n=n+e end l,o,e=(l-c)/2,(o-a)/2,e*2 end if l<o then l=o end while l>0 do local o=l%2 if o>0 then n=n+e end l,e=(l-o)/2,e*2 end return n end local function e(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local l=1;local function o()local o,a,c,e=t(a,l,l+3);o=n(o,195)a=n(a,195)c=n(c,195)e=n(e,195)l=l+4;return(e*16777216)+(c*65536)+(a*256)+o;end;local function B()local e=n(t(a,l,l),195);l=l+1;return e;end;local function V()local n=o();local l=o();local c=1;local n=(e(l,1,20)*(2^32))+n;local o=e(l,21,31);local l=((-1)^e(l,32));if(o==0)then if(n==0)then return l*0;else o=1;c=0;end;elseif(o==2047)then return(n==0)and(l*(1/0))or(l*(0/0));end;return L(l,o-1023)*(c+(n/(2^52)));end;local d=o;local function J(e)local o;if(not e)then e=d();if(e==0)then return'';end;end;o=c(a,l,l+e-1);l=l+e;local e={}for l=1,#o do e[l]=M(n(t(c(o,l,l)),195))end return C(e);end;local l=o;local function d(...)return{...},T('#',...)end local function L()local t={0,0,0,0,0};local M={};local l={};local a={t,nil,M,nil,l};local l=o()local c={0,0};for o=1,l do local e=B();local l;if(e==2)then l=(B()~=0);elseif(e==3)then l=V();elseif(e==1)then l=J();end;c[o]=l;end;a[2]=c a[4]=B();for l=1,o()do M[l-1]=L();end;for a=1,o()do local c=n(o(),175);local o=n(o(),72);local n=e(c,1,2);local l=e(o,1,11);local l={l,e(c,3,11),nil,nil,o};if(n==0)then l[3]=e(c,12,20);l[5]=e(c,21,29);elseif(n==1)then l[3]=e(o,12,33);elseif(n==2)then l[3]=e(o,12,32)-1048575;elseif(n==3)then l[3]=e(o,12,32)-1048575;l[5]=e(c,21,29);end;t[a]=l;end;return a;end;local function C(l,e,J)local n=l[1];local e=l[2];local o=l[3];local l=l[4];return function(...)local M=n;local B=e;local e=o;local n=l;local l=d local o=1;local t=-1;local d={};local c={...};local a=T('#',...)-1;local l={};local e={};for l=0,a do if(l>=n)then d[l-n]=c[l+1];else e[l]=c[l+1];end;end;local l=a-n+1 local l;local n;while true do l=M[o];n=l[1];if n<=4 then if n<=1 then if n>0 then local T;local a;local c;local d;local n;e[l[2]]=J[B[l[3]]];o=o+1;l=M[o];e[l[2]]=B[l[3]];o=o+1;l=M[o];n=l[2];d={};c=0;a=n+l[3]-1;for l=n+1,a do c=c+1;d[c]=e[l];end;T={e[n](U(d,1,a-n))};a=n+l[5]-2;c=0;for l=n,a do c=c+1;e[l]=T[c];end;t=a;o=o+1;l=M[o];e[l[2]]();t=n;o=o+1;l=M[o];do return end;else local n=l[2];local c={};local o=0;local a=n+l[3]-1;for l=n+1,a do o=o+1;c[o]=e[l];end;local c={e[n](U(c,1,a-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;t=l;end;elseif n<=2 then e[l[2]]=J[B[l[3]]];elseif n==3 then e[l[2]]();t=A;else e[l[2]]();t=A;end;elseif n<=7 then if n<=5 then e[l[2]]=J[B[l[3]]];elseif n==6 then e[l[2]]=B[l[3]];else local n=l[2];local c={};local o=0;local a=n+l[3]-1;for l=n+1,a do o=o+1;c[o]=e[l];end;local c={e[n](U(c,1,a-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;t=l;end;elseif n<=8 then do return end;elseif n>9 then do return end;else e[l[2]]=B[l[3]];end;o=o+1;end;end;end;return C(L(),{},Q())();
