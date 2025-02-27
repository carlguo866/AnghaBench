; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_f_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_f_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@FORMAT_HEADER = common dso_local global i64 0, align 8
@event_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i64*)* @f_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @f_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i64, i64* @FORMAT_HEADER, align 8
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = call i32 @mutex_lock(i32* @event_mutex)
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @event_file_data(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i8* @ERR_PTR(i32 %18)
  store i8* %19, i8** %3, align 8
  br label %37

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i64, i64* %7, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i1 [ false, %21 ], [ %28, %26 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @f_next(%struct.seq_file* %32, i8* %33, i64* %7)
  store i8* %34, i8** %6, align 8
  br label %21

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %35, %16
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @event_file_data(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @f_next(%struct.seq_file*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
