; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.h_quat_inv.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.h_quat_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quat = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.quat*, %struct.quat*)* @quat_inv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quat_inv(%struct.quat* %0, %struct.quat* %1) #0 {
  %3 = alloca %struct.quat*, align 8
  %4 = alloca %struct.quat*, align 8
  store %struct.quat* %0, %struct.quat** %3, align 8
  store %struct.quat* %1, %struct.quat** %4, align 8
  %5 = load %struct.quat*, %struct.quat** %4, align 8
  %6 = getelementptr inbounds %struct.quat, %struct.quat* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 0, %7
  %9 = load %struct.quat*, %struct.quat** %3, align 8
  %10 = getelementptr inbounds %struct.quat, %struct.quat* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.quat*, %struct.quat** %4, align 8
  %12 = getelementptr inbounds %struct.quat, %struct.quat* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 0, %13
  %15 = load %struct.quat*, %struct.quat** %3, align 8
  %16 = getelementptr inbounds %struct.quat, %struct.quat* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.quat*, %struct.quat** %4, align 8
  %18 = getelementptr inbounds %struct.quat, %struct.quat* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 0, %19
  %21 = load %struct.quat*, %struct.quat** %3, align 8
  %22 = getelementptr inbounds %struct.quat, %struct.quat* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
