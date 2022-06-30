# Project: Behavior Simulation for 16-point FFT  
## Input data  
same with Fixed-point simulator  
-> use Test vector made in Fixed-point simulator  
## Specs
- I/O specification  
- Top Block Diagram  
- Timing Diagram  
- State Diagram for Controller  
## TODO  
- Analyze result after Behavior simulation using Vivado Xsim  
- Report in ppt and Upload onto LMS  
## TIP  
- single BF
연산은 바뀔 것이 없으나, TW Factor를 바꾸고 TW를 저장하는 ROM을 바꿀 것
BF와 복소 곱셈은 동일 (C&R은 비트 수에 따라 달라질 듯)
- 메모리 사이즈 
(8 point)  
init    8
stage 1 결과    8
stage 2 결과    8
stage 3 결과    8   => 32 depth (5bit)
(16 point)
init            16
stage 1 결과    16
stage 2 결과    16
stage 3 결과    16
stage 4 결과    16  => 80 depth (7bit) => address가 달라지므로 => memory controller도 바뀜

## 설계 사양서
### Function Description
- Block Name: 16 point Single Butterfly FFT Processor
- Func Desc
1) iCLK은 logic의 동작 clock으로 사용
2) iRSTn이 low일 때, iCLK와 상관없이(async) register 값을 0으로 reset
3) iCLR이 high일 때, iCLK positive edge에 맞춰(sync) resgister 값을 0으로 clear
4) Sign extenstion된 data1과 data2를 add 연산과 sub 연산 수행
5) add 연산 수행 결과는 C&R 연산을 끝으로 종료
6) sub 연산 수행 결과는 TW factor와 복소 곱셈 연산을 수행
7) 복소 곱셈 연산 수행 결과는 C&R 연산까지 수행

### I/O Specification
|Signal Name|I/O|Bit Width|Desc|
|---|---|---|---|
|iCLK|input|1|System clock (50MHz)|
|iRSTn|input|1|Async Active-Low Reset|
|iStart|input|1|Read Controller Start Signal|
|iCLR|input|1|Sync Active-High Clear|
|oDATA_FFT|output|32|FFT Results (Real: 16 bits, Imaginary: 16 bits)|
|oEN_FFT|output|1|FFT Result Enable|  

### Top Block Diagram
Memory Read Ctrl
Memory (32 x 80)    <-32-> Single BF
Memory Write Ctrl

### Top Block Timing Diagram 
1) FFT를 동작시킬 start 인터럽트
2) memory read controller 동작 -> 데이터 읽어옴
3) Sigle BBF/FFT 실행 후 결과를 memory에 write with memory write controller <4번 반복 (4 stages)>
4) 최종 output을 bit reverse ordering해서 fft output으로 출력함

### Sigle BF Block Diagram
W2 과제랑 동일

### Single BF Timing Diagram
1. iDATA_FFT가 들어오면 D_Reg로 딜레이
2. Single BF 연산 실행 -> High Path와 Low Path로 나뉨
3. H는 바로 C&R
4. L는 TW를 곱해서 L_TW로 나오고, 이를 D_Reg로 한 클락 딜레이
5. 그 이후 C&R
6. mux를 이용해서 H_CR과 L_CR을 반복적으로 oDATA_FFT에 출력

### Memory Controller Diagram
#### Block Diagram 
동일할 듯
#### Read State Diagram
- S0
start interrupt 받으면 S1로 변경
- S1
counter를 동작시키며 첫번째 BF에 들어갈 입력 주소 생성
0, 8, 1, 9, 2, 10, 3, 11, 4, 12, 5, 13, 6, 14, 7, 15
주소 생성 후 첫 stage의 write 동작이 끝나는 oCNT==11에 S2로 변경
- S2
counter를 동작시키며 두번째 BF에 들어갈 입력 주소 생성
16, 20, 17, 21, 18, 22, 19, 23, 24, 28, 25, 29, 26, 30, 27, 31
주소 생성 후 두번째 stage의 write 동작이 끝나는 oCNT==11에 S3로 변경
- S3
counter를 동작시키며 세번째 BF에 들어갈 입력 주소 생성
32, 34, 36, 38, 40, 42, 44, 46, 33, 35, 37, 39, 41, 43, 45, 47
주소 생성 후 세번째 stage의 write 동작이 끝나는 oCNT==11에 S4로 변경
- S4
counter를 동작시키며 네번째 BF에 들어갈 입력 주소 생성
48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63
주소 생성 후 네번째 stage의 write 동작이 끝나는 oCNT==11에 S5로 변경
- S5
counter를 동작시키며 final output 값이 저장되어있는 RADDR과 oEN을 생성해준다,
주소 생성 후 state를 0으로 변경
#### Write State Diagram
- S0
start interrupt 받으면 S1로 변경
- S1
counter를 동작시키며 첫번째 BF에 들어갈 입력 주소 생성
16, 24, 17, 25, 18, 26, 19, 27, 20, 28, 21, 29, 22, 30, 23, 31
주소 생성 후 두번째 BF 입력이 끝나는 11 clock에 S2로 변경
- S2
counter를 동작시키며 두번째 BF에 들어갈 입력 주소 생성
32, 36, 33, 37, 34, 38, 35, 39, 40, 44, 41, 45, 42, 46, 43, 47
주소 생성 후 세번째 BF 입력이 끝나는 11 clock에 S3로 변경
- S3
counter를 동작시키며 세번째 BF에 들어갈 입력 주소 생성
48, 50, 52, 54, 56, 58, 60, 62, 49, 51, 53, 55, 57, 59, 61, 63
주소 생성 후 네번째 BF 입력이 끝나는 11 clock에 S4로 변경
- S4
counter를 동작시키며 네번째 BF에 들어갈 입력 주소 생성
64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79
주소 생성 후 첫번째 stage의 write 동작이 끝나는 oCNT==11에 S0로 변경