//#include <stdio.h>
//#include "platform.h"
//#include "xil_printf.h"
//#include "xil_io.h"
//#include "xparameters.h"
//#include "xuartps_hw.h"
//
//#ifndef ACCEL_BASEADDR
//#define ACCEL_BASEADDR XPAR_TOP_SYSTEM_LEVEL_0_BASEADDR
//#endif
//
//// AXI Register Offsets
//#define REG0_CTRL_OFFSET    0x00  // Multiplier Y
//#define REG1_DATA_OFFSET    0x04  // Input Data X
//#define REG2_STATUS_OFFSET  0x08  // FSM Status (0=IDLE, 1=PROC, 2=DONE)
//#define REG3_RESULT_OFFSET  0x0C  // Computed Result / Running Accumulator Total
//
//// Read multi-digit integers from UART terminal
//u32 get_int_from_uart() {
//    u32 num = 0;
//    while (1) {
//        if (XUartPs_IsReceiveData(STDIN_BASEADDRESS)) {
//            u8 c = XUartPs_ReadReg(STDIN_BASEADDRESS, XUARTPS_FIFO_OFFSET);
//
//            if (c == '\r' || c == '\n') {
//                xil_printf("\r\n");
//                break;
//            }
//            if (c >= '0' && c <= '9') {
//                xil_printf("%c", c);
//                num = num * 10 + (c - '0');
//            }
//        }
//    }
//    return num;
//}
//
//// Execute hardware MAC calculation
//void run_mac_calculation(u32 input_x, u32 current_scalar_y) {
//    u32 prev_total = Xil_In32(ACCEL_BASEADDR + REG3_RESULT_OFFSET);
//    u16 x_wrapped = (u16)(input_x & 0xFFFF);
//
//    if (input_x > 65535) {
//        xil_printf("\r\n[16-BIT WARNING] Input X (%u) exceeds hardware limit (65,535)!\r\n", input_x);
//        xil_printf("                Wrapped to 16 bits -> X_hw = %u\r\n", x_wrapped);
//    }
//
//    // Trigger PL
//    Xil_Out32(ACCEL_BASEADDR + REG1_DATA_OFFSET, input_x);
//
//    // Poll status register
//    u32 status = 0;
//    int timeout = 0;
//    const int MAX_TIMEOUT = 5000000;
//
//    do {
//        status = Xil_In32(ACCEL_BASEADDR + REG2_STATUS_OFFSET) & 0x03;
//        timeout++;
//        if (timeout > MAX_TIMEOUT) {
//            xil_printf("\r\n[FATAL ERROR] Hardware Timeout! Status = %d\r\n\r\n", status);
//            return;
//        }
//    } while (status != 2);
//
//    u32 new_total = Xil_In32(ACCEL_BASEADDR + REG3_RESULT_OFFSET);
//    xil_printf("[PL ACCUMULATOR] Previous (%u) + (%u * %u) = New Total: %u\r\n\r\n",
//               prev_total, x_wrapped, current_scalar_y, new_total);
//}
//
//void print_menu(u32 current_y) {
//    xil_printf("\r\n===================================================\r\n");
//    xil_printf("   PS-PL AXI Hardware MAC Accelerator Interface    \r\n");
//    xil_printf("===================================================\r\n");
//    xil_printf(" Current Scalar (Y) : %d\r\n", current_y);
//    xil_printf(" Hardware Limit     : 16-Bit Input X (0 to 65,535)\r\n");
//    xil_printf(" -------------------------------------------------\r\n");
//    xil_printf("  [M] Calculate Integer Input (X * Y)\r\n");
//    xil_printf("  [S] Change Scalar Multiplier (Y)\r\n");
//    xil_printf("  [H] Reprint Menu\r\n");
//    xil_printf("  [Q] Exit Application\r\n");
//    xil_printf("===================================================\r\n\r\n");
//}
//
//int main()
//{
//    init_platform();
//
//    xil_printf("\r\nEnter initial MAC Scalar Multiplier Y: ");
//    u32 scalar_y = get_int_from_uart();
//
//    Xil_Out32(ACCEL_BASEADDR + REG0_CTRL_OFFSET, scalar_y);
//    print_menu(scalar_y);
//
//    int running = 1;
//
//    while(running) {
//        if (XUartPs_IsReceiveData(STDIN_BASEADDRESS)) {
//            u8 key = XUartPs_ReadReg(STDIN_BASEADDRESS, XUARTPS_FIFO_OFFSET);
//
//            if (key == '\r' || key == '\n') continue;
//
//            switch (key) {
//                case 'M':
//                case 'm':
//                    xil_printf("\r\nEnter Integer X: ");
//                    u32 custom_x = get_int_from_uart();
//                    run_mac_calculation(custom_x, scalar_y);
//                    break;
//
//                case 'S':
//                case 's':
//                    xil_printf("\r\nEnter NEW Scalar Y: ");
//                    scalar_y = get_int_from_uart();
//                    Xil_Out32(ACCEL_BASEADDR + REG0_CTRL_OFFSET, scalar_y);
//                    xil_printf("[CONFIG] Updated Scalar Y = %d\r\n\r\n", scalar_y);
//                    break;
//
//                case 'H':
//                case 'h':
//                    print_menu(scalar_y);
//                    break;
//
//                case 'Q':
//                case 'q':
//                    xil_printf("\r\nExiting application. Goodbye!\r\n");
//                    running = 0;
//                    break;
//
//                default:
//                    xil_printf("[NOTICE] Invalid key '%c'. Press 'H' for options.\r\n", key);
//                    break;
//            }
//        }
//    }
//
//    cleanup_platform();
//    return 0;
//}





