; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_update_device_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_update_device_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64 }

@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@IGA2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_update_device_setting(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  br label %42

22:                                               ; preds = %4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IGA2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %30, %22
  br label %42

42:                                               ; preds = %41, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
