/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xcb73ee62 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//vmware-host/Shared Folders/Codigos/Control_matriz_LEDs/Maqueta_ROM/control_matriz.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3328961526_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    int t11;
    int t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2892);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2960);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((int *)t8) = 1000000;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2996);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1144U);
    t6 = *((char **)t2);
    t11 = *((int *)t6);
    t12 = (t11 - 1);
    t2 = (t0 + 2960);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t13 = (t8 + 40U);
    t14 = *((char **)t13);
    *((int *)t14) = t12;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t11 = *((int *)t2);
    t3 = (t11 == 0);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

LAB10:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1420U);
    t5 = *((char **)t1);
    t4 = *((unsigned char *)t5);
    t9 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t1 = (t0 + 2996);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t13 = *((char **)t8);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2960);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((int *)t7) = 1000000;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

}

static void work_a_3328961526_3212880686_p_1(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    int t22;

LAB0:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1420U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:
LAB3:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 6040U);
    t5 = (t0 + 6297);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (3 - 0);
    t14 = (t12 * 1);
    t14 = (t14 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t14;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t12 = *((int *)t2);
    t1 = (t0 + 1236U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t3 = (t12 == t13);
    if (t3 != 0)
        goto LAB10;

LAB12:
LAB11:    t1 = (t0 + 2900);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 6289);
    t6 = (t0 + 3032);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 6293);
    t5 = (t0 + 3068);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 960U);
    t6 = *((char **)t1);
    t1 = (t0 + 6040U);
    t7 = (t0 + 1052U);
    t8 = *((char **)t7);
    t7 = (t0 + 6056U);
    t9 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t6, t1, t8, t7);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t9, t11);
    t13 = (t12 - 15);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t12);
    t15 = (8U * t14);
    t16 = (0 + t15);
    t10 = (t5 + t16);
    t17 = (t0 + 3104);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t10, 8U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 6040U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t2, t1, 1);
    t6 = (t0 + 3032);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB7:    xsi_set_current_line(100, ng0);
    t8 = (t0 + 1328U);
    t9 = *((char **)t8);
    t13 = *((int *)t9);
    t22 = (t13 + 1);
    t8 = (t0 + 3140);
    t10 = (t8 + 32U);
    t17 = *((char **)t10);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    *((int *)t19) = t22;
    xsi_driver_first_trans_fast(t8);
    goto LAB8;

LAB10:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 1052U);
    t6 = *((char **)t1);
    t1 = (t0 + 6056U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t6, t1, 1);
    t8 = (t0 + 3068);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t17 = (t10 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB11;

}

static void work_a_3328961526_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(109, ng0);

LAB3:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 3176);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2908);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3328961526_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(110, ng0);

LAB3:    t1 = (t0 + 1604U);
    t2 = *((char **)t1);
    t1 = (t0 + 3212);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2916);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3328961526_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3328961526_3212880686_p_0,(void *)work_a_3328961526_3212880686_p_1,(void *)work_a_3328961526_3212880686_p_2,(void *)work_a_3328961526_3212880686_p_3};
	xsi_register_didat("work_a_3328961526_3212880686", "isim/control_matriz_tb_isim_beh.exe.sim/work/a_3328961526_3212880686.didat");
	xsi_register_executes(pe);
}
