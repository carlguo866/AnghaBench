; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_cda_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_cda_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwchain = type { %struct.ccw1* }
%struct.ccw1 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccwchain*, i32)* @ccwchain_cda_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccwchain_cda_free(%struct.ccwchain* %0, i32 %1) #0 {
  %3 = alloca %struct.ccwchain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccw1*, align 8
  store %struct.ccwchain* %0, %struct.ccwchain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ccwchain*, %struct.ccwchain** %3, align 8
  %7 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %6, i32 0, i32 0
  %8 = load %struct.ccw1*, %struct.ccw1** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %8, i64 %10
  store %struct.ccw1* %11, %struct.ccw1** %5, align 8
  %12 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %13 = call i64 @ccw_is_tic(%struct.ccw1* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.ccw1*, %struct.ccw1** %5, align 8
  %18 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @kfree(i8* %20)
  br label %22

22:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @ccw_is_tic(%struct.ccw1*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
