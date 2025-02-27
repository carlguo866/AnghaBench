; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_qdio_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_qdio_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_buffer = type { i32 }

@QBUFF_PER_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdio_free_buffers(%struct.qdio_buffer** %0, i32 %1) #0 {
  %3 = alloca %struct.qdio_buffer**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qdio_buffer** %0, %struct.qdio_buffer*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = load %struct.qdio_buffer**, %struct.qdio_buffer*** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.qdio_buffer*, %struct.qdio_buffer** %11, i64 %13
  %15 = load %struct.qdio_buffer*, %struct.qdio_buffer** %14, align 8
  %16 = ptrtoint %struct.qdio_buffer* %15 to i64
  %17 = call i32 @free_page(i64 %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i64, i64* @QBUFF_PER_PAGE, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  br label %6

24:                                               ; preds = %6
  ret void
}

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
