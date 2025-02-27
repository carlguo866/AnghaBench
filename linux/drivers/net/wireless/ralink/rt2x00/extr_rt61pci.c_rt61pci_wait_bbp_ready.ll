; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_wait_bbp_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_wait_bbp_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@REGISTER_BUSY_COUNT = common dso_local global i32 0, align 4
@REGISTER_BUSY_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"BBP register access failed, aborting\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt61pci_wait_bbp_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_wait_bbp_ready(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @REGISTER_BUSY_COUNT, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = call i32 @rt61pci_bbp_read(%struct.rt2x00_dev* %11, i32 0)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 255
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %30

19:                                               ; preds = %15, %10
  %20 = load i32, i32* @REGISTER_BUSY_DELAY, align 4
  %21 = call i32 @udelay(i32 %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = call i32 @rt2x00_err(%struct.rt2x00_dev* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EACCES, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @rt61pci_bbp_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
