; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_CmpBool.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_variables.c_CmpBool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @CmpBool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CmpBool(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %1, i64* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 0, i32 1
  br label %22

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 -1, i32 0
  br label %22

22:                                               ; preds = %16, %10
  %23 = phi i32 [ %15, %10 ], [ %21, %16 ]
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
