; ModuleID = '/home/carl/AnghaBench/sway/client/extr_pool-buffer.c_destroy_buffer.c'
source_filename = "/home/carl/AnghaBench/sway/client/extr_pool-buffer.c_destroy_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool_buffer = type { i32, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_buffer(%struct.pool_buffer* %0) #0 {
  %2 = alloca %struct.pool_buffer*, align 8
  store %struct.pool_buffer* %0, %struct.pool_buffer** %2, align 8
  %3 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %4 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @wl_buffer_destroy(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @cairo_destroy(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %24 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %29 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @cairo_surface_destroy(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %34 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %39 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @g_object_unref(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %44 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %49 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %52 = getelementptr inbounds %struct.pool_buffer, %struct.pool_buffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @munmap(i64 %50, i32 %53)
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.pool_buffer*, %struct.pool_buffer** %2, align 8
  %57 = call i32 @memset(%struct.pool_buffer* %56, i32 0, i32 48)
  ret void
}

declare dso_local i32 @wl_buffer_destroy(i64) #1

declare dso_local i32 @cairo_destroy(i64) #1

declare dso_local i32 @cairo_surface_destroy(i64) #1

declare dso_local i32 @g_object_unref(i64) #1

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local i32 @memset(%struct.pool_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
