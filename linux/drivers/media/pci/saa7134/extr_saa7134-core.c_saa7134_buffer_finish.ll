; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_buffer_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_buffer_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }
%struct.saa7134_dmaqueue = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"buffer_finish %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_buffer_finish(%struct.saa7134_dev* %0, %struct.saa7134_dmaqueue* %1, i32 %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_dmaqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_dmaqueue* %1, %struct.saa7134_dmaqueue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %5, align 8
  %8 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = call i32 @core_dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %9)
  %11 = call i32 (...) @ktime_get_ns()
  %12 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %5, align 8
  %13 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %11, i32* %17, align 8
  %18 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %5, align 8
  %19 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %5, align 8
  %24 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i64 %22, i64* %27, align 8
  %28 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %5, align 8
  %29 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @vb2_buffer_done(%struct.TYPE_5__* %32, i32 %33)
  %35 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %5, align 8
  %36 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %35, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %36, align 8
  ret void
}

declare dso_local i32 @core_dbg(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
