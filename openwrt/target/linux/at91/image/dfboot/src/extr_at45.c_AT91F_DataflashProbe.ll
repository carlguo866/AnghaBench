; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_at45.c_AT91F_DataflashProbe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_at45.c_AT91F_DataflashProbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AT91F_DataflashProbe(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @AT91F_SpiEnable(i32 %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = call i32 @AT91F_DataFlashGetStatus(%struct.TYPE_4__* %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 255
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 60
  br label %23

23:                                               ; preds = %16, %15
  %24 = phi i32 [ 0, %15 ], [ %22, %16 ]
  ret i32 %24
}

declare dso_local i32 @AT91F_SpiEnable(i32) #1

declare dso_local i32 @AT91F_DataFlashGetStatus(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
