; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_alu32_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_alu32_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { %struct.bpf_insn }
%struct.bpf_insn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*, i32)* @wrp_alu32_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrp_alu32_imm(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_insn*, align 8
  %8 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %10 = getelementptr inbounds %struct.nfp_insn_meta, %struct.nfp_insn_meta* %9, i32 0, i32 0
  store %struct.bpf_insn* %10, %struct.bpf_insn** %7, align 8
  %11 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %12 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %8, align 4
  %15 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %19 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wrp_alu_imm(%struct.nfp_prog* %15, i32 %16, i32 %17, i32 %20)
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %23 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @wrp_zext(%struct.nfp_prog* %22, %struct.nfp_insn_meta* %23, i32 %24)
  ret i32 0
}

declare dso_local i32 @wrp_alu_imm(%struct.nfp_prog*, i32, i32, i32) #1

declare dso_local i32 @wrp_zext(%struct.nfp_prog*, %struct.nfp_insn_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
