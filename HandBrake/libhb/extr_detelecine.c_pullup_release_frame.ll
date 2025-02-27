; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_release_frame.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_release_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_frame = type { i32, i32, i32, i64, i64*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pullup_release_frame(%struct.pullup_frame* %0) #0 {
  %2 = alloca %struct.pullup_frame*, align 8
  %3 = alloca i32, align 4
  store %struct.pullup_frame* %0, %struct.pullup_frame** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.pullup_frame*, %struct.pullup_frame** %2, align 8
  %7 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = load %struct.pullup_frame*, %struct.pullup_frame** %2, align 8
  %12 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %11, i32 0, i32 5
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.pullup_frame*, %struct.pullup_frame** %2, align 8
  %19 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 1
  %23 = xor i32 %20, %22
  %24 = call i32 @pullup_release_buffer(i64 %17, i32 %23)
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %4

28:                                               ; preds = %4
  %29 = load %struct.pullup_frame*, %struct.pullup_frame** %2, align 8
  %30 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %29, i32 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @pullup_release_buffer(i64 %33, i32 0)
  %35 = load %struct.pullup_frame*, %struct.pullup_frame** %2, align 8
  %36 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %35, i32 0, i32 4
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @pullup_release_buffer(i64 %39, i32 1)
  %41 = load %struct.pullup_frame*, %struct.pullup_frame** %2, align 8
  %42 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load %struct.pullup_frame*, %struct.pullup_frame** %2, align 8
  %47 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @pullup_release_buffer(i64 %48, i32 2)
  br label %50

50:                                               ; preds = %45, %28
  %51 = load %struct.pullup_frame*, %struct.pullup_frame** %2, align 8
  %52 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 8
  ret void
}

declare dso_local i32 @pullup_release_buffer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
