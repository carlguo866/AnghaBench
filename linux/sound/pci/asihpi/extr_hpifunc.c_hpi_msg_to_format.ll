; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_msg_to_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_msg_to_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_format = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.hpi_msg_format = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_format*, %struct.hpi_msg_format*)* @hpi_msg_to_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpi_msg_to_format(%struct.hpi_format* %0, %struct.hpi_msg_format* %1) #0 {
  %3 = alloca %struct.hpi_format*, align 8
  %4 = alloca %struct.hpi_msg_format*, align 8
  store %struct.hpi_format* %0, %struct.hpi_format** %3, align 8
  store %struct.hpi_msg_format* %1, %struct.hpi_msg_format** %4, align 8
  %5 = load %struct.hpi_msg_format*, %struct.hpi_msg_format** %4, align 8
  %6 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hpi_format*, %struct.hpi_format** %3, align 8
  %9 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 8
  %10 = load %struct.hpi_msg_format*, %struct.hpi_msg_format** %4, align 8
  %11 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hpi_format*, %struct.hpi_format** %3, align 8
  %14 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.hpi_msg_format*, %struct.hpi_msg_format** %4, align 8
  %16 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hpi_format*, %struct.hpi_format** %3, align 8
  %19 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.hpi_msg_format*, %struct.hpi_msg_format** %4, align 8
  %21 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hpi_format*, %struct.hpi_format** %3, align 8
  %24 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hpi_msg_format*, %struct.hpi_msg_format** %4, align 8
  %26 = getelementptr inbounds %struct.hpi_msg_format, %struct.hpi_msg_format* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hpi_format*, %struct.hpi_format** %3, align 8
  %29 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.hpi_format*, %struct.hpi_format** %3, align 8
  %31 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.hpi_format*, %struct.hpi_format** %3, align 8
  %33 = getelementptr inbounds %struct.hpi_format, %struct.hpi_format* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
