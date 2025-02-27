; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spr.c_validate_tm_spr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-tm-spr.c_validate_tm_spr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm_spr_regs = type { i64, i64, i64 }

@tfhar = common dso_local global i64 0, align 8
@TM_KVM_SCHED = common dso_local global i64 0, align 8
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_tm_spr(%struct.tm_spr_regs* %0) #0 {
  %2 = alloca %struct.tm_spr_regs*, align 8
  store %struct.tm_spr_regs* %0, %struct.tm_spr_regs** %2, align 8
  %3 = load %struct.tm_spr_regs*, %struct.tm_spr_regs** %2, align 8
  %4 = getelementptr inbounds %struct.tm_spr_regs, %struct.tm_spr_regs* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @tfhar, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @FAIL_IF(i32 %8)
  %10 = load %struct.tm_spr_regs*, %struct.tm_spr_regs** %2, align 8
  %11 = getelementptr inbounds %struct.tm_spr_regs, %struct.tm_spr_regs* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TM_KVM_SCHED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.tm_spr_regs*, %struct.tm_spr_regs** %2, align 8
  %17 = getelementptr inbounds %struct.tm_spr_regs, %struct.tm_spr_regs* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i1 [ false, %1 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @FAIL_IF(i32 %22)
  %24 = load i32, i32* @TEST_PASS, align 4
  ret i32 %24
}

declare dso_local i32 @FAIL_IF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
