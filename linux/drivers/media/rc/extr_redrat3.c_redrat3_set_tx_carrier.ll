; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_set_tx_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_set_tx_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.redrat3_dev* }
%struct.redrat3_dev = type { i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Setting modulation frequency to %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @redrat3_set_tx_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redrat3_set_tx_carrier(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.redrat3_dev*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 0
  %10 = load %struct.redrat3_dev*, %struct.redrat3_dev** %9, align 8
  store %struct.redrat3_dev* %10, %struct.redrat3_dev** %6, align 8
  %11 = load %struct.redrat3_dev*, %struct.redrat3_dev** %6, align 8
  %12 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.redrat3_dev*, %struct.redrat3_dev** %6, align 8
  %25 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
