; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_openport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_openport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_port_info = type { i32, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FST_RUNNING = common dso_local global i64 0, align 8
@DBG_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"open: found port already running\0A\00", align 1
@STOPPORT = common dso_local global i32 0, align 4
@OPSTS_RTS = common dso_local global i32 0, align 4
@OPSTS_DTR = common dso_local global i32 0, align 4
@STARTPORT = common dso_local global i32 0, align 4
@v24DebouncedSts = common dso_local global i32* null, align 8
@X21 = common dso_local global i64 0, align 8
@X21D = common dso_local global i64 0, align 8
@IPSTS_INDICATE = common dso_local global i32 0, align 4
@IPSTS_DCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_port_info*)* @fst_openport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_openport(%struct.fst_port_info* %0) #0 {
  %2 = alloca %struct.fst_port_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fst_port_info* %0, %struct.fst_port_info** %2, align 8
  %5 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %6 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %5, i32 0, i32 5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FST_RUNNING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %90

12:                                               ; preds = %1
  %13 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %14 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32, i32* @DBG_OPEN, align 4
  %19 = call i32 @dbg(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %21 = load i32, i32* @STOPPORT, align 4
  %22 = call i32 @fst_issue_cmd(%struct.fst_port_info* %20, i32 %21)
  %23 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %24 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %17, %12
  %26 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %27 = call i32 @fst_rx_config(%struct.fst_port_info* %26)
  %28 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %29 = call i32 @fst_tx_config(%struct.fst_port_info* %28)
  %30 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %31 = load i32, i32* @OPSTS_RTS, align 4
  %32 = load i32, i32* @OPSTS_DTR, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @fst_op_raise(%struct.fst_port_info* %30, i32 %33)
  %35 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %36 = load i32, i32* @STARTPORT, align 4
  %37 = call i32 @fst_issue_cmd(%struct.fst_port_info* %35, i32 %36)
  %38 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %39 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %41 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %40, i32 0, i32 5
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32*, i32** @v24DebouncedSts, align 8
  %44 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %45 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @FST_RDL(%struct.TYPE_2__* %42, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %52 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @X21, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %25
  %57 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %58 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @X21D, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %25
  %63 = load i32, i32* @IPSTS_INDICATE, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @IPSTS_DCD, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = and i32 %50, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %72 = call i32 @port_to_dev(%struct.fst_port_info* %71)
  %73 = call i32 @netif_carrier_on(i32 %72)
  br label %78

74:                                               ; preds = %66
  %75 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %76 = call i32 @port_to_dev(%struct.fst_port_info* %75)
  %77 = call i32 @netif_carrier_off(i32 %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %80 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %83 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %81, %84
  store i32 %85, i32* %4, align 4
  %86 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %87 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %86, i32 0, i32 3
  store i32 0, i32* %87, align 8
  %88 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %89 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %88, i32 0, i32 4
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %78, %1
  ret void
}

declare dso_local i32 @dbg(i32, i8*) #1

declare dso_local i32 @fst_issue_cmd(%struct.fst_port_info*, i32) #1

declare dso_local i32 @fst_rx_config(%struct.fst_port_info*) #1

declare dso_local i32 @fst_tx_config(%struct.fst_port_info*) #1

declare dso_local i32 @fst_op_raise(%struct.fst_port_info*, i32) #1

declare dso_local i32 @FST_RDL(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @port_to_dev(%struct.fst_port_info*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
