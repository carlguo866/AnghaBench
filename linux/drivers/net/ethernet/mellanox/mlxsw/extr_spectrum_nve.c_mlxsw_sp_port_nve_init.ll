; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_port_nve_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_port_nve_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_TNQDR_LEN = common dso_local global i32 0, align 4
@tnqdr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_port_nve_init(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_port*, align 8
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %2, align 8
  %6 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %6, i32 0, i32 1
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  store %struct.mlxsw_sp* %8, %struct.mlxsw_sp** %3, align 8
  %9 = load i32, i32* @MLXSW_REG_TNQDR_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %2, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mlxsw_reg_tnqdr_pack(i8* %12, i32 %15)
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @tnqdr, align 4
  %21 = call i32 @MLXSW_REG(i32 %20)
  %22 = call i32 @mlxsw_reg_write(i32 %19, i32 %21, i8* %12)
  %23 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %23)
  ret i32 %22
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_tnqdr_pack(i8*, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
