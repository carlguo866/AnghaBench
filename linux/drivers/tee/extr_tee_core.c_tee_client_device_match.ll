; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_tee_client_device_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/extr_tee_core.c_tee_client_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.tee_client_device_id = type { i32 }
%struct.tee_client_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.tee_client_device_id* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @tee_client_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tee_client_device_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.tee_client_device_id*, align 8
  %7 = alloca %struct.tee_client_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %9 = call %struct.TYPE_4__* @to_tee_client_driver(%struct.device_driver* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.tee_client_device_id*, %struct.tee_client_device_id** %10, align 8
  store %struct.tee_client_device_id* %11, %struct.tee_client_device_id** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.tee_client_device* @to_tee_client_device(%struct.device* %12)
  store %struct.tee_client_device* %13, %struct.tee_client_device** %7, align 8
  br label %14

14:                                               ; preds = %29, %2
  %15 = load %struct.tee_client_device_id*, %struct.tee_client_device_id** %6, align 8
  %16 = getelementptr inbounds %struct.tee_client_device_id, %struct.tee_client_device_id* %15, i32 0, i32 0
  %17 = call i32 @uuid_is_null(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.tee_client_device*, %struct.tee_client_device** %7, align 8
  %22 = getelementptr inbounds %struct.tee_client_device, %struct.tee_client_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.tee_client_device_id*, %struct.tee_client_device_id** %6, align 8
  %25 = getelementptr inbounds %struct.tee_client_device_id, %struct.tee_client_device_id* %24, i32 0, i32 0
  %26 = call i64 @uuid_equal(i32* %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.tee_client_device_id*, %struct.tee_client_device_id** %6, align 8
  %31 = getelementptr inbounds %struct.tee_client_device_id, %struct.tee_client_device_id* %30, i32 1
  store %struct.tee_client_device_id* %31, %struct.tee_client_device_id** %6, align 8
  br label %14

32:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_4__* @to_tee_client_driver(%struct.device_driver*) #1

declare dso_local %struct.tee_client_device* @to_tee_client_device(%struct.device*) #1

declare dso_local i32 @uuid_is_null(i32*) #1

declare dso_local i64 @uuid_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
