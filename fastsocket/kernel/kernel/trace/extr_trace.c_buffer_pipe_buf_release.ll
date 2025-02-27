; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_buffer_pipe_buf_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_buffer_pipe_buf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i64 }
%struct.buffer_ref = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_inode_info*, %struct.pipe_buffer*)* @buffer_pipe_buf_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_pipe_buf_release(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1) #0 {
  %3 = alloca %struct.pipe_inode_info*, align 8
  %4 = alloca %struct.pipe_buffer*, align 8
  %5 = alloca %struct.buffer_ref*, align 8
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %3, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %4, align 8
  %6 = load %struct.pipe_buffer*, %struct.pipe_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.buffer_ref*
  store %struct.buffer_ref* %9, %struct.buffer_ref** %5, align 8
  %10 = load %struct.buffer_ref*, %struct.buffer_ref** %5, align 8
  %11 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.buffer_ref*, %struct.buffer_ref** %5, align 8
  %18 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.buffer_ref*, %struct.buffer_ref** %5, align 8
  %21 = getelementptr inbounds %struct.buffer_ref, %struct.buffer_ref* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ring_buffer_free_read_page(i32 %19, i32 %22)
  %24 = load %struct.buffer_ref*, %struct.buffer_ref** %5, align 8
  %25 = call i32 @kfree(%struct.buffer_ref* %24)
  %26 = load %struct.pipe_buffer*, %struct.pipe_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @ring_buffer_free_read_page(i32, i32) #1

declare dso_local i32 @kfree(%struct.buffer_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
