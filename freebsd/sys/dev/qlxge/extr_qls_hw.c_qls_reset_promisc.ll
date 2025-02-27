; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_hw.c_qls_reset_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_hw.c_qls_reset_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q81_CTL_RI_TYPE_NICQMASK = common dso_local global i32 0, align 4
@Q81_CTL_RI_IDX_PROMISCUOUS = common dso_local global i32 0, align 4
@Q81_CTL_RI_DST_DFLTQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qls_reset_promisc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @Q81_CTL_RI_TYPE_NICQMASK, align 4
  %6 = load i32, i32* @Q81_CTL_RI_IDX_PROMISCUOUS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @Q81_CTL_RI_DST_DFLTQ, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @qls_load_route_idx_reg_locked(i32* %4, i32 %9, i32 0)
  store i32 %10, i32* %3, align 4
  ret void
}

declare dso_local i32 @qls_load_route_idx_reg_locked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
