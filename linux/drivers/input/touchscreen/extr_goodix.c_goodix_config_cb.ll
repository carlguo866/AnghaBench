; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_config_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_config_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.goodix_ts_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @goodix_config_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodix_config_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.goodix_ts_data*, align 8
  %6 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.goodix_ts_data*
  store %struct.goodix_ts_data* %8, %struct.goodix_ts_data** %5, align 8
  %9 = load %struct.firmware*, %struct.firmware** %3, align 8
  %10 = icmp ne %struct.firmware* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %5, align 8
  %13 = load %struct.firmware*, %struct.firmware** %3, align 8
  %14 = call i32 @goodix_send_cfg(%struct.goodix_ts_data* %12, %struct.firmware* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %22

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %2
  %20 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %5, align 8
  %21 = call i32 @goodix_configure_dev(%struct.goodix_ts_data* %20)
  br label %22

22:                                               ; preds = %19, %17
  %23 = load %struct.firmware*, %struct.firmware** %3, align 8
  %24 = call i32 @release_firmware(%struct.firmware* %23)
  %25 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %5, align 8
  %26 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %25, i32 0, i32 0
  %27 = call i32 @complete_all(i32* %26)
  ret void
}

declare dso_local i32 @goodix_send_cfg(%struct.goodix_ts_data*, %struct.firmware*) #1

declare dso_local i32 @goodix_configure_dev(%struct.goodix_ts_data*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
