; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_gamma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }

@SET_LUM_CTL = common dso_local global i32 0, align 4
@GAMMA_FORMATTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_set_gamma(%struct.pwc_device* %0, i32 %1) #0 {
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 65535
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 65535, i32* %4, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 11
  %16 = and i32 %15, 31
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  %18 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %19 = load i32, i32* @SET_LUM_CTL, align 4
  %20 = load i32, i32* @GAMMA_FORMATTER, align 4
  %21 = call i32 @send_control_msg(%struct.pwc_device* %18, i32 %19, i32 %20, i8* %5, i32 1)
  ret i32 %21
}

declare dso_local i32 @send_control_msg(%struct.pwc_device*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
