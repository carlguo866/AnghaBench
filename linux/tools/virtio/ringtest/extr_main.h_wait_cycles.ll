; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_main.h_wait_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_main.h_wait_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @wait_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_cycles(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i64 @llvm.x86.rdtsc()
  store i64 %4, i64* %3, align 8
  br label %5

5:                                                ; preds = %11, %1
  %6 = call i64 @llvm.x86.rdtsc()
  %7 = load i64, i64* %3, align 8
  %8 = sub i64 %6, %7
  %9 = load i64, i64* %2, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %5

12:                                               ; preds = %5
  ret void
}

; Function Attrs: nounwind
declare i64 @llvm.x86.rdtsc() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
