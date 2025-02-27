; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_prepare_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_prepare_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.fsi_i2c_port* }
%struct.fsi_i2c_port = type { %struct.fsi_i2c_master* }
%struct.fsi_i2c_master = type { i32 }

@I2C_FSI_MODE = common dso_local global i32 0, align 4
@I2C_MODE_DIAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @fsi_i2c_prepare_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_i2c_prepare_recovery(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_i2c_port*, align 8
  %6 = alloca %struct.fsi_i2c_master*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %7, i32 0, i32 0
  %9 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %8, align 8
  store %struct.fsi_i2c_port* %9, %struct.fsi_i2c_port** %5, align 8
  %10 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %11 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %10, i32 0, i32 0
  %12 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %11, align 8
  store %struct.fsi_i2c_master* %12, %struct.fsi_i2c_master** %6, align 8
  %13 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %6, align 8
  %14 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_FSI_MODE, align 4
  %17 = call i32 @fsi_i2c_read_reg(i32 %15, i32 %16, i32* %4)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %30

21:                                               ; preds = %1
  %22 = load i32, i32* @I2C_MODE_DIAG, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %6, align 8
  %26 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I2C_FSI_MODE, align 4
  %29 = call i32 @fsi_i2c_write_reg(i32 %27, i32 %28, i32* %4)
  br label %30

30:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @fsi_i2c_read_reg(i32, i32, i32*) #1

declare dso_local i32 @fsi_i2c_write_reg(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
