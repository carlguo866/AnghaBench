; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_local.h_is_unsafe_aio_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/aio/extr_local.h_is_unsafe_aio_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sysctl_oid_name = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_unsafe_aio_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_unsafe_aio_enabled() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 4, i64* %2, align 8
  %4 = load i32, i32* @sysctl_oid_name, align 4
  %5 = call i64 @sysctlbyname(i32 %4, i32* %3, i64* %2, i32* null, i32 0)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @ENOENT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 -1, i32* %1, align 4
  br label %18

12:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %18

13:                                               ; preds = %0
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 1
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %13, %12, %11
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i64 @sysctlbyname(i32, i32*, i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
