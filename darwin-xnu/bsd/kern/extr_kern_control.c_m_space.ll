; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_m_space.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_m_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, %struct.mbuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*)* @m_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_space(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  store %struct.mbuf* %5, %struct.mbuf** %4, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %8 = icmp ne %struct.mbuf* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %11 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %9
  %18 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 1
  %20 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  store %struct.mbuf* %20, %struct.mbuf** %4, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
