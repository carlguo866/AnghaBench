; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_disc_interface.c_IOSUHAX_sdio_isInserted.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax_disc_interface.c_IOSUHAX_sdio_isInserted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialized = common dso_local global i64 0, align 8
@fsaFdSd = common dso_local global i64 0, align 8
@sdioFd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @IOSUHAX_sdio_isInserted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IOSUHAX_sdio_isInserted() #0 {
  %1 = load i64, i64* @initialized, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load i64, i64* @fsaFdSd, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i64, i64* @sdioFd, align 8
  %8 = icmp sge i64 %7, 0
  br label %9

9:                                                ; preds = %6, %3, %0
  %10 = phi i1 [ false, %3 ], [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
