; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atpx_handler.c_radeon_atpx_switch_i2c_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atpx_handler.c_radeon_atpx_switch_i2c_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_atpx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.acpi_buffer = type { i32, %struct.atpx_mux* }
%struct.atpx_mux = type { i32, i32 }
%union.acpi_object = type { i32 }

@ATPX_FUNCTION_I2C_MUX_CONTROL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_atpx*, i32)* @radeon_atpx_switch_i2c_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_atpx_switch_i2c_mux(%struct.radeon_atpx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_atpx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.atpx_mux, align 4
  store %struct.radeon_atpx* %0, %struct.radeon_atpx** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.radeon_atpx*, %struct.radeon_atpx** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.atpx_mux, %struct.atpx_mux* %8, i32 0, i32 0
  store i32 4, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.atpx_mux, %struct.atpx_mux* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.atpx_mux, %struct.atpx_mux* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store %struct.atpx_mux* %8, %struct.atpx_mux** %21, align 8
  %22 = load %struct.radeon_atpx*, %struct.radeon_atpx** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_atpx, %struct.radeon_atpx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ATPX_FUNCTION_I2C_MUX_CONTROL, align 4
  %26 = call %union.acpi_object* @radeon_atpx_call(i32 %24, i32 %25, %struct.acpi_buffer* %6)
  store %union.acpi_object* %26, %union.acpi_object** %7, align 8
  %27 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %28 = icmp ne %union.acpi_object* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %14
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %14
  %33 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %34 = call i32 @kfree(%union.acpi_object* %33)
  br label %35

35:                                               ; preds = %32, %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %union.acpi_object* @radeon_atpx_call(i32, i32, %struct.acpi_buffer*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
