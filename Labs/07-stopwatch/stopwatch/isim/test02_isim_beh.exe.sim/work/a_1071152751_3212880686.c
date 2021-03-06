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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/vyma9/OneDrive/Plocha/VUT/DE1/Digital-electronic-1/Labs/07-stopwatch/stopwatch/decimalCounter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1071152751_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3680);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 3776);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)2);
    if (t8 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(54, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t4 = t1;
    memset(t4, (unsigned char)2, 4U);
    t5 = (t0 + 3840);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB6;

LAB8:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 6476U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t4, t1, 1);
    t6 = (t11 + 12U);
    t12 = *((unsigned int *)t6);
    t13 = (1U * t12);
    t14 = (4U != t13);
    if (t14 == 1)
        goto LAB10;

LAB11:    t7 = (t0 + 3840);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t1 = (t0 + 6476U);
    t2 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t3, t1, 9);
    if (t2 != 0)
        goto LAB12;

LAB14:
LAB13:    goto LAB6;

LAB10:    xsi_size_not_matching(4U, t13, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(58, ng0);
    t4 = xsi_get_transient_memory(4U);
    memset(t4, 0, 4U);
    t5 = t4;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 3840);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3776);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB13;

}

static void work_a_1071152751_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(65, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 3904);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3696);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1071152751_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1071152751_3212880686_p_0,(void *)work_a_1071152751_3212880686_p_1};
	xsi_register_didat("work_a_1071152751_3212880686", "isim/test02_isim_beh.exe.sim/work/a_1071152751_3212880686.didat");
	xsi_register_executes(pe);
}
