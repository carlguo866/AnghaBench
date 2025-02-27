; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-xfer-mode.c_ide_rate_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-xfer-mode.c_ide_rate_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_PIO_4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64)* @ide_rate_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ide_rate_filter(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @ide_find_dma_mode(%struct.TYPE_6__* %10, i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @fls(i64 %23)
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* @XFER_PIO_0, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %6, align 8
  br label %31

29:                                               ; preds = %15
  %30 = load i64, i64* @XFER_PIO_4, align 8
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %29, %20
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @min(i64 %33, i64 %34)
  ret i64 %35
}

declare dso_local i64 @ide_find_dma_mode(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
