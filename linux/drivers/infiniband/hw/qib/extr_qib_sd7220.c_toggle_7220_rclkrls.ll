; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_toggle_7220_rclkrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_toggle_7220_rclkrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32 (i32)* }

@EPB_GLOBAL_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RCLKRLS failed to clear D7\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toggle_7220_rclkrls(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %5 = call i32 @RXLSPPM(i32 0)
  %6 = load i32, i32* @EPB_GLOBAL_WR, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %8, i32 %9, i32 0, i32 128)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %15 = call i32 @qib_dev_err(%struct.qib_devdata* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %21

16:                                               ; preds = %1
  %17 = call i32 @udelay(i32 1)
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %18, i32 %19, i32 128, i32 128)
  br label %21

21:                                               ; preds = %16, %13
  %22 = call i32 @udelay(i32 1)
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %23, i32 %24, i32 0, i32 128)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %30 = call i32 @qib_dev_err(%struct.qib_devdata* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %36

31:                                               ; preds = %21
  %32 = call i32 @udelay(i32 1)
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @ibsd_mod_allchnls(%struct.qib_devdata* %33, i32 %34, i32 128, i32 128)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 1
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %39(i32 %42)
  ret void
}

declare dso_local i32 @RXLSPPM(i32) #1

declare dso_local i32 @ibsd_mod_allchnls(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
