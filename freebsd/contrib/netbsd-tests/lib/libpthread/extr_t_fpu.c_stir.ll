; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_fpu.c_stir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_fpu.c_stir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"sched_yield failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @stir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to double*
  store double* %8, double** %3, align 8
  %9 = load double*, double** %3, align 8
  %10 = getelementptr inbounds double, double* %9, i32 1
  store double* %10, double** %3, align 8
  %11 = load double, double* %9, align 8
  store double %11, double* %4, align 8
  %12 = load double*, double** %3, align 8
  %13 = getelementptr inbounds double, double* %12, i32 1
  store double* %13, double** %3, align 8
  %14 = load double, double* %12, align 8
  store double %14, double* %5, align 8
  %15 = load double*, double** %3, align 8
  %16 = getelementptr inbounds double, double* %15, i32 1
  store double* %16, double** %3, align 8
  %17 = load double, double* %15, align 8
  store double %17, double* %6, align 8
  br label %18

18:                                               ; preds = %18, %1
  %19 = load double, double* %4, align 8
  %20 = load double, double* %5, align 8
  %21 = fadd double %19, %20
  %22 = fadd double %21, 4.000000e-01
  %23 = call double @cos(double %22) #3
  store double %23, double* %5, align 8
  %24 = load double, double* %4, align 8
  %25 = load double, double* %6, align 8
  %26 = fadd double %24, %25
  %27 = fadd double %26, 6.000000e-01
  %28 = call double @cos(double %27) #3
  store double %28, double* %6, align 8
  %29 = fsub double %23, %28
  %30 = call double @sin(double %29) #3
  store double %30, double* %4, align 8
  %31 = call i64 (...) @sched_yield()
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @strerror(i32 %34)
  %36 = call i32 @ATF_REQUIRE_MSG(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %18
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #2

declare dso_local i64 @sched_yield(...) #2

declare dso_local i32 @strerror(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
