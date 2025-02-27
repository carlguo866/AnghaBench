; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capabilities = type { i32, i32, i32, i64 }
%struct.hw = type { i64 }

@CTSB1270 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.capabilities*, %struct.hw*)* @hw_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_capabilities(%struct.capabilities* noalias sret %0, %struct.hw* %1) #0 {
  %3 = alloca %struct.hw*, align 8
  store %struct.hw* %1, %struct.hw** %3, align 8
  %4 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %0, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load %struct.hw*, %struct.hw** %3, align 8
  %6 = getelementptr inbounds %struct.hw, %struct.hw* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CTSB1270, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %0, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load %struct.hw*, %struct.hw** %3, align 8
  %13 = getelementptr inbounds %struct.hw, %struct.hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CTSB1270, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %0, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.hw*, %struct.hw** %3, align 8
  %20 = getelementptr inbounds %struct.hw, %struct.hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CTSB1270, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %struct.capabilities, %struct.capabilities* %0, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
