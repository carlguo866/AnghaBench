; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5005s.c_MXL_OverwriteICDefault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5005s.c_MXL_OverwriteICDefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

@OVERRIDE_1 = common dso_local global i32 0, align 4
@OVERRIDE_2 = common dso_local global i32 0, align 4
@OVERRIDE_3 = common dso_local global i32 0, align 4
@OVERRIDE_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @MXL_OverwriteICDefault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MXL_OverwriteICDefault(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = load i32, i32* @OVERRIDE_1, align 4
  %6 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %4, i32 %5, i32 1)
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, %6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = load i32, i32* @OVERRIDE_2, align 4
  %13 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %11, i32 %12, i32 1)
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %19 = load i32, i32* @OVERRIDE_3, align 4
  %20 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %18, i32 %19, i32 1)
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %26 = load i32, i32* @OVERRIDE_4, align 4
  %27 = call i64 @MXL_ControlWrite(%struct.dvb_frontend* %25, i32 %26, i32 1)
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @MXL_ControlWrite(%struct.dvb_frontend*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