#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "xparameters.h"
#include "xuartps_hw.h"
#include "xtime_l.h"     // High-resolution hardware timer library

#ifndef ACCEL_BASEADDR
#define ACCEL_BASEADDR XPAR_TOP_SYSTEM_LEVEL_0_BASEADDR
#endif

// AXI Register Offsets
#define REG0_CTRL_OFFSET    0x00  // Multiplier Y
#define REG1_DATA_OFFSET    0x04  // Input Data X
#define REG2_STATUS_OFFSET  0x08  // FSM Status (0=IDLE, 1=PROC, 2=DONE)
#define REG3_RESULT_OFFSET  0x0C  // Computed Result / Running Accumulator Total

#define BENCHMARK_VECTOR_SIZE 1000

// Read multi-digit integers from UART terminal
u32 get_int_from_uart() {
    u32 num = 0;
    while (1) {
        if (XUartPs_IsReceiveData(STDIN_BASEADDRESS)) {
            u8 c = XUartPs_ReadReg(STDIN_BASEADDRESS, XUARTPS_FIFO_OFFSET);

            if (c == '\r' || c == '\n') {
                xil_printf("\r\n");
                break;
            }
            if (c >= '0' && c <= '9') {
                xil_printf("%c", c);
                num = num * 10 + (c - '0');
            }
        }
    }
    return num;
}

// Execute single-shot hardware MAC calculation
void run_mac_calculation(u32 input_x, u32 current_scalar_y) {
    u32 prev_total = Xil_In32(ACCEL_BASEADDR + REG3_RESULT_OFFSET);
    u16 x_wrapped = (u16)(input_x & 0xFFFF);

    if (input_x > 65535) {
        xil_printf("\r\n[16-BIT WARNING] Input X (%u) exceeds hardware limit (65,535)!\r\n", input_x);
        xil_printf("                Wrapped to 16 bits -> X_hw = %u\r\n", x_wrapped);
    }

    // Trigger PL
    Xil_Out32(ACCEL_BASEADDR + REG1_DATA_OFFSET, input_x);

    // Poll status register
    u32 status = 0;
    int timeout = 0;
    const int MAX_TIMEOUT = 5000000;

    do {
        status = Xil_In32(ACCEL_BASEADDR + REG2_STATUS_OFFSET) & 0x03;
        timeout++;
        if (timeout > MAX_TIMEOUT) {
            xil_printf("\r\n[FATAL ERROR] Hardware Timeout! Status = %d\r\n\r\n", status);
            return;
        }
    } while (status != 2);

    u32 new_total = Xil_In32(ACCEL_BASEADDR + REG3_RESULT_OFFSET);
    xil_printf("[PL ACCUMULATOR] Previous (%u) + (%u * %u) = New Total: %u\r\n\r\n",
               prev_total, x_wrapped, current_scalar_y, new_total);
}

