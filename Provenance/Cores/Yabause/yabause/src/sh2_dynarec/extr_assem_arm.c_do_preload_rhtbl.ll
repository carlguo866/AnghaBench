; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_preload_rhtbl.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_preload_rhtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slave = common dso_local global i64 0, align 8
@FP = common dso_local global i32 0, align 4
@mini_ht_slave = common dso_local global i32 0, align 4
@dynarec_local = common dso_local global i32 0, align 4
@mini_ht_master = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_preload_rhtbl(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @slave, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @FP, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @emit_addimm(i32 %6, i32 sub nsw (i32 ptrtoint (i32* @mini_ht_slave to i32), i32 ptrtoint (i32* @dynarec_local to i32)), i32 %7)
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @FP, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @emit_addimm(i32 %10, i32 sub nsw (i32 ptrtoint (i32* @mini_ht_master to i32), i32 ptrtoint (i32* @dynarec_local to i32)), i32 %11)
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
