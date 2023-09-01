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


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    //DAC Input variable : 0 to Vref
    uint16_t dacInput = 0;
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    // Start SYSTICK Timer
    SYSTICK_TimerStart();
    while ( true )
    {
        // Trigger Conversion
        DAC_DataWrite(dacInput);
        // Apply delay : 1 Hz Periodic signal --> 1/1023 ~ 970 usecs
        SYSTICK_DelayUs(970);
        // Check if 2^10 input maximum has been reached
        if(++dacInput == 0x3FF){
            dacInput = 0;
        }
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

