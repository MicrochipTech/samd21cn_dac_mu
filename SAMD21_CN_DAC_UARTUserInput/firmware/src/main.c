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
#include "definitions.h"                // SYS function prototypes

#define RX_BUFFER_SIZE 4
char rxData = 0;
char rxBuffer[RX_BUFFER_SIZE] = {};

uint8_t headerMessage[]="eMU 32-bit DAC Demo\r\n"\
                "----------------------\r\n"\
                "APPLICATION:\r\n"\
                "   Resolution: 10-bit\r\n"\
                "   Right-Adjusted Data\r\n"\
                "   Vref: Vdd\r\n"\
                "   Waveform: DC Signal\r\n"\
                "   Frequency: N/A\r\n"\
                "   Usage: Provide a DAC input integer\r\n"\
                "          value [0:1023) and press Return\r\n"\
                "----------------------\r\n";
uint8_t errorMessage[] = "Input Error: Possibly out of bounds.\r\n"\
                "Please enter an integer between 0 and 1023.\r\n"\
                "Setting default input to zero\r\n"\
                "0";

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    uint32_t dacInput = 0;  // Valid input to DAC Module
    uint8_t rxCounter = 0;  // User input value length counter
    uint8_t rxClr = 0;      // Reset rx buffer
    double dacOutput = 0.0; // Calculated ideal DAC Module output for reference
    char operMessage[100];  

    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    SERCOM5_USART_Write( &headerMessage, sizeof(headerMessage) );

    while ( true )
    {
        if(SERCOM5_USART_ReceiverIsReady() == true){
            if(SERCOM5_USART_ErrorGet() == USART_ERROR_NONE){
                SERCOM5_USART_Read(&rxData, 1); // Get value
                if((rxData == '\n') || (rxData == '\r')){
                    sscanf(rxBuffer, "%ld", &dacInput);
                    /* Clear buffer to prepare for next input */
                    for(rxClr = 0; rxClr <RX_BUFFER_SIZE; rxClr++){
                        rxBuffer[rxClr] = '\0';
                    }
                    rxCounter = 0;
                    /* Error checking for invalid user input */
                    if(dacInput > 0x3ff){
                        SERCOM5_USART_Write( &errorMessage, sizeof(errorMessage) );
                        dacInput = 0;
                    }
                    /* Calculate expected DAC output value */
                    dacOutput = (3.3*dacInput);
                    dacOutput = dacOutput/1023;
                    
                    sprintf(operMessage, "\t Vout = %2.2f\r\n", dacOutput);
                    SERCOM5_USART_Write( &operMessage, sizeof(operMessage) );
                    
                    DAC_DataWrite(dacInput);
                }
                else{
                    rxBuffer[rxCounter++] = rxData; // Keep receiving user inputs
                }
            }
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