// Automated Vector Dot-Product Benchmark (Software vs PL Hardware)
void run_vector_benchmark(u32 current_scalar_y) {
    static u16 test_vector[BENCHMARK_VECTOR_SIZE];
    XTime t_sw_start, t_sw_end;
    XTime t_hw_start, t_hw_end;

    xil_printf("\r\n===================================================\r\n");
    xil_printf("  STARTING AUTOMATED VECTOR BENCHMARK (N = %d)\r\n", BENCHMARK_VECTOR_SIZE);
    xil_printf("===================================================\r\n");

    // 1. Populate test vector with test data (0 to 49 pattern)
    for (int i = 0; i < BENCHMARK_VECTOR_SIZE; i++) {
        test_vector[i] = (u16)((i % 50) + 1);
    }

    // 2. SOFTWARE EXECUTION (ARM Cortex CPU)
    XTime_GetTime(&t_sw_start);
    u32 sw_sum = 0;
    for (int i = 0; i < BENCHMARK_VECTOR_SIZE; i++) {
        sw_sum += (u32)test_vector[i] * current_scalar_y;
    }
    XTime_GetTime(&t_sw_end);

    // 3. HARDWARE ACCELERATED EXECUTION (FPGA PL)
    u32 initial_hw_val = Xil_In32(ACCEL_BASEADDR + REG3_RESULT_OFFSET);

    XTime_GetTime(&t_hw_start);
    for (int i = 0; i < BENCHMARK_VECTOR_SIZE; i++) {
        // Trigger calculation
        Xil_Out32(ACCEL_BASEADDR + REG1_DATA_OFFSET, (u32)test_vector[i]);

        // Wait for FSM DONE state (status == 2)
        while ((Xil_In32(ACCEL_BASEADDR + REG2_STATUS_OFFSET) & 0x03) != 2);
    }
    XTime_GetTime(&t_hw_end);

    u32 final_hw_val = Xil_In32(ACCEL_BASEADDR + REG3_RESULT_OFFSET);
    u32 hw_sum_delta = final_hw_val - initial_hw_val; // Delta accumulated during run

    // 4. Calculate Execution Times (Microseconds & Nanoseconds)
    u64 sw_cycles = t_sw_end - t_sw_start;
    u64 hw_cycles = t_hw_end - t_hw_start;

    u64 sw_ns = (sw_cycles * 1000000000ULL) / COUNTS_PER_SECOND;
    u64 hw_ns = (hw_cycles * 1000000000ULL) / COUNTS_PER_SECOND;

    // 5. Output Results Report
    xil_printf(" Vector Size         : %d elements\r\n", BENCHMARK_VECTOR_SIZE);
    xil_printf(" Multiplier Scalar Y : %d\r\n", current_scalar_y);
    xil_printf(" -------------------------------------------------\r\n");
    xil_printf(" Software SW Total   : %u\r\n", sw_sum);
    xil_printf(" Hardware PL Delta   : %u\r\n", hw_sum_delta);

    if (sw_sum == hw_sum_delta) {
        xil_printf(" Data Verification   : [PASSED] Match 100%%\r\n");
    } else {
        xil_printf(" Data Verification   : [FAILED] Mismatch detected!\r\n");
    }
    xil_printf(" -------------------------------------------------\r\n");
    xil_printf(" Software Execution  : %u.%03u us (%u ns)\r\n",
               (u32)(sw_ns / 1000), (u32)(sw_ns % 1000), (u32)sw_ns);
    xil_printf(" Hardware Execution  : %u.%03u us (%u ns)\r\n",
               (u32)(hw_ns / 1000), (u32)(hw_ns % 1000), (u32)hw_ns);
    xil_printf("===================================================\r\n\r\n");
}

void print_menu(u32 current_y) {
    xil_printf("\r\n===================================================\r\n");
    xil_printf("   PS-PL AXI Hardware MAC Accelerator Interface    \r\n");
    xil_printf("===================================================\r\n");
    xil_printf(" Current Scalar (Y) : %d\r\n", current_y);
    xil_printf(" Hardware Limit     : 16-Bit Input X (0 to 65,535)\r\n");
    xil_printf(" -------------------------------------------------\r\n");
    xil_printf("  [M] Calculate Single Integer Input (X * Y)\r\n");
    xil_printf("  [V] Run Automated Vector Benchmark (N = 1000)\r\n");
    xil_printf("  [S] Change Scalar Multiplier (Y)\r\n");
    xil_printf("  [H] Reprint Menu\r\n");
    xil_printf("  [Q] Exit Application\r\n");
    xil_printf("===================================================\r\n\r\n");
}

int main()
{
    init_platform();

    xil_printf("\r\nEnter initial MAC Scalar Multiplier Y: ");
    u32 scalar_y = get_int_from_uart();

    Xil_Out32(ACCEL_BASEADDR + REG0_CTRL_OFFSET, scalar_y);
    print_menu(scalar_y);

    int running = 1;

    while(running) {
        if (XUartPs_IsReceiveData(STDIN_BASEADDRESS)) {
            u8 key = XUartPs_ReadReg(STDIN_BASEADDRESS, XUARTPS_FIFO_OFFSET);

            if (key == '\r' || key == '\n') continue;

            switch (key) {
                case 'M':
                case 'm':
                    xil_printf("\r\nEnter Integer X: ");
                    u32 custom_x = get_int_from_uart();
                    run_mac_calculation(custom_x, scalar_y);
                    break;

                case 'V':
                case 'v':
                    run_vector_benchmark(scalar_y);
                    break;

                case 'S':
                case 's':
                    xil_printf("\r\nEnter NEW Scalar Y: ");
                    scalar_y = get_int_from_uart();
                    Xil_Out32(ACCEL_BASEADDR + REG0_CTRL_OFFSET, scalar_y);
                    xil_printf("[CONFIG] Updated Scalar Y = %d\r\n\r\n", scalar_y);
                    break;

                case 'H':
                case 'h':
                    print_menu(scalar_y);
                    break;

                case 'Q':
                case 'q':
                    xil_printf("\r\nExiting application. Goodbye!\r\n");
                    running = 0;
                    break;

                default:
                    xil_printf("[NOTICE] Invalid key '%c'. Press 'H' for options.\r\n", key);
                    break;
            }
        }
    }

    cleanup_platform();
    return 0;
}
