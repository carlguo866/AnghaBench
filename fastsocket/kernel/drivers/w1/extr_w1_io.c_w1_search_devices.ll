; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1_io.c_w1_search_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/extr_w1_io.c_w1_search_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32, %struct.w1_master*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @w1_search_devices(%struct.w1_master* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.w1_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.w1_master* %0, %struct.w1_master** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %8 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 8
  %11 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %12 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (i32, %struct.w1_master*, i32, i32)*, i32 (i32, %struct.w1_master*, i32, i32)** %14, align 8
  %16 = icmp ne i32 (i32, %struct.w1_master*, i32, i32)* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %19 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (i32, %struct.w1_master*, i32, i32)*, i32 (i32, %struct.w1_master*, i32, i32)** %21, align 8
  %23 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %24 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 %22(i32 %27, %struct.w1_master* %28, i32 %29, i32 %30)
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.w1_master*, %struct.w1_master** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @w1_search(%struct.w1_master* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %17
  ret void
}

declare dso_local i32 @w1_search(%struct.w1_master*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
