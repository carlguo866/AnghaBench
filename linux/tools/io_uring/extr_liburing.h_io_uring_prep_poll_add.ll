; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_liburing.h_io_uring_prep_poll_add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_liburing.h_io_uring_prep_poll_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring_sqe = type { i32, i16, i32 }

@IORING_OP_POLL_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_uring_sqe*, i32, i16)* @io_uring_prep_poll_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_uring_prep_poll_add(%struct.io_uring_sqe* %0, i32 %1, i16 signext %2) #0 {
  %4 = alloca %struct.io_uring_sqe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.io_uring_sqe* %0, %struct.io_uring_sqe** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %7 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %4, align 8
  %8 = call i32 @memset(%struct.io_uring_sqe* %7, i32 0, i32 12)
  %9 = load i32, i32* @IORING_OP_POLL_ADD, align 4
  %10 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %4, align 8
  %11 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %4, align 8
  %14 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i16, i16* %6, align 2
  %16 = load %struct.io_uring_sqe*, %struct.io_uring_sqe** %4, align 8
  %17 = getelementptr inbounds %struct.io_uring_sqe, %struct.io_uring_sqe* %16, i32 0, i32 1
  store i16 %15, i16* %17, align 4
  ret void
}

declare dso_local i32 @memset(%struct.io_uring_sqe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
