; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_refqueue.c_mp_refqueue_flush.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_refqueue.c_mp_refqueue_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_refqueue = type { i32, i32, i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_refqueue_flush(%struct.mp_refqueue* %0) #0 {
  %2 = alloca %struct.mp_refqueue*, align 8
  %3 = alloca i32, align 4
  store %struct.mp_refqueue* %0, %struct.mp_refqueue** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %7 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %12 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @talloc_free(i32 %17)
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %24 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %26 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %25, i32 0, i32 1
  store i32 -1, i32* %26, align 4
  %27 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %28 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %30 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %29, i32 0, i32 3
  store i32 0, i32* %30, align 4
  %31 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %32 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %31, i32 0, i32 4
  %33 = call i32 @mp_image_unrefp(i32* %32)
  ret void
}

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @mp_image_unrefp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
