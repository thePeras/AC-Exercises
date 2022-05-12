// X0 -> endereço do tab
// D2 -> x^3 * 1.5
// D3 -> 12.5 * x
.data
.global_0: .single 0.0
.global_10: .single 10.0
.global_15: .single 1.5
.global_125: .single 12.5
.global_7: .single 7.0
.step: .single 0.1


.global _calc_poly_tab	     // Allow other files to call this routine
.p2align 2

_calc_poly_tab: 
    LDR S1, .global_0
loop: 
    LDR S4, .global_10
    FCMP S1, S4
    B.EQ fim

    //calcular polinómio
    FMUL S2, S1, S1
    FMUL S2, S2, S1
    LDR S4, .global_15
    FMUL S2, S2, S4

    LDR S4, .global_125
    FMUL S3, S1, S4
    FSUB S2, S2, S3
    LDR S4, .global_7
    FADD S2, S2, S4

    //Store
    str S2, [X0], 4

    LDR S4, .step
    FADD S1, S1, S4
    B loop
fim:   
    RET