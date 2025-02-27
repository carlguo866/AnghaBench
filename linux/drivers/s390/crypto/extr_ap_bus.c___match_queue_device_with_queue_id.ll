; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c___match_queue_device_with_queue_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c___match_queue_device_with_queue_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__match_queue_device_with_queue_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__match_queue_device_with_queue_id(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call i64 @is_queue_dev(%struct.device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.TYPE_2__* @to_ap_queue(%struct.device* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @AP_QID_QUEUE(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %13, %16
  br label %18

18:                                               ; preds = %8, %2
  %19 = phi i1 [ false, %2 ], [ %17, %8 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i64 @is_queue_dev(%struct.device*) #1

declare dso_local i32 @AP_QID_QUEUE(i32) #1

declare dso_local %struct.TYPE_2__* @to_ap_queue(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
