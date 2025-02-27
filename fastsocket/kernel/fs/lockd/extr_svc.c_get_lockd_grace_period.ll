; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svc.c_get_lockd_grace_period.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svc.c_get_lockd_grace_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nlm_grace_period = common dso_local global i64 0, align 8
@nlm_timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_lockd_grace_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_lockd_grace_period() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @nlm_grace_period, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i64, i64* @nlm_grace_period, align 8
  %6 = load i32, i32* @nlm_timeout, align 4
  %7 = call i64 @roundup(i64 %5, i32 %6)
  %8 = load i64, i64* @HZ, align 8
  %9 = mul i64 %7, %8
  store i64 %9, i64* %1, align 8
  br label %16

10:                                               ; preds = %0
  %11 = load i32, i32* @nlm_timeout, align 4
  %12 = mul nsw i32 %11, 5
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @HZ, align 8
  %15 = mul i64 %13, %14
  store i64 %15, i64* %1, align 8
  br label %16

16:                                               ; preds = %10, %4
  %17 = load i64, i64* %1, align 8
  ret i64 %17
}

declare dso_local i64 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
