; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c___next_handle.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c___next_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amp_mgr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amp_mgr*)* @__next_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__next_handle(%struct.amp_mgr* %0) #0 {
  %2 = alloca %struct.amp_mgr*, align 8
  store %struct.amp_mgr* %0, %struct.amp_mgr** %2, align 8
  %3 = load %struct.amp_mgr*, %struct.amp_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, 1
  store i64 %6, i64* %4, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.amp_mgr*, %struct.amp_mgr** %2, align 8
  %10 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %9, i32 0, i32 0
  store i64 1, i64* %10, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.amp_mgr*, %struct.amp_mgr** %2, align 8
  %13 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
