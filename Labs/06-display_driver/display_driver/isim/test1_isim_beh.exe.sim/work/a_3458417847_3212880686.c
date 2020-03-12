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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/vyma/Digital-electronic-1/Labs/06-display_driver/display_driver/driver_7seg.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3458417847_3212880686_p_0(char *t0)
{
    char t13[16];
    char t20[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned int t21;

LAB0:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(75, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(77, ng0);
    t3 = (t0 + 8341);
    t8 = (t0 + 4768);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2952U);
    t4 = *((char **)t1);
    t1 = (t0 + 8288U);
    t7 = (t0 + 8345);
    t9 = (t13 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 1;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t14 = (1 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t15;
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t1, t7, t13);
    if (t6 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 8288U);
    t4 = (t0 + 8349);
    t8 = (t20 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 7;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t14 = (7 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t15;
    t9 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t13, t3, t1, t4, t20);
    t10 = (t13 + 12U);
    t15 = *((unsigned int *)t10);
    t21 = (1U * t15);
    t2 = (2U != t21);
    if (t2 == 1)
        goto LAB13;

LAB14:    t11 = (t0 + 4832);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 2U);
    xsi_driver_first_trans_fast(t11);

LAB11:    goto LAB6;

LAB10:    xsi_set_current_line(81, ng0);
    t10 = (t0 + 8347);
    t12 = (t0 + 4832);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 2U);
    xsi_driver_first_trans_fast(t12);
    goto LAB11;

LAB13:    xsi_size_not_matching(2U, t21, 0);
    goto LAB14;

}

static void work_a_3458417847_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;

LAB0:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8357);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 8359);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 8361);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4896);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t4 = (3 - 3);
    t17 = (t4 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t20 = *((unsigned char *)t1);
    t3 = (t0 + 4960);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t20;
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 4688);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(98, ng0);
    t11 = (t0 + 1352U);
    t12 = *((char **)t11);
    t11 = (t0 + 4896);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t4 = (0 - 3);
    t17 = (t4 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t20 = *((unsigned char *)t1);
    t3 = (t0 + 4960);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t20;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB4:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4896);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t4 = (1 - 3);
    t17 = (t4 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t20 = *((unsigned char *)t1);
    t3 = (t0 + 4960);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t20;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 4896);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t4 = (2 - 3);
    t17 = (t4 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t20 = *((unsigned char *)t1);
    t3 = (t0 + 4960);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t20;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB10:;
}


extern void work_a_3458417847_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3458417847_3212880686_p_0,(void *)work_a_3458417847_3212880686_p_1};
	xsi_register_didat("work_a_3458417847_3212880686", "isim/test1_isim_beh.exe.sim/work/a_3458417847_3212880686.didat");
	xsi_register_executes(pe);
}
