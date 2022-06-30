#include "xil_io.h"
#include "xparameters.h"

//====================================================

int main(void)
{
    int FFT_Done;
    int FFT_Result0, FFT_Result1, FFT_Result2, FFT_Result3, FFT_Result4, FFT_Result5, FFT_Result6, FFT_Result7;
    int FFT_Result8, FFT_Result9, FFT_Result10, FFT_Result11, FFT_Result12, FFT_Result13, FFT_Result14, FFT_Result15;

    // INITIALIZE IP Register Setting
    Xil_Out32(0x43C00000, 0x00000000); // Reset Start Siganl, Clear Register
    Xil_Out32(0x43C00004, 0x00000000); // Reset IP Done
    Xil_Out32(0x43C00000, 0x00000001); // FFT Start Signal 0 --> 1 Transition
    Xil_Out32(0x43C00000, 0x00000000); // Start Signal 1 --> 0 Transition

    sleep(1);

    while (1) {
        FFT_Done = Xil_In32(0x43C00004); // Checking the FFT Done

        if (FFT_Done == 1) {
            Xil_Out32(0x43C00004, 0x00000000); // FFT Done Register 1 --> 0 Transition

            // Result of FFT IP Read
            FFT_Result0 = Xil_In32(0x43C00008); // Register 2
            FFT_Result1 = Xil_In32(0x43C0000C); // Register 3
            FFT_Result2 = Xil_In32(0x43C00010); // Register 4
            FFT_Result3 = Xil_In32(0x43C00014); // Register 5
            FFT_Result4 = Xil_In32(0x43C00018); // Register 6
            FFT_Result5 = Xil_In32(0x43C0001C); // Register 7
            FFT_Result6 = Xil_In32(0x43C00020); // Register 8
            FFT_Result7 = Xil_In32(0x43C00024); // Register 9
            FFT_Result8 = Xil_In32(0x43C00028); // Register 8
            FFT_Result9 = Xil_In32(0x43C0002C); // Register 9
            FFT_Result10 = Xil_In32(0x43C00030); // Register 10
            FFT_Result11 = Xil_In32(0x43C00034); // Register 11
            FFT_Result12 = Xil_In32(0x43C00038); // Register 12
            FFT_Result13 = Xil_In32(0x43C0003C); // Register 13
            FFT_Result14 = Xil_In32(0x43C00040); // Register 14
            FFT_Result15 = Xil_In32(0x43C00044); // Register 15

            xil_printf("===================================\r\n");
            xil_printf("FFT Result 0 : %x\r\n", FFT_Result0);
            xil_printf("FFT Result 1 : %x\r\n", FFT_Result1);
            xil_printf("FFT Result 2 : %x\r\n", FFT_Result2);
            xil_printf("FFT Result 3 : %x\r\n", FFT_Result3);
            xil_printf("FFT Result 4 : %x\r\n", FFT_Result4);
            xil_printf("FFT Result 5 : %x\r\n", FFT_Result5);
            xil_printf("FFT Result 6 : %x\r\n", FFT_Result6);
            xil_printf("FFT Result 7 : %x\r\n", FFT_Result7);
            xil_printf("FFT Result 8 : %x\r\n", FFT_Result8);
            xil_printf("FFT Result 9 : %x\r\n", FFT_Result9);
            xil_printf("FFT Result 10 : %x\r\n", FFT_Result10);
            xil_printf("FFT Result 11 : %x\r\n", FFT_Result11);
            xil_printf("FFT Result 12 : %x\r\n", FFT_Result12);
            xil_printf("FFT Result 13 : %x\r\n", FFT_Result13);
            xil_printf("FFT Result 14 : %x\r\n", FFT_Result14);
            xil_printf("FFT Result 15 : %x\r\n", FFT_Result15);
            xil_printf("===================================\r\n");
        }
        break;
    }
}
