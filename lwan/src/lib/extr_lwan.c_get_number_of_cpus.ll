; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_get_number_of_cpus.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_get_number_of_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Could not get number of online CPUs, assuming 1 CPU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 ()* @get_number_of_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @get_number_of_cpus() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i64, align 8
  %3 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %4 = call i64 @sysconf(i32 %3)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp slt i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i64 @UNLIKELY(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @lwan_status_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i16 1, i16* %1, align 2
  br label %15

12:                                               ; preds = %0
  %13 = load i64, i64* %2, align 8
  %14 = trunc i64 %13 to i16
  store i16 %14, i16* %1, align 2
  br label %15

15:                                               ; preds = %12, %10
  %16 = load i16, i16* %1, align 2
  ret i16 %16
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @lwan_status_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
