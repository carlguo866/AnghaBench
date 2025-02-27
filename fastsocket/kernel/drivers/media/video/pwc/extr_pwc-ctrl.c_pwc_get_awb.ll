; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_get_awb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_get_awb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }

@GET_CHROM_CTL = common dso_local global i32 0, align 4
@WB_MODE_FORMATTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_get_awb(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  %6 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %7 = load i32, i32* @GET_CHROM_CTL, align 4
  %8 = load i32, i32* @WB_MODE_FORMATTER, align 4
  %9 = call i32 @recv_control_msg(%struct.pwc_device* %6, i32 %7, i32 %8, i8* %4, i32 1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %12
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @recv_control_msg(%struct.pwc_device*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
