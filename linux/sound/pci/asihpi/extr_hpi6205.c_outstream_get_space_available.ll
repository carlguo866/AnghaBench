; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_outstream_get_space_available.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_outstream_get_space_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_hostbuffer_status = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hpi_hostbuffer_status*)* @outstream_get_space_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @outstream_get_space_available(%struct.hpi_hostbuffer_status* %0) #0 {
  %2 = alloca %struct.hpi_hostbuffer_status*, align 8
  store %struct.hpi_hostbuffer_status* %0, %struct.hpi_hostbuffer_status** %2, align 8
  %3 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %2, align 8
  %4 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %2, align 8
  %7 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.hpi_hostbuffer_status*, %struct.hpi_hostbuffer_status** %2, align 8
  %10 = getelementptr inbounds %struct.hpi_hostbuffer_status, %struct.hpi_hostbuffer_status* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = sub nsw i64 %5, %12
  ret i64 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
