; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_list_head_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_list_head_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }

@RB_FLAG_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*)* @rb_list_head_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_list_head_clear(%struct.list_head* %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca i64*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  %4 = load %struct.list_head*, %struct.list_head** %2, align 8
  %5 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 0
  %6 = bitcast i32* %5 to i64*
  store i64* %6, i64** %3, align 8
  %7 = load i64, i64* @RB_FLAG_MASK, align 8
  %8 = xor i64 %7, -1
  %9 = load i64*, i64** %3, align 8
  %10 = load i64, i64* %9, align 8
  %11 = and i64 %10, %8
  store i64 %11, i64* %9, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
