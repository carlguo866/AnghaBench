; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.h_is_mbpf_mul.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_main.h_is_mbpf_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_insn_meta = type { i32 }

@BPF_MUL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_insn_meta*)* @is_mbpf_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mbpf_mul(%struct.nfp_insn_meta* %0) #0 {
  %2 = alloca %struct.nfp_insn_meta*, align 8
  store %struct.nfp_insn_meta* %0, %struct.nfp_insn_meta** %2, align 8
  %3 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %2, align 8
  %4 = call i64 @is_mbpf_alu(%struct.nfp_insn_meta* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %2, align 8
  %8 = call i64 @mbpf_op(%struct.nfp_insn_meta* %7)
  %9 = load i64, i64* @BPF_MUL, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i64 @is_mbpf_alu(%struct.nfp_insn_meta*) #1

declare dso_local i64 @mbpf_op(%struct.nfp_insn_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
