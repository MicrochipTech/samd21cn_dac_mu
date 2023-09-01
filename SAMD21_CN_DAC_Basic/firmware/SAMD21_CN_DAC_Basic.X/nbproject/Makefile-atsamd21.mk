#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-atsamd21.mk)" "nbproject/Makefile-local-atsamd21.mk"
include nbproject/Makefile-local-atsamd21.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=atsamd21
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/SAMD21_CN_DAC_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/SAMD21_CN_DAC_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/atsamd21/peripheral/clock/plib_clock.c ../src/config/atsamd21/peripheral/dac/plib_dac.c ../src/config/atsamd21/peripheral/evsys/plib_evsys.c ../src/config/atsamd21/peripheral/nvic/plib_nvic.c ../src/config/atsamd21/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/atsamd21/peripheral/port/plib_port.c ../src/config/atsamd21/peripheral/systick/plib_systick.c ../src/config/atsamd21/stdio/xc32_monitor.c ../src/config/atsamd21/initialization.c ../src/config/atsamd21/interrupts.c ../src/config/atsamd21/startup_xc32.c ../src/config/atsamd21/libc_syscalls.c ../src/config/atsamd21/exceptions.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/2037893792/plib_clock.o ${OBJECTDIR}/_ext/37875352/plib_dac.o ${OBJECTDIR}/_ext/2040043278/plib_evsys.o ${OBJECTDIR}/_ext/1174454288/plib_nvic.o ${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o ${OBJECTDIR}/_ext/1174507439/plib_port.o ${OBJECTDIR}/_ext/1602384892/plib_systick.o ${OBJECTDIR}/_ext/1948039876/xc32_monitor.o ${OBJECTDIR}/_ext/1822602890/initialization.o ${OBJECTDIR}/_ext/1822602890/interrupts.o ${OBJECTDIR}/_ext/1822602890/startup_xc32.o ${OBJECTDIR}/_ext/1822602890/libc_syscalls.o ${OBJECTDIR}/_ext/1822602890/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/2037893792/plib_clock.o.d ${OBJECTDIR}/_ext/37875352/plib_dac.o.d ${OBJECTDIR}/_ext/2040043278/plib_evsys.o.d ${OBJECTDIR}/_ext/1174454288/plib_nvic.o.d ${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1174507439/plib_port.o.d ${OBJECTDIR}/_ext/1602384892/plib_systick.o.d ${OBJECTDIR}/_ext/1948039876/xc32_monitor.o.d ${OBJECTDIR}/_ext/1822602890/initialization.o.d ${OBJECTDIR}/_ext/1822602890/interrupts.o.d ${OBJECTDIR}/_ext/1822602890/startup_xc32.o.d ${OBJECTDIR}/_ext/1822602890/libc_syscalls.o.d ${OBJECTDIR}/_ext/1822602890/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/2037893792/plib_clock.o ${OBJECTDIR}/_ext/37875352/plib_dac.o ${OBJECTDIR}/_ext/2040043278/plib_evsys.o ${OBJECTDIR}/_ext/1174454288/plib_nvic.o ${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o ${OBJECTDIR}/_ext/1174507439/plib_port.o ${OBJECTDIR}/_ext/1602384892/plib_systick.o ${OBJECTDIR}/_ext/1948039876/xc32_monitor.o ${OBJECTDIR}/_ext/1822602890/initialization.o ${OBJECTDIR}/_ext/1822602890/interrupts.o ${OBJECTDIR}/_ext/1822602890/startup_xc32.o ${OBJECTDIR}/_ext/1822602890/libc_syscalls.o ${OBJECTDIR}/_ext/1822602890/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/atsamd21/peripheral/clock/plib_clock.c ../src/config/atsamd21/peripheral/dac/plib_dac.c ../src/config/atsamd21/peripheral/evsys/plib_evsys.c ../src/config/atsamd21/peripheral/nvic/plib_nvic.c ../src/config/atsamd21/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/atsamd21/peripheral/port/plib_port.c ../src/config/atsamd21/peripheral/systick/plib_systick.c ../src/config/atsamd21/stdio/xc32_monitor.c ../src/config/atsamd21/initialization.c ../src/config/atsamd21/interrupts.c ../src/config/atsamd21/startup_xc32.c ../src/config/atsamd21/libc_syscalls.c ../src/config/atsamd21/exceptions.c ../src/main.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-atsamd21.mk ${DISTDIR}/SAMD21_CN_DAC_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21G17D
MP_LINKER_FILE_OPTION=,--script="..\src\config\atsamd21\ATSAMD21G17D.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2037893792/plib_clock.o: ../src/config/atsamd21/peripheral/clock/plib_clock.c  .generated_files/flags/atsamd21/7a7fc3f56bf198716642212cd17103e204c79834 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/2037893792" 
	@${RM} ${OBJECTDIR}/_ext/2037893792/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037893792/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2037893792/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2037893792/plib_clock.o ../src/config/atsamd21/peripheral/clock/plib_clock.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/37875352/plib_dac.o: ../src/config/atsamd21/peripheral/dac/plib_dac.c  .generated_files/flags/atsamd21/de12872c714cc1ec419237569f018e218554ee38 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/37875352" 
	@${RM} ${OBJECTDIR}/_ext/37875352/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/37875352/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/37875352/plib_dac.o.d" -o ${OBJECTDIR}/_ext/37875352/plib_dac.o ../src/config/atsamd21/peripheral/dac/plib_dac.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2040043278/plib_evsys.o: ../src/config/atsamd21/peripheral/evsys/plib_evsys.c  .generated_files/flags/atsamd21/647a228982606c7f8e40d8e0faea91bbf1e86a0c .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/2040043278" 
	@${RM} ${OBJECTDIR}/_ext/2040043278/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2040043278/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2040043278/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2040043278/plib_evsys.o ../src/config/atsamd21/peripheral/evsys/plib_evsys.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1174454288/plib_nvic.o: ../src/config/atsamd21/peripheral/nvic/plib_nvic.c  .generated_files/flags/atsamd21/8bc0060ddc6915fb4613868f6f5518f98e62fb4d .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1174454288" 
	@${RM} ${OBJECTDIR}/_ext/1174454288/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174454288/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174454288/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1174454288/plib_nvic.o ../src/config/atsamd21/peripheral/nvic/plib_nvic.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o: ../src/config/atsamd21/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/atsamd21/b8c77d29a65bbd7fb8478b325acc0ae60b667319 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1367909794" 
	@${RM} ${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o ../src/config/atsamd21/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1174507439/plib_port.o: ../src/config/atsamd21/peripheral/port/plib_port.c  .generated_files/flags/atsamd21/34070d825b858b1ad6aba27e42c6da23fcbc8da6 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1174507439" 
	@${RM} ${OBJECTDIR}/_ext/1174507439/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174507439/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174507439/plib_port.o.d" -o ${OBJECTDIR}/_ext/1174507439/plib_port.o ../src/config/atsamd21/peripheral/port/plib_port.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602384892/plib_systick.o: ../src/config/atsamd21/peripheral/systick/plib_systick.c  .generated_files/flags/atsamd21/a23f6d7bca611d20bdef1b9b879df5c6098b82db .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1602384892" 
	@${RM} ${OBJECTDIR}/_ext/1602384892/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602384892/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602384892/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1602384892/plib_systick.o ../src/config/atsamd21/peripheral/systick/plib_systick.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1948039876/xc32_monitor.o: ../src/config/atsamd21/stdio/xc32_monitor.c  .generated_files/flags/atsamd21/268b49e1b42c7cac745d58d1d894b5f181725d6 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1948039876" 
	@${RM} ${OBJECTDIR}/_ext/1948039876/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1948039876/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1948039876/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1948039876/xc32_monitor.o ../src/config/atsamd21/stdio/xc32_monitor.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1822602890/initialization.o: ../src/config/atsamd21/initialization.c  .generated_files/flags/atsamd21/f69e743c360a364b7ae49fa65b03a5c6261f8f2d .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1822602890" 
	@${RM} ${OBJECTDIR}/_ext/1822602890/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1822602890/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1822602890/initialization.o.d" -o ${OBJECTDIR}/_ext/1822602890/initialization.o ../src/config/atsamd21/initialization.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1822602890/interrupts.o: ../src/config/atsamd21/interrupts.c  .generated_files/flags/atsamd21/3dd2a003e6c1f7ddb098ca7febaff9ad12701534 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1822602890" 
	@${RM} ${OBJECTDIR}/_ext/1822602890/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1822602890/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1822602890/interrupts.o.d" -o ${OBJECTDIR}/_ext/1822602890/interrupts.o ../src/config/atsamd21/interrupts.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1822602890/startup_xc32.o: ../src/config/atsamd21/startup_xc32.c  .generated_files/flags/atsamd21/7ff69aa63ad56874dd5990f0cea5d8cd27382669 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1822602890" 
	@${RM} ${OBJECTDIR}/_ext/1822602890/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1822602890/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1822602890/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1822602890/startup_xc32.o ../src/config/atsamd21/startup_xc32.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1822602890/libc_syscalls.o: ../src/config/atsamd21/libc_syscalls.c  .generated_files/flags/atsamd21/52a865e43f9f2cad7f9b276b19b0603390198e83 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1822602890" 
	@${RM} ${OBJECTDIR}/_ext/1822602890/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1822602890/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1822602890/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1822602890/libc_syscalls.o ../src/config/atsamd21/libc_syscalls.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1822602890/exceptions.o: ../src/config/atsamd21/exceptions.c  .generated_files/flags/atsamd21/d069a00686a015f4092578d72faf0bf54d76f60d .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1822602890" 
	@${RM} ${OBJECTDIR}/_ext/1822602890/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1822602890/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1822602890/exceptions.o.d" -o ${OBJECTDIR}/_ext/1822602890/exceptions.o ../src/config/atsamd21/exceptions.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/atsamd21/1d14d3b9d10f703452a525b61a89726d9d8667a4 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/2037893792/plib_clock.o: ../src/config/atsamd21/peripheral/clock/plib_clock.c  .generated_files/flags/atsamd21/ce5372bff59d5d62990b60c419db8156df3cacb0 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/2037893792" 
	@${RM} ${OBJECTDIR}/_ext/2037893792/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/2037893792/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2037893792/plib_clock.o.d" -o ${OBJECTDIR}/_ext/2037893792/plib_clock.o ../src/config/atsamd21/peripheral/clock/plib_clock.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/37875352/plib_dac.o: ../src/config/atsamd21/peripheral/dac/plib_dac.c  .generated_files/flags/atsamd21/576865db06a450a219d0a67d9dd0502ed0d35ae5 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/37875352" 
	@${RM} ${OBJECTDIR}/_ext/37875352/plib_dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/37875352/plib_dac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/37875352/plib_dac.o.d" -o ${OBJECTDIR}/_ext/37875352/plib_dac.o ../src/config/atsamd21/peripheral/dac/plib_dac.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2040043278/plib_evsys.o: ../src/config/atsamd21/peripheral/evsys/plib_evsys.c  .generated_files/flags/atsamd21/27a49294765e3c0a87abc4f157ab3858ab702f03 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/2040043278" 
	@${RM} ${OBJECTDIR}/_ext/2040043278/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2040043278/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2040043278/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/2040043278/plib_evsys.o ../src/config/atsamd21/peripheral/evsys/plib_evsys.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1174454288/plib_nvic.o: ../src/config/atsamd21/peripheral/nvic/plib_nvic.c  .generated_files/flags/atsamd21/30b9de26ef5353a32fdd8aacc5d75db84ac58125 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1174454288" 
	@${RM} ${OBJECTDIR}/_ext/1174454288/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174454288/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174454288/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1174454288/plib_nvic.o ../src/config/atsamd21/peripheral/nvic/plib_nvic.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o: ../src/config/atsamd21/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/atsamd21/4f7129057e73646880c5933208d7b17b20e0b822 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1367909794" 
	@${RM} ${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1367909794/plib_nvmctrl.o ../src/config/atsamd21/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1174507439/plib_port.o: ../src/config/atsamd21/peripheral/port/plib_port.c  .generated_files/flags/atsamd21/91cc653c2bf979edf302e635484e653fdb2ef170 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1174507439" 
	@${RM} ${OBJECTDIR}/_ext/1174507439/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1174507439/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1174507439/plib_port.o.d" -o ${OBJECTDIR}/_ext/1174507439/plib_port.o ../src/config/atsamd21/peripheral/port/plib_port.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1602384892/plib_systick.o: ../src/config/atsamd21/peripheral/systick/plib_systick.c  .generated_files/flags/atsamd21/2487a5f170f9fac627182e7155881fc1302204f9 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1602384892" 
	@${RM} ${OBJECTDIR}/_ext/1602384892/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1602384892/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1602384892/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1602384892/plib_systick.o ../src/config/atsamd21/peripheral/systick/plib_systick.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1948039876/xc32_monitor.o: ../src/config/atsamd21/stdio/xc32_monitor.c  .generated_files/flags/atsamd21/10d7b8e7545783ed4c93c043600445e0b3540836 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1948039876" 
	@${RM} ${OBJECTDIR}/_ext/1948039876/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1948039876/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1948039876/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1948039876/xc32_monitor.o ../src/config/atsamd21/stdio/xc32_monitor.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1822602890/initialization.o: ../src/config/atsamd21/initialization.c  .generated_files/flags/atsamd21/1b3f75226188b0d3fdc4a9f3f4daaef414ebe910 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1822602890" 
	@${RM} ${OBJECTDIR}/_ext/1822602890/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1822602890/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1822602890/initialization.o.d" -o ${OBJECTDIR}/_ext/1822602890/initialization.o ../src/config/atsamd21/initialization.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1822602890/interrupts.o: ../src/config/atsamd21/interrupts.c  .generated_files/flags/atsamd21/609774b82ec25f70b4e30ca968a667fa393e081d .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1822602890" 
	@${RM} ${OBJECTDIR}/_ext/1822602890/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1822602890/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1822602890/interrupts.o.d" -o ${OBJECTDIR}/_ext/1822602890/interrupts.o ../src/config/atsamd21/interrupts.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1822602890/startup_xc32.o: ../src/config/atsamd21/startup_xc32.c  .generated_files/flags/atsamd21/8804341e3d312f5457a59be4a641363cb77608b1 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1822602890" 
	@${RM} ${OBJECTDIR}/_ext/1822602890/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1822602890/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1822602890/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1822602890/startup_xc32.o ../src/config/atsamd21/startup_xc32.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1822602890/libc_syscalls.o: ../src/config/atsamd21/libc_syscalls.c  .generated_files/flags/atsamd21/550ac67ce561a3d464b6cf995dc0abfacc06cc0b .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1822602890" 
	@${RM} ${OBJECTDIR}/_ext/1822602890/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1822602890/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1822602890/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1822602890/libc_syscalls.o ../src/config/atsamd21/libc_syscalls.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1822602890/exceptions.o: ../src/config/atsamd21/exceptions.c  .generated_files/flags/atsamd21/7910247bec4d657e7e5bcee6d188081ae9d0bb08 .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1822602890" 
	@${RM} ${OBJECTDIR}/_ext/1822602890/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1822602890/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1822602890/exceptions.o.d" -o ${OBJECTDIR}/_ext/1822602890/exceptions.o ../src/config/atsamd21/exceptions.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/atsamd21/a3e7d05a20b03ab9fbb6d2cb73eedbad889f570a .generated_files/flags/atsamd21/cadbb6a40c97381acd46927d7560f60c5d497ce0
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/atsamd21" -I"../src/packs/ATSAMD21G17D_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21d" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/SAMD21_CN_DAC_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/atsamd21/ATSAMD21G17D.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/SAMD21_CN_DAC_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21d"
	
else
${DISTDIR}/SAMD21_CN_DAC_Basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/atsamd21/ATSAMD21G17D.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/SAMD21_CN_DAC_Basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_atsamd21=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21d"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/SAMD21_CN_DAC_Basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
