; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_uhdlc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_fsl_ucc_hdlc.c_uhdlc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_9__ = type { %struct.ucc_hdlc_private* }
%struct.ucc_hdlc_private = type { i32, i32, i32, i64, i32, %struct.TYPE_7__*, %struct.ucc_tdm* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ucc_tdm = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@ucc_hdlc_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hdlc\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@QE_INIT_TX_RX = common dso_local global i32 0, align 4
@QE_CR_PROTOCOL_UNSPECIFIED = common dso_local global i32 0, align 4
@COMM_DIR_RX = common dso_local global i32 0, align 4
@COMM_DIR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @uhdlc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhdlc_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.ucc_hdlc_private*, align 8
  %7 = alloca %struct.ucc_tdm*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.TYPE_9__* @dev_to_hdlc(%struct.net_device* %8)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %11, align 8
  store %struct.ucc_hdlc_private* %12, %struct.ucc_hdlc_private** %6, align 8
  %13 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %14 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %13, i32 0, i32 6
  %15 = load %struct.ucc_tdm*, %struct.ucc_tdm** %14, align 8
  store %struct.ucc_tdm* %15, %struct.ucc_tdm** %7, align 8
  %16 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %17 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %84

20:                                               ; preds = %1
  %21 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %22 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %21, i32 0, i32 5
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ucc_hdlc_irq_handler, align 4
  %28 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %29 = call i64 @request_irq(i32 %26, i32 %27, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.ucc_hdlc_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %85

34:                                               ; preds = %20
  %35 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %36 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %35, i32 0, i32 5
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ucc_fast_get_qe_cr_subblock(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @QE_INIT_TX_RX, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @QE_CR_PROTOCOL_UNSPECIFIED, align 4
  %45 = call i32 @qe_issue_cmd(i32 %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %47 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @COMM_DIR_RX, align 4
  %50 = load i32, i32* @COMM_DIR_TX, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @ucc_fast_enable(i32 %48, i32 %51)
  %53 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %54 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %34
  %58 = load %struct.ucc_tdm*, %struct.ucc_tdm** %7, align 8
  %59 = getelementptr inbounds %struct.ucc_tdm, %struct.ucc_tdm* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 1, %60
  %62 = load %struct.ucc_tdm*, %struct.ucc_tdm** %7, align 8
  %63 = getelementptr inbounds %struct.ucc_tdm, %struct.ucc_tdm* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %57, %34
  %69 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %70 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %72 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @netif_device_attach(i32 %73)
  %75 = load %struct.ucc_hdlc_private*, %struct.ucc_hdlc_private** %6, align 8
  %76 = getelementptr inbounds %struct.ucc_hdlc_private, %struct.ucc_hdlc_private* %75, i32 0, i32 1
  %77 = call i32 @napi_enable(i32* %76)
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = call i32 @netdev_reset_queue(%struct.net_device* %78)
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = call i32 @netif_start_queue(%struct.net_device* %80)
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = call i32 @hdlc_open(%struct.net_device* %82)
  br label %84

84:                                               ; preds = %68, %1
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %31
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_9__* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.ucc_hdlc_private*) #1

declare dso_local i32 @ucc_fast_get_qe_cr_subblock(i32) #1

declare dso_local i32 @qe_issue_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @ucc_fast_enable(i32, i32) #1

declare dso_local i32 @netif_device_attach(i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netdev_reset_queue(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @hdlc_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
