; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_percpu.c_pcpu_chunk_slot.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_percpu.c_pcpu_chunk_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_chunk = type { i32, %struct.pcpu_block_md }
%struct.pcpu_block_md = type { i32 }

@PCPU_MIN_ALLOC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcpu_chunk*)* @pcpu_chunk_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcpu_chunk_slot(%struct.pcpu_chunk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcpu_chunk*, align 8
  %4 = alloca %struct.pcpu_block_md*, align 8
  store %struct.pcpu_chunk* %0, %struct.pcpu_chunk** %3, align 8
  %5 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %3, align 8
  %6 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %5, i32 0, i32 1
  store %struct.pcpu_block_md* %6, %struct.pcpu_block_md** %4, align 8
  %7 = load %struct.pcpu_chunk*, %struct.pcpu_chunk** %3, align 8
  %8 = getelementptr inbounds %struct.pcpu_chunk, %struct.pcpu_chunk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PCPU_MIN_ALLOC_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %4, align 8
  %14 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %25

18:                                               ; preds = %12
  %19 = load %struct.pcpu_block_md*, %struct.pcpu_block_md** %4, align 8
  %20 = getelementptr inbounds %struct.pcpu_block_md, %struct.pcpu_block_md* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCPU_MIN_ALLOC_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = call i32 @pcpu_size_to_slot(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @pcpu_size_to_slot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
