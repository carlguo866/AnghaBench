; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_rx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }

@ENTER = common dso_local global i32 0, align 4
@regRXD_CFG0_0 = common dso_local global i32 0, align 4
@regRXD_CFG1_0 = common dso_local global i32 0, align 4
@regRXD_RPTR_0 = common dso_local global i32 0, align 4
@regRXD_WPTR_0 = common dso_local global i32 0, align 4
@regRXF_CFG0_0 = common dso_local global i32 0, align 4
@regRXF_CFG1_0 = common dso_local global i32 0, align 4
@regRXF_RPTR_0 = common dso_local global i32 0, align 4
@regRXF_WPTR_0 = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"%s: %s: Rx init failed\0A\00", align 1
@BDX_DRV_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdx_priv*)* @bdx_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_rx_init(%struct.bdx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdx_priv*, align 8
  store %struct.bdx_priv* %0, %struct.bdx_priv** %3, align 8
  %4 = load i32, i32* @ENTER, align 4
  %5 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %6 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %7 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %10 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @regRXD_CFG0_0, align 4
  %13 = load i32, i32* @regRXD_CFG1_0, align 4
  %14 = load i32, i32* @regRXD_RPTR_0, align 4
  %15 = load i32, i32* @regRXD_WPTR_0, align 4
  %16 = call i64 @bdx_fifo_init(%struct.bdx_priv* %5, %struct.TYPE_8__* %8, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %60

19:                                               ; preds = %1
  %20 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %21 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %22 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %25 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @regRXF_CFG0_0, align 4
  %28 = load i32, i32* @regRXF_CFG1_0, align 4
  %29 = load i32, i32* @regRXF_RPTR_0, align 4
  %30 = load i32, i32* @regRXF_WPTR_0, align 4
  %31 = call i64 @bdx_fifo_init(%struct.bdx_priv* %20, %struct.TYPE_8__* %23, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %60

34:                                               ; preds = %19
  %35 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %36 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = udiv i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @bdx_rxdb_create(i32 %42)
  %44 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %45 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = icmp ne i32 %43, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  br label %60

48:                                               ; preds = %34
  %49 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %50 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VLAN_ETH_HLEN, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %57 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i64 %55, i64* %59, align 8
  store i32 0, i32* %2, align 4
  br label %70

60:                                               ; preds = %47, %33, %18
  %61 = load i32, i32* @BDX_DRV_NAME, align 4
  %62 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %63 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %66)
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %60, %48
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @bdx_fifo_init(%struct.bdx_priv*, %struct.TYPE_8__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bdx_rxdb_create(i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
