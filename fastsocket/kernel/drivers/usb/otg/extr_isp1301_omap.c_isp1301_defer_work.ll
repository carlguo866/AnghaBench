; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_isp1301_omap.c_isp1301_defer_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_isp1301_omap.c_isp1301_defer_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1301 = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"work item %d may be lost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1301*, i32)* @isp1301_defer_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1301_defer_work(%struct.isp1301* %0, i32 %1) #0 {
  %3 = alloca %struct.isp1301*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isp1301* %0, %struct.isp1301** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %7 = icmp ne %struct.isp1301* %6, null
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %11 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %10, i32 0, i32 3
  %12 = call i32 @test_and_set_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %8
  %15 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %16 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @get_device(i32* %18)
  %20 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %21 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %20, i32 0, i32 2
  %22 = call i32 @schedule_work(i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %14
  %26 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %27 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.isp1301*, %struct.isp1301** %3, align 8
  %32 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_vdbg(i32* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %25, %14
  br label %38

38:                                               ; preds = %37, %8, %2
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
