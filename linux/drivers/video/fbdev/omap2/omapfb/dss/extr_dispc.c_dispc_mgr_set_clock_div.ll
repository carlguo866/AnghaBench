; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_set_clock_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_set_clock_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_clock_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"lck = %lu (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"pck = %lu (%u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispc_mgr_set_clock_div(i32 %0, %struct.dispc_clock_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dispc_clock_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.dispc_clock_info* %1, %struct.dispc_clock_info** %4, align 8
  %5 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %6 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %9 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DSSDBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %13 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %16 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DSSDBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %21 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dispc_clock_info*, %struct.dispc_clock_info** %4, align 8
  %24 = getelementptr inbounds %struct.dispc_clock_info, %struct.dispc_clock_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dispc_mgr_set_lcd_divisor(i32 %19, i32 %22, i32 %25)
  ret void
}

declare dso_local i32 @DSSDBG(i8*, i32, i32) #1

declare dso_local i32 @dispc_mgr_set_lcd_divisor(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
