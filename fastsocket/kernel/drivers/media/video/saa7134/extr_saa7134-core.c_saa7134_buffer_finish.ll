; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_buffer_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_buffer_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }
%struct.saa7134_dmaqueue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"buffer_finish %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_buffer_finish(%struct.saa7134_dev* %0, %struct.saa7134_dmaqueue* %1, i32 %2) #0 {
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_dmaqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_dmaqueue* %1, %struct.saa7134_dmaqueue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %8 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %7, i32 0, i32 0
  %9 = call i32 @assert_spin_locked(i32* %8)
  %10 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %5, align 8
  %11 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %12)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %5, align 8
  %16 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %14, i32* %19, align 4
  %20 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %5, align 8
  %21 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = call i32 @do_gettimeofday(i32* %24)
  %26 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %5, align 8
  %27 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = call i32 @wake_up(i32* %30)
  %32 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %5, align 8
  %33 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %32, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %33, align 8
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @dprintk(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
