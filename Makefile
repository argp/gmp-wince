# NTRG GMP WINCE -- Makefile
# Patroklos G. Argyroudis <argp@cs.tcd.ie>
#
# Makefile for compilation of GMP for WinCE.
#
# $Id: Makefile,v 1.2 2004/01/11 10:32:38 argp Exp $

CC = clarm
EVC = "C:\Program Files\Microsoft eMbedded Tools\EVC"
WCEROOT = "C:\Windows CE Tools"
PLATFORM = "MS Pocket PC"
TARGETCPU = arm
OSVERSION = WCE300
CEVERSION = 300
MACHINE = /machine:$(TARGETCPU)
CEPATH = $(EVC)\$(OSVERSION)\BIN
PATH = $(CEPATH);$(PATH)
INCLUDE = -I$(WCEROOT)/$(OSVERSION)/$(PLATFORM)/include \
             -I"." -I"mpn\generic" -I"mpfr"
CFLAGS = -nologo -D_NTRG_WINCE_ -D__STDC__ -DHAS_STRING_H -D_ARM_ -DARM \
	    -D_arm_ -DPOCKET_SIZE -DPALM_SIZE -D_WINCE \
	    -D_WIN32_WCE=$(CEVERSION) -DUNDER_CE=$(CEVERSION) \
	    -DBUILD_CELIB=1 -DFLOATING_POINT -DSTDC_HEADERS \
	    -DOPERATION_trunc
LIBCMD = lib $(MACHINE) /nologo

