; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jmp_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_jmp_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }
%struct.nfp_insn_meta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_prog*, %struct.nfp_insn_meta*)* @jmp_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmp_exit(%struct.nfp_prog* %0, %struct.nfp_insn_meta* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_prog*, align 8
  %5 = alloca %struct.nfp_insn_meta*, align 8
  store %struct.nfp_prog* %0, %struct.nfp_prog** %4, align 8
  store %struct.nfp_insn_meta* %1, %struct.nfp_insn_meta** %5, align 8
  %6 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %7 = call i64 @nfp_is_main_function(%struct.nfp_insn_meta* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %11 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %12 = call i32 @goto_out(%struct.nfp_prog* %10, %struct.nfp_insn_meta* %11)
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.nfp_prog*, %struct.nfp_prog** %4, align 8
  %15 = load %struct.nfp_insn_meta*, %struct.nfp_insn_meta** %5, align 8
  %16 = call i32 @nfp_subprog_epilogue(%struct.nfp_prog* %14, %struct.nfp_insn_meta* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i64 @nfp_is_main_function(%struct.nfp_insn_meta*) #1

declare dso_local i32 @goto_out(%struct.nfp_prog*, %struct.nfp_insn_meta*) #1

declare dso_local i32 @nfp_subprog_epilogue(%struct.nfp_prog*, %struct.nfp_insn_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
