; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_if_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_if_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"dsi_if_enable(%d)\0A\00", align 1
@DSI_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set dsi_if_enable to %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @dsi_if_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_if_enable(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @DSSDBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 1, i32 0
  store i32 %11, i32* %5, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = load i32, i32* @DSI_CTRL, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @REG_FLD_MOD(%struct.platform_device* %12, i32 %13, i32 %14, i32 0, i32 0)
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = load i32, i32* @DSI_CTRL, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @wait_for_bit_change(%struct.platform_device* %16, i32 %17, i32 0, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @DSSERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_bit_change(%struct.platform_device*, i32, i32, i32) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
