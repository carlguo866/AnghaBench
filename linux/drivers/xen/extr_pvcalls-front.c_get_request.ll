; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_get_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-front.c_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvcalls_bedata = type { %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@PVCALLS_INVALID_ID = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvcalls_bedata*, i32*)* @get_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_request(%struct.pvcalls_bedata* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvcalls_bedata*, align 8
  %5 = alloca i32*, align 8
  store %struct.pvcalls_bedata* %0, %struct.pvcalls_bedata** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %7 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %11 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %10, i32 0, i32 1
  %12 = call i32 @RING_SIZE(%struct.TYPE_5__* %11)
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %9, %13
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %17 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %16, i32 0, i32 1
  %18 = call i64 @RING_FULL(%struct.TYPE_5__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = load %struct.pvcalls_bedata*, %struct.pvcalls_bedata** %4, align 8
  %22 = getelementptr inbounds %struct.pvcalls_bedata, %struct.pvcalls_bedata* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PVCALLS_INVALID_ID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %20, %2
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @RING_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @RING_FULL(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
