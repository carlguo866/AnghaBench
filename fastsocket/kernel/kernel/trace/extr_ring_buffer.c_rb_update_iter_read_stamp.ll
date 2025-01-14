; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_update_iter_read_stamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_update_iter_read_stamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_iter = type { i32 }
%struct.ring_buffer_event = type { i32, i32, i32* }

@TS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_iter*, %struct.ring_buffer_event*)* @rb_update_iter_read_stamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_update_iter_read_stamp(%struct.ring_buffer_iter* %0, %struct.ring_buffer_event* %1) #0 {
  %3 = alloca %struct.ring_buffer_iter*, align 8
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca i32, align 4
  store %struct.ring_buffer_iter* %0, %struct.ring_buffer_iter** %3, align 8
  store %struct.ring_buffer_event* %1, %struct.ring_buffer_event** %4, align 8
  %6 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %7 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %38 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %29
    i32 131, label %30
  ]

9:                                                ; preds = %2
  br label %41

10:                                               ; preds = %2
  %11 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %12 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @TS_SHIFT, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %20 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %3, align 8
  %26 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %41

29:                                               ; preds = %2
  br label %41

30:                                               ; preds = %2
  %31 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %32 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %3, align 8
  %35 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %41

38:                                               ; preds = %2
  %39 = call i32 (...) @BUG()
  br label %40

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40, %30, %29, %10, %9
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
