; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_watch_stereo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_watch_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i64 }

@msp_once = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @watch_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watch_stereo(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.msp_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call i32 @i2c_get_clientdata(%struct.i2c_client* %4)
  %6 = call %struct.msp_state* @to_state(i32 %5)
  store %struct.msp_state* %6, %struct.msp_state** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call i64 @msp_detect_stereo(%struct.i2c_client* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = call i32 @msp_set_audmode(%struct.i2c_client* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i64, i64* @msp_once, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %18 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %16, %13
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @msp_detect_stereo(%struct.i2c_client*) #1

declare dso_local i32 @msp_set_audmode(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