SRCS =	mpfr\add.c \
	mpfr\div_2exp.c \
	mpfr\neg.c \
	mpfr\set_dfl_prec.c \
	mpfr\set_str_raw.c \
	mpfr\agm.c \
	mpfr\get_str.c \
	mpfr\print_raw.c \
	mpfr\set_dfl_rnd.c \
	mpfr\sqrt.c \
	mpfr\clear.c \
	mpfr\init.c \
	mpfr\set_f.c \
	mpfr\sub.c \
	mpfr\cmp.c \
	mpfr\mul.c \
	mpfr\round.c \
	mpfr\set_prec.c \
	mpfr\cmp_ui.c \
	mpfr\mul_2exp.c \
	mpfr\set.c \
	mpfr\set_si.c \
	mpfr\div.c \
	mpfr\mul_ui.c \
	mpfr\set_d.c \
	mpfr\pow.c \
	mpfr\out_str.c \
	mpfr\pi.c \
	mpfr\set_z.c \
	mpfr\add_ulp.c \
	mpfr\log2.c \
	mpfr\random.c \
	mpfr\log.c \
	mpfr\exp.c \
	mpfr\div_ui.c \
	mpfr\zeta.c \
	mpfr\karadiv.c \
	mpfr\karasqrt.c \
	mpfr\print_rnd_mode.c \
	ansi2knr.c \
	assert.c \
	compat.c \
	errno.c \
	memory.c \
	mp_set_fns.c \
	mp_clz_tab.c \
	mp_minv_tab.c \
	rand.c \
	randclr.c \
	randlc.c \
	randlc2x.c \
	randraw.c \
	randsd.c \
	randsdui.c \
	version.c \
	stack-alloc.c \
	mp_bpl.c \
	extract-dbl.c \
	insert-dbl.c \
	mpn\mp_bases.c \
	mpn\generic\add_n.c \
	mpn\generic\addmul_1.c \
	mpn\generic\addsub_n.c \
	mpn\generic\bdivmod.c \
	mpn\generic\bz_divrem_n.c \
	mpn\generic\cmp.c \
	mpn\generic\diveby3.c \
	mpn\generic\divrem.c \
	mpn\generic\divrem_1.c \
	mpn\generic\divrem_2.c \
	mpn\generic\dump.c \
	mpn\generic\gcd.c \
	mpn\generic\gcd_1.c \
	mpn\generic\gcdext.c \
	mpn\generic\get_str.c \
	mpn\generic\hamdist.c \
	mpn\generic\inlines.c \
	mpn\generic\jacbase.c \
	mpn\generic\lshift.c \
	mpn\generic\mod_1.c \
	mpn\generic\mod_1_rs.c \
	mpn\generic\mul.c \
	mpn\generic\mul_1.c \
	mpn\generic\mul_fft.c \
	mpn\generic\mul_basecase.c \
	mpn\generic\mul_n.c \
	mpn\generic\perfsqr.c \
	mpn\generic\popcount.c \
	mpn\generic\pre_mod_1.c \
	mpn\generic\random.c \
	mpn\generic\random2.c \
	mpn\generic\rshift.c \
	mpn\generic\sb_divrem_mn.c \
	mpn\generic\scan0.c \
	mpn\generic\scan1.c \
	mpn\generic\set_str.c \
	mpn\generic\sqr_basecase.c \
	mpn\generic\sqrtrem.c \
	mpn\generic\sub_n.c \
	mpn\generic\submul_1.c \
	mpn\generic\tdiv_qr.c \
	mpn\generic\udiv_w_sdiv.c \
	mpz\abs.c \
	mpz\add.c \
	mpz\add_ui.c \
	mpz\addmul_ui.c \
	mpz\and.c \
	mpz\array_init.c \
	mpz\bin_ui.c \
	mpz\bin_uiui.c \
	mpz\cdiv_q.c \
	mpz\cdiv_q_ui.c \
	mpz\cdiv_qr.c \
	mpz\cdiv_qr_ui.c \
	mpz\cdiv_r.c \
	mpz\cdiv_r_ui.c \
	mpz\cdiv_ui.c \
	mpz\clear.c \
	mpz\clrbit.c \
	mpz\cmp.c \
	mpz\cmp_si.c \
	mpz\cmp_ui.c \
	mpz\cmpabs.c \
	mpz\cmpabs_ui.c \
	mpz\com.c \
	mpz\divexact.c \
	mpz\dump.c \
	mpz\fac_ui.c \
	mpz\fdiv_q.c \
	mpz\fdiv_q_2exp.c \
	mpz\fdiv_q_ui.c \
	mpz\fdiv_qr.c \
	mpz\fdiv_qr_ui.c \
	mpz\fdiv_r.c \
	mpz\fdiv_r_2exp.c \
	mpz\fdiv_r_ui.c \
	mpz\fdiv_ui.c \
	mpz\fib_ui.c \
	mpz\fits_sint_p.c \
	mpz\fits_slong_p.c \
	mpz\fits_sshort_p.c \
	mpz\fits_uint_p.c \
	mpz\fits_ulong_p.c \
	mpz\fits_ushort_p.c \
	mpz\gcd.c \
	mpz\gcd_ui.c \
	mpz\gcdext.c \
	mpz\get_d.c \
	mpz\get_si.c \
	mpz\get_str.c \
	mpz\get_ui.c \
	mpz\getlimbn.c \
	mpz\hamdist.c \
	mpz\init.c \
	mpz\inp_raw.c \
	mpz\inp_str.c \
	mpz\invert.c \
	mpz\ior.c \
	mpz\iset.c \
	mpz\iset_d.c \
	mpz\iset_si.c \
	mpz\iset_str.c \
	mpz\iset_ui.c \
	mpz\jacobi.c \
	mpz\kronsz.c \
	mpz\kronuz.c \
	mpz\kronzs.c \
	mpz\kronzu.c \
	mpz\lcm.c \
	mpz\legendre.c \
	mpz\mod.c \
	mpz\mul.c \
	mpz\mul_2exp.c \
	mpz\neg.c \
	mpz\nextprime.c \
	mpz\out_raw.c \
	mpz\out_str.c \
	mpz\perfpow.c \
	mpz\perfsqr.c \
	mpz\popcount.c \
	mpz\pow_ui.c \
	mpz\powm.c \
	mpz\powm_ui.c \
	mpz\pprime_p.c \
	mpz\random.c \
	mpz\random2.c \
	mpz\realloc.c \
	mpz\remove.c \
	mpz\root.c \
	mpz\rrandomb.c \
	mpz\scan0.c \
	mpz\scan1.c \
	mpz\set.c \
	mpz\set_d.c \
	mpz\set_f.c \
	mpz\set_q.c \
	mpz\set_si.c \
	mpz\set_str.c \
	mpz\set_ui.c \
	mpz\setbit.c \
	mpz\size.c \
	mpz\sizeinbase.c \
	mpz\sqrt.c \
	mpz\sqrtrem.c \
	mpz\sub.c \
	mpz\sub_ui.c \
	mpz\swap.c \
	mpz\tdiv_ui.c \
	mpz\tdiv_q.c \
	mpz\tdiv_q_2exp.c \
	mpz\tdiv_q_ui.c \
	mpz\tdiv_qr.c \
	mpz\tdiv_qr_ui.c \
	mpz\tdiv_r.c \
	mpz\tdiv_r_2exp.c \
	mpz\tdiv_r_ui.c \
	mpz\tstbit.c \
	mpz\ui_pow_ui.c \
	mpz\urandomb.c \
	mpz\urandomm.c \
	mpz\xor.c \
	mpz\mul_siui.c \
	mpq\add.c \
	mpq\canonicalize.c \
	mpq\clear.c \
	mpq\cmp.c \
	mpq\cmp_ui.c \
	mpq\div.c \
	mpq\get_d.c \
	mpq\get_den.c \
	mpq\get_num.c \
	mpq\init.c \
	mpq\inv.c \
	mpq\mul.c \
	mpq\neg.c \
	mpq\out_str.c \
	mpq\set.c \
	mpq\set_den.c \
	mpq\set_num.c \
	mpq\set_si.c \
	mpq\set_ui.c \
	mpq\sub.c \
	mpq\equal.c \
	mpq\set_z.c \
	mpq\set_d.c \
	mpq\swap.c \
	mpf\init.c \
	mpf\init2.c \
	mpf\set.c \
	mpf\set_ui.c \
	mpf\set_si.c \
	mpf\set_str.c \
	mpf\set_d.c \
	mpf\set_z.c \
	mpf\set_q.c \
	mpf\iset.c \
	mpf\iset_ui.c \
	mpf\iset_si.c \
	mpf\iset_str.c \
	mpf\iset_d.c \
	mpf\clear.c \
	mpf\get_str.c \
	mpf\dump.c \
	mpf\size.c \
	mpf\eq.c \
	mpf\reldiff.c \
	mpf\sqrt.c \
	mpf\random2.c \
	mpf\inp_str.c \
	mpf\out_str.c \
	mpf\add.c \
	mpf\add_ui.c \
	mpf\sub.c \
	mpf\sub_ui.c \
	mpf\ui_sub.c \
	mpf\mul.c \
	mpf\mul_ui.c \
	mpf\div.c \
	mpf\div_ui.c \
	mpf\cmp.c \
	mpf\cmp_ui.c \
	mpf\cmp_si.c \
	mpf\mul_2exp.c \
	mpf\div_2exp.c \
	mpf\abs.c \
	mpf\neg.c \
	mpf\get_d.c \
	mpf\set_dfl_prec.c \
	mpf\set_prc.c \
	mpf\set_prc_raw.c \
	mpf\get_prc.c \
	mpf\ui_div.c \
	mpf\sqrt_ui.c \
	mpf\pow_ui.c \
	mpf\urandomb.c \
	mpf\swap.c \
	mpf\integer.c \
	mpf\ceilfloor.c \
	mpbsd\itom.c \
	mpbsd\mfree.c \
	mpbsd\min.c \
	mpbsd\mout.c \
	mpbsd\move.c \
	mpbsd\mtox.c \
	mpbsd\sdiv.c \
	mpbsd\xtom.c

OBJS = $(SRCS:.c=.obj)
 
GMP_LIB = gmp.lib

.c.obj:
	$(CC) -c $(CFLAGS) $(INCLUDE) -Fo$@ $<

all:	$(GMP_LIB)

$(GMP_LIB): $(OBJS)
	    $(LIBCMD) /OUT:$(GMP_LIB) $(OBJS)

clean:
	del *.obj
	del mpfr\*.obj
	del mpn\*.obj
	del mpn\generic\*.obj
	del mpz\*.obj
	del mpq\*.obj
	del mpf\*.obj
	del mpbsd\*.obj
	del $(GMP_LIB)

# EOF
