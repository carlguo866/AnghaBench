; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-ps-spi.c_id_to_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-ps-spi.c_id_to_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_ps_data = type { i64 }
%struct.spi_device_id = type { i64 }

@altera_ps_data_map = common dso_local global %struct.altera_ps_data** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.altera_ps_data* (%struct.spi_device_id*)* @id_to_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.altera_ps_data* @id_to_data(%struct.spi_device_id* %0) #0 {
  %2 = alloca %struct.altera_ps_data*, align 8
  %3 = alloca %struct.spi_device_id*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.altera_ps_data*, align 8
  store %struct.spi_device_id* %0, %struct.spi_device_id** %3, align 8
  %6 = load %struct.spi_device_id*, %struct.spi_device_id** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.altera_ps_data**, %struct.altera_ps_data*** @altera_ps_data_map, align 8
  %11 = call i64 @ARRAY_SIZE(%struct.altera_ps_data** %10)
  %12 = icmp uge i64 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.altera_ps_data* null, %struct.altera_ps_data** %2, align 8
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.altera_ps_data**, %struct.altera_ps_data*** @altera_ps_data_map, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.altera_ps_data*, %struct.altera_ps_data** %15, i64 %16
  %18 = load %struct.altera_ps_data*, %struct.altera_ps_data** %17, align 8
  store %struct.altera_ps_data* %18, %struct.altera_ps_data** %5, align 8
  %19 = load %struct.altera_ps_data*, %struct.altera_ps_data** %5, align 8
  %20 = icmp ne %struct.altera_ps_data* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.altera_ps_data*, %struct.altera_ps_data** %5, align 8
  %23 = getelementptr inbounds %struct.altera_ps_data, %struct.altera_ps_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %14
  store %struct.altera_ps_data* null, %struct.altera_ps_data** %2, align 8
  br label %30

28:                                               ; preds = %21
  %29 = load %struct.altera_ps_data*, %struct.altera_ps_data** %5, align 8
  store %struct.altera_ps_data* %29, %struct.altera_ps_data** %2, align 8
  br label %30

30:                                               ; preds = %28, %27, %13
  %31 = load %struct.altera_ps_data*, %struct.altera_ps_data** %2, align 8
  ret %struct.altera_ps_data* %31
}

declare dso_local i64 @ARRAY_SIZE(%struct.altera_ps_data**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
