; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_debugfs.c_mmio16read__read_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_debugfs.c_mmio16read__read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B43_MAX_MMIO_ACCESS = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i8*, i64)* @mmio16read__read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio16read__read_file(%struct.b43_wldev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @B43_MAX_MMIO_ACCESS, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EDESTADDRREQ, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %29

22:                                               ; preds = %3
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @b43_read16(%struct.b43_wldev* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @fappend(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @fappend(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
