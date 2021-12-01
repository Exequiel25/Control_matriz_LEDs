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
static const char *ng0 = "//vmware-host/Shared Folders/Codigos/ProyectoTD1/Proceso_data/control_matriz.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3328961526_3212880686_p_0(char *t0)
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
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    int t18;
    int t19;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 4276);
    t5 = (t0 + 2244);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 4164U);
    t5 = (t0 + 4284);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB16;

LAB18:
LAB17:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t16 = *((int *)t2);
    t1 = (t0 + 1144U);
    t5 = *((char **)t1);
    t18 = *((int *)t5);
    t3 = (t16 == t18);
    if (t3 != 0)
        goto LAB19;

LAB21:
LAB20:    t1 = (t0 + 2092);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4224);
    t6 = (t0 + 2136);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 4228);
    t5 = (t0 + 2172);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4232);
    t5 = (t0 + 2208);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 960U);
    t5 = *((char **)t1);
    t1 = (t0 + 2136);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 4164U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t2, t1, 1);
    t6 = (t0 + 2172);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t5, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 4164U);
    t5 = (t0 + 1052U);
    t6 = *((char **)t5);
    t5 = (t0 + 4180U);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 4164U);
    t5 = (t0 + 1052U);
    t6 = *((char **)t5);
    t5 = (t0 + 4180U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t6, t5, 1);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t7, t11);
    if (t3 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 4164U);
    t5 = (t0 + 1052U);
    t6 = *((char **)t5);
    t5 = (t0 + 4180U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t6, t5, 2);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t7, t11);
    if (t3 != 0)
        goto LAB12;

LAB13:    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t1 = (t0 + 4164U);
    t5 = (t0 + 1052U);
    t6 = *((char **)t5);
    t5 = (t0 + 4180U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t6, t5, 3);
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t7, t11);
    if (t3 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 4268);
    t5 = (t0 + 2244);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t5);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(67, ng0);
    t7 = (t0 + 4236);
    t9 = (t0 + 2244);
    t10 = (t9 + 32U);
    t12 = *((char **)t10);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t7, 8U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB8;

LAB10:    xsi_set_current_line(69, ng0);
    t8 = (t0 + 4244);
    t10 = (t0 + 2244);
    t12 = (t10 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB8;

LAB12:    xsi_set_current_line(71, ng0);
    t8 = (t0 + 4252);
    t10 = (t0 + 2244);
    t12 = (t10 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB8;

LAB14:    xsi_set_current_line(73, ng0);
    t8 = (t0 + 4260);
    t10 = (t0 + 2244);
    t12 = (t10 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t8, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB8;

LAB16:    xsi_set_current_line(85, ng0);
    t8 = (t0 + 1236U);
    t9 = *((char **)t8);
    t18 = *((int *)t9);
    t19 = (t18 + 1);
    t8 = (t0 + 2280);
    t10 = (t8 + 32U);
    t12 = *((char **)t10);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((int *)t14) = t19;
    xsi_driver_first_trans_fast(t8);
    goto LAB17;

LAB19:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 1052U);
    t6 = *((char **)t1);
    t1 = (t0 + 4180U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t11, t6, t1, 1);
    t8 = (t0 + 2208);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB20;

}


extern void work_a_3328961526_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3328961526_3212880686_p_0};
	xsi_register_didat("work_a_3328961526_3212880686", "isim/control_matriz_tb_isim_beh.exe.sim/work/a_3328961526_3212880686.didat");
	xsi_register_executes(pe);
}
