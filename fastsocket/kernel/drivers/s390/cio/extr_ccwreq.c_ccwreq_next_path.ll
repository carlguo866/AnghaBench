; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwreq.c_ccwreq_next_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwreq.c_ccwreq_next_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ccw_request }
%struct.ccw_request = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @ccwreq_next_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccwreq_next_path(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.ccw_request*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %4 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %5 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.ccw_request* %7, %struct.ccw_request** %3, align 8
  %8 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %9 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %14 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %17 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %20 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %22 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %26 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @lpm_adjust(i32 %24, i32 %27)
  %29 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %30 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %15, %12
  %32 = load %struct.ccw_request*, %struct.ccw_request** %3, align 8
  %33 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  ret i32 %34
}

declare dso_local i32 @lpm_adjust(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
