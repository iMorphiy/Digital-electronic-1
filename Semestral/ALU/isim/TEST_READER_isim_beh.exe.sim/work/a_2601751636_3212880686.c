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
static const char *ng0 = "C:/Users/vyma9/OneDrive/Plocha/VUT/DE1/Digital-electronic-1/Semestral/ALU/READER.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);


static void work_a_2601751636_3212880686_p_0(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    static char *nl0[] = {&&LAB8, &&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4840);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 4936);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(37, ng0);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t6 = (t0 + 8384U);
    t8 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t9, t7, t6, (unsigned char)0);
    t10 = (t9 + 12U);
    t11 = *((unsigned int *)t10);
    t11 = (t11 * 1U);
    t12 = (8U != t11);
    if (t12 == 1)
        goto LAB12;

LAB13:    t13 = (t0 + 5000);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 8U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 4936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB9:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 8384U);
    t5 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t9, t2, t1, (unsigned char)0);
    t6 = (t9 + 12U);
    t11 = *((unsigned int *)t6);
    t11 = (t11 * 1U);
    t3 = (8U != t11);
    if (t3 == 1)
        goto LAB14;

LAB15:    t7 = (t0 + 5064);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB10:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 8384U);
    t5 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t9, t2, t1, (unsigned char)0);
    t6 = (t9 + 12U);
    t11 = *((unsigned int *)t6);
    t11 = (t11 * 1U);
    t3 = (8U != t11);
    if (t3 == 1)
        goto LAB16;

LAB17:    t7 = (t0 + 5128);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 4936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB11:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 4936);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB12:    xsi_size_not_matching(8U, t11, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(8U, t11, 0);
    goto LAB15;

LAB16:    xsi_size_not_matching(8U, t11, 0);
    goto LAB17;

}

static void work_a_2601751636_3212880686_p_1(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4856);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(60, ng0);
    t5 = (t0 + 2792U);
    t6 = *((char **)t5);
    t5 = (t0 + 8496U);
    t7 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t4, t6, t5);
    t8 = (t4 + 12U);
    t9 = *((unsigned int *)t8);
    t9 = (t9 * 1U);
    t10 = (8U != t9);
    if (t10 == 1)
        goto LAB6;

LAB7:    t11 = (t0 + 5192);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8512U);
    t5 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t4, t2, t1);
    t6 = (t4 + 12U);
    t9 = *((unsigned int *)t6);
    t9 = (t9 * 1U);
    t3 = (8U != t9);
    if (t3 == 1)
        goto LAB8;

LAB9:    t7 = (t0 + 5256);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 8U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 8528U);
    t5 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t4, t2, t1);
    t6 = (t4 + 12U);
    t9 = *((unsigned int *)t6);
    t9 = (t9 * 1U);
    t3 = (8U != t9);
    if (t3 == 1)
        goto LAB10;

LAB11:    t7 = (t0 + 5320);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB4:    goto LAB2;

LAB5:    goto LAB2;

LAB6:    xsi_size_not_matching(8U, t9, 0);
    goto LAB7;

LAB8:    xsi_size_not_matching(8U, t9, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(8U, t9, 0);
    goto LAB11;

}


extern void work_a_2601751636_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2601751636_3212880686_p_0,(void *)work_a_2601751636_3212880686_p_1};
	xsi_register_didat("work_a_2601751636_3212880686", "isim/TEST_READER_isim_beh.exe.sim/work/a_2601751636_3212880686.didat");
	xsi_register_executes(pe);
}
