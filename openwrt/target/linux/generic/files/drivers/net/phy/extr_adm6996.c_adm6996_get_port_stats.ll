; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_get_port_stats.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_get_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.switch_dev = type { i32 }
%struct.switch_port_stats = type { i32, i32 }
%struct.adm6996_priv = type { i32 }

@ADM_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADM6996_MIB_TXB_ID = common dso_local global i32 0, align 4
@adm6996_mibs = common dso_local global %struct.TYPE_2__* null, align 8
@ADM6996_MIB_RXB_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_stats*)* @adm6996_get_port_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996_get_port_stats(%struct.switch_dev* %0, i32 %1, %struct.switch_port_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_stats*, align 8
  %8 = alloca %struct.adm6996_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_stats* %2, %struct.switch_port_stats** %7, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %12 = call %struct.adm6996_priv* @to_adm(%struct.switch_dev* %11)
  store %struct.adm6996_priv* %12, %struct.adm6996_priv** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ADM_NUM_PORTS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %86

19:                                               ; preds = %3
  %20 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %21 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* @ADM6996_MIB_TXB_ID, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adm6996_mibs, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @ADM_OFFSET_PORT(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @r16(%struct.adm6996_priv* %24, i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adm6996_mibs, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @ADM_OFFSET_PORT(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = add nsw i64 %44, 1
  %46 = call i32 @r16(%struct.adm6996_priv* %35, i64 %45)
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.switch_port_stats*, %struct.switch_port_stats** %7, align 8
  %52 = getelementptr inbounds %struct.switch_port_stats, %struct.switch_port_stats* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ADM6996_MIB_RXB_ID, align 4
  store i32 %53, i32* %9, align 4
  %54 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adm6996_mibs, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @ADM_OFFSET_PORT(i32 %61)
  %63 = add nsw i64 %60, %62
  %64 = call i32 @r16(%struct.adm6996_priv* %54, i64 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adm6996_mibs, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @ADM_OFFSET_PORT(i32 %72)
  %74 = add nsw i64 %71, %73
  %75 = add nsw i64 %74, 1
  %76 = call i32 @r16(%struct.adm6996_priv* %65, i64 %75)
  %77 = shl i32 %76, 16
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.switch_port_stats*, %struct.switch_port_stats** %7, align 8
  %82 = getelementptr inbounds %struct.switch_port_stats, %struct.switch_port_stats* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.adm6996_priv*, %struct.adm6996_priv** %8, align 8
  %84 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %19, %16
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.adm6996_priv* @to_adm(%struct.switch_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @r16(%struct.adm6996_priv*, i64) #1

declare dso_local i64 @ADM_OFFSET_PORT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
