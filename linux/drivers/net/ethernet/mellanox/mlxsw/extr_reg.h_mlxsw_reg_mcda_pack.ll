; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_mcda_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_mcda_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcda = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32*)* @mlxsw_reg_mcda_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_mcda_pack(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* @mcda, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @MLXSW_REG_ZERO(i32 %12, i8* %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @mlxsw_reg_mcda_update_handle_set(i8* %15, i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @mlxsw_reg_mcda_offset_set(i8* %18, i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @mlxsw_reg_mcda_size_set(i8* %21, i32 %22)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %39, %5
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sdiv i32 %26, 4
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mlxsw_reg_mcda_data_set(i8* %30, i32 %31, i32 %37)
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %24

42:                                               ; preds = %24
  ret void
}

declare dso_local i32 @MLXSW_REG_ZERO(i32, i8*) #1

declare dso_local i32 @mlxsw_reg_mcda_update_handle_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_mcda_offset_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_mcda_size_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_mcda_data_set(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
