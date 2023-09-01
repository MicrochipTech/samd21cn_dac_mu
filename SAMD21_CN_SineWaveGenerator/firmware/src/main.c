/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

#define NUM_OF_SAMPLES 100
#define BUFFER_TX_BTCTRL (DMAC_BTCTRL_STEPSIZE_X2 | DMAC_BTCTRL_SRCINC_Msk | DMAC_BTCTRL_BEATSIZE_HWORD | \
                        DMAC_BTCTRL_BLOCKACT_INT | DMAC_BTCTRL_VALID_Msk)

const uint16_t sine_wave[NUM_OF_SAMPLES] = {
    0x200,0x220,0x241,0x261,0x281,0x2A0,0x2BE,0x2DC,0x2F9,0x315,
    0x330,0x349,0x361,0x378,0x38D,0x3A1,0x3B3,0x3C3,0x3D2,0x3DE,
    0x3E9,0x3F2,0x3F8,0x3FD,0x3FF,0x3FF,0x3FE,0x3FB,0x3F5,0x3ED,
    0x3E4,0x3D8,0x3CB,0x3BB,0x3AA,0x397,0x383,0x36D,0x355,0x33C,
    0x322,0x307,0x2EB,0x2CD,0x2AF,0x290,0x271,0x251,0x231,0x210,
    0x1F0,0x1CF,0x1AF,0x18F,0x170,0x151,0x133,0x115,0x0F9,0x0DE,
    0x0C4,0x0AB,0x093,0x07D,0x069,0x056,0x045,0x035,0x028,0x01C,
    0x013,0x00B,0x005,0x002,0x000,0x001,0x003,0x008,0x00E,0x017,
    0x022,0x02E,0x03D,0x04D,0x05F,0x073,0x088,0x09F,0x0B7,0x0D0,
    0x0EB,0x107,0x124,0x142,0x160,0x17F,0x19F,0x1BF,0x1E0,0x1E7
};


__attribute__((__aligned__(16))) static dmac_descriptor_registers_t pTxLinkedListDesc[1];

void InitializeTxLinkedListDescriptor(void){
    pTxLinkedListDesc[0].DMAC_BTCTRL = (uint16_t) BUFFER_TX_BTCTRL;
    pTxLinkedListDesc[0].DMAC_BTCNT = NUM_OF_SAMPLES;
    pTxLinkedListDesc[0].DMAC_DESCADDR = (uint32_t)&pTxLinkedListDesc[0];
    pTxLinkedListDesc[0].DMAC_DSTADDR = (uint32_t)&DAC_REGS->DAC_DATABUF;
    pTxLinkedListDesc[0].DMAC_SRCADDR = (uint32_t)sine_wave+sizeof(sine_wave);
}
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );

    // Initialize DMA Linked List Descriptor
    InitializeTxLinkedListDescriptor();
    // Begin DMAC operation
    DMAC_ChannelLinkedListTransfer(DMAC_CHANNEL_0, &pTxLinkedListDesc[0]);
    // Start Timer 3
    TC3_TimerStart();
    
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

