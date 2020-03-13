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
static const char *ng0 = "D:/Xilinx/projects/display_driver/top.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_3458417847_3212880686_p_0(char *t0)
{
    char t13[16];
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
    unsigned int t20;

LAB0:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4840);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(77, ng0);
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

LAB5:    xsi_set_current_line(78, ng0);
    t3 = (t0 + 7797);
    t8 = (t0 + 4936);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 2U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 3112U);
    t4 = *((char **)t1);
    t1 = (t0 + 7740U);
    t7 = (t0 + 7799);
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

LAB12:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t1 = (t0 + 7740U);
    t4 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t13, t3, t1, (unsigned char)3);
    t7 = (t13 + 12U);
    t15 = *((unsigned int *)t7);
    t20 = (1U * t15);
    t2 = (2U != t20);
    if (t2 == 1)
        goto LAB13;

LAB14:    t8 = (t0 + 4936);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 2U);
    xsi_driver_first_trans_fast(t8);

LAB11:    goto LAB6;

LAB10:    xsi_set_current_line(82, ng0);
    t10 = (t0 + 7801);
    t12 = (t0 + 4936);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 2U);
    xsi_driver_first_trans_fast(t12);
    goto LAB11;

LAB13:    xsi_size_not_matching(2U, t20, 0);
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
    unsigned char t21;

LAB0:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 7803);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 7805);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 7807);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 5000);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(115, ng0);
    t1 = (t0 + 7821);
    t3 = (t0 + 5064);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(116, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t4 = (3 - 3);
    t17 = (t4 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t20 = *((unsigned char *)t1);
    t21 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t20);
    t3 = (t0 + 5128);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t21;
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 4856);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(99, ng0);
    t11 = (t0 + 1352U);
    t12 = *((char **)t11);
    t11 = (t0 + 5000);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 7809);
    t3 = (t0 + 5064);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t4 = (0 - 3);
    t17 = (t4 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t20 = *((unsigned char *)t1);
    t21 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t20);
    t3 = (t0 + 5128);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t21;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB4:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5000);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(105, ng0);
    t1 = (t0 + 7813);
    t3 = (t0 + 5064);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t4 = (1 - 3);
    t17 = (t4 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t20 = *((unsigned char *)t1);
    t21 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t20);
    t3 = (t0 + 5128);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t21;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5000);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(110, ng0);
    t1 = (t0 + 7817);
    t3 = (t0 + 5064);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t4 = (2 - 3);
    t17 = (t4 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t1 = (t2 + t19);
    t20 = *((unsigned char *)t1);
    t21 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t20);
    t3 = (t0 + 5128);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t21;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB10:;
}


extern void work_a_3458417847_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3458417847_3212880686_p_0,(void *)work_a_3458417847_3212880686_p_1};
	xsi_register_didat("work_a_3458417847_3212880686", "isim/test_isim_beh.exe.sim/work/a_3458417847_3212880686.didat");
	xsi_register_executes(pe);
}
