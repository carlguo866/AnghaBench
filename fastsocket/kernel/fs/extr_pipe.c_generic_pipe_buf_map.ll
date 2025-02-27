; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_generic_pipe_buf_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_generic_pipe_buf_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, i32 }

@PIPE_BUF_FLAG_ATOMIC = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @generic_pipe_buf_map(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca %struct.pipe_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %5, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load i32, i32* @PIPE_BUF_FLAG_ATOMIC, align 4
  %12 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %13 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @KM_USER0, align 4
  %20 = call i8* @kmap_atomic(i32 %18, i32 %19)
  store i8* %20, i8** %4, align 8
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @kmap(i32 %24)
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %21, %10
  %27 = load i8*, i8** %4, align 8
  ret i8* %27
}

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i8* @kmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
