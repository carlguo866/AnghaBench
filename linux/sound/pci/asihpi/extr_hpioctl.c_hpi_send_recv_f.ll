; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpioctl.c_hpi_send_recv_f.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpioctl.c_hpi_send_recv_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { i64, i64 }
%struct.hpi_response = type { i32 }
%struct.file = type { i32 }

@HPI_MAX_ADAPTERS = common dso_local global i64 0, align 8
@HPI_OBJ_SUBSYSTEM = common dso_local global i64 0, align 8
@HPI_ERROR_INVALID_OBJ_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_message*, %struct.hpi_response*, %struct.file*)* @hpi_send_recv_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpi_send_recv_f(%struct.hpi_message* %0, %struct.hpi_response* %1, %struct.file* %2) #0 {
  %4 = alloca %struct.hpi_message*, align 8
  %5 = alloca %struct.hpi_response*, align 8
  %6 = alloca %struct.file*, align 8
  store %struct.hpi_message* %0, %struct.hpi_message** %4, align 8
  store %struct.hpi_response* %1, %struct.hpi_response** %5, align 8
  store %struct.file* %2, %struct.file** %6, align 8
  %7 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %8 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HPI_MAX_ADAPTERS, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %14 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HPI_OBJ_SUBSYSTEM, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @HPI_ERROR_INVALID_OBJ_INDEX, align 4
  %20 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %21 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %27

22:                                               ; preds = %12, %3
  %23 = load %struct.hpi_message*, %struct.hpi_message** %4, align 8
  %24 = load %struct.hpi_response*, %struct.hpi_response** %5, align 8
  %25 = load %struct.file*, %struct.file** %6, align 8
  %26 = call i32 @hpi_send_recv_ex(%struct.hpi_message* %23, %struct.hpi_response* %24, %struct.file* %25)
  br label %27

27:                                               ; preds = %22, %18
  ret void
}

declare dso_local i32 @hpi_send_recv_ex(%struct.hpi_message*, %struct.hpi_response*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
