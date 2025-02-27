; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRxEnabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRxEnabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.agg_tid_rx = type { i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_WLAN_DATA_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"In                   %5d, %12u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agg_tid_rx* @zfAggRxEnabled(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.agg_tid_rx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @zmw_get_wlan_dev(i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @zmw_rx_buf_readh(i32* %20, i32* %21, i32 22)
  %23 = ashr i32 %22, 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store %struct.agg_tid_rx* null, %struct.agg_tid_rx** %3, align 8
  br label %80

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @zmw_rx_buf_readb(i32* %31, i32* %32, i32 0)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = and i32 %34, 15
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = and i32 %36, 240
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @ZM_WLAN_DATA_FRAME, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store %struct.agg_tid_rx* null, %struct.agg_tid_rx** %3, align 8
  br label %80

42:                                               ; preds = %30
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @ZM_SEQ_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 4
  %50 = call i32 @zmw_rx_buf_readh(i32* %46, i32* %47, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 10
  %55 = call i32 @zmw_rx_buf_readh(i32* %51, i32* %52, i32 %54)
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 12
  %61 = call i32 @zmw_rx_buf_readh(i32* %57, i32* %58, i32 %60)
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 14
  %67 = call i32 @zmw_rx_buf_readh(i32* %63, i32* %64, i32 %66)
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 %67, i32* %68, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %71 = call i32 @zfApFindSta(i32* %69, i32* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %42
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store %struct.agg_tid_rx* null, %struct.agg_tid_rx** %3, align 8
  br label %80

79:                                               ; preds = %75, %42
  store %struct.agg_tid_rx* null, %struct.agg_tid_rx** %3, align 8
  br label %80

80:                                               ; preds = %79, %78, %41, %29
  %81 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %3, align 8
  ret %struct.agg_tid_rx* %81
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @ZM_SEQ_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @zfApFindSta(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
