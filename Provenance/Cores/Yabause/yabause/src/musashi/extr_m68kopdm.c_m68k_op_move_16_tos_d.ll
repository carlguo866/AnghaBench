; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_move_16_tos_d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_move_16_tos_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLAG_S = common dso_local global i64 0, align 8
@DY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_move_16_tos_d() #0 {
  %1 = load i64, i64* @FLAG_S, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @DY, align 4
  %5 = call i32 @m68ki_set_sr(i32 %4)
  br label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @m68ki_exception_privilege_violation()
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

declare dso_local i32 @m68ki_set_sr(i32) #1

declare dso_local i32 @m68ki_exception_privilege_violation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
