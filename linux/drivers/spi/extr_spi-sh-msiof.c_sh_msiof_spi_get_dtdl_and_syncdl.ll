; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_get_dtdl_and_syncdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_get_dtdl_and_syncdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_msiof_spi_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"DTDL or SYNCDL is too large\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"the sum of DTDL/SYNCDL is not good\0A\00", align 1
@MDR1_DTDL_SHIFT = common dso_local global i32 0, align 4
@MDR1_SYNCDL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_msiof_spi_priv*)* @sh_msiof_spi_get_dtdl_and_syncdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_msiof_spi_get_dtdl_and_syncdl(%struct.sh_msiof_spi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_msiof_spi_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.sh_msiof_spi_priv* %0, %struct.sh_msiof_spi_priv** %3, align 8
  %5 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %6 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

10:                                               ; preds = %1
  %11 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %12 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 200
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %19 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 300
  br i1 %23, label %24, label %30

24:                                               ; preds = %17, %10
  %25 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %26 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %70

30:                                               ; preds = %17
  %31 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %32 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %37 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %35, %40
  %42 = srem i32 %41, 100
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %46 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @dev_warn(i32* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %70

50:                                               ; preds = %30
  %51 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %52 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sh_msiof_get_delay_bit(i32 %55)
  %57 = load i32, i32* @MDR1_DTDL_SHIFT, align 4
  %58 = shl i32 %56, %57
  store i32 %58, i32* %4, align 4
  %59 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %60 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sh_msiof_get_delay_bit(i32 %63)
  %65 = load i32, i32* @MDR1_SYNCDL_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %50, %44, %24, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @sh_msiof_get_delay_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
