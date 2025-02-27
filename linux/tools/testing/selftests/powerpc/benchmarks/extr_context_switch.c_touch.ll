; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/benchmarks/extr_context_switch.c_touch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/benchmarks/extr_context_switch.c_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@touch_vdso = common dso_local global i64 0, align 8
@tv = common dso_local global i32 0, align 4
@touch_fp = common dso_local global i64 0, align 8
@fp = common dso_local global double 0.000000e+00, align 8
@touch_vector = common dso_local global i64 0, align 8
@a = common dso_local global i64 0, align 8
@b = common dso_local global i64 0, align 8
@c = common dso_local global i64 0, align 8
@touch_altivec = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @touch() #0 {
  %1 = load i64, i64* @touch_vdso, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @gettimeofday(i32* @tv, i32* null)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i64, i64* @touch_fp, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load double, double* @fp, align 8
  %10 = fadd double %9, 1.000000e-01
  store double %10, double* @fp, align 8
  br label %11

11:                                               ; preds = %8, %5
  %12 = load i64, i64* @touch_vector, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, i64* @a, align 8
  %16 = load i64, i64* @b, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* @c, align 8
  br label %18

18:                                               ; preds = %14, %11
  call void asm sideeffect "# $0 $1 $2", "r,r,r,~{dirflag},~{fpsr},~{flags}"(i32* @tv, double* @fp, i64* @c) #2, !srcloc !2
  ret void
}

declare dso_local i32 @gettimeofday(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 549}
