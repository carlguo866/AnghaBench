; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }

@meye = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MEYE_MAX_BUFNBRS = common dso_local global i32 0, align 4
@MEYE_BUF_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0))
  %8 = call i32 (...) @mchip_hic_stop()
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 3), align 4
  %10 = call i32 @kfifo_reset(i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 2), align 8
  %12 = call i32 @kfifo_reset(i32 %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %24, %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MEYE_MAX_BUFNBRS, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i32, i32* @MEYE_BUF_UNUSED, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 1), align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 4
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %13

27:                                               ; preds = %13
  %28 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0))
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mchip_hic_stop(...) #1

declare dso_local i32 @kfifo_reset(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
