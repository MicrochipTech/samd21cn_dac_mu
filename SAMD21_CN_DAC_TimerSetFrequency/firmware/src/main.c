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
#include <string.h>
#include "definitions.h"
#include "interrupts.h"                // SYS function prototypes

uint8_t header[]="eMU 32-bit DAC Demo\r\n"\
                "----------------------\r\n"\
                "APPLICATION:\r\n"\
                "   Resolution: 10-bit\r\n"\
                "   Right-Adjusted Data\r\n"\
                "   Vref: Vdd\r\n"\
                "   Waveform: Sawtooth Waveform\r\n"\
                "   Frequency: Variable\r\n"\
                " Modify Timer 3 settings to vary the frequency\r\n"\
                "----------------------\r\n";

volatile bool convert;

void TC3_Callback_InterruptHandler(TC_TIMER_STATUS status, uintptr_t context)
{
    convert = true;
}
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    uint16_t dacInput = 0;
    
    /* Uncomment the stats variable declaration if the Display function below will be used */
    // char stats[40];
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    /* Initialize the callback function for Timer 3 Interrupt */
    TC3_TimerCallbackRegister( TC3_Callback_InterruptHandler, (uintptr_t)NULL );
    /* Display the Application information on the Console */
    SERCOM5_USART_Write( &header, sizeof(header) );
    convert = false;    // Initial state - no conversion
    /* Start Timer 3 */
    TC3_TimerStart();
    
    while ( true )
    {
        /* Check if Timer 3 has expired */
        if (convert == true){
            
            /* Uncomment the next 2 lines to
             * display the input value.
             * This will allow the user to counter check
             * the conversion result from the displayed
             * Digital input vs. the monitored output.
             * This will affect the frequency set by Timer 3. 
             * Make sure to declare stats variable above. */
            
            // sprintf(stats, "%d    \r", dacInput);
            // SERCOM5_USART_Write( &stats, sizeof(stats) );
            
            /* Initiate a conversion sequence */
            DAC_DataWrite(dacInput);
            /* Check for upper bound value */
            if (++dacInput == 0x3FF){
                dacInput=0;
            }
            /* Return to waiting state */
            convert = false;
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}
/*******************************************************************************
 End of File
*/

