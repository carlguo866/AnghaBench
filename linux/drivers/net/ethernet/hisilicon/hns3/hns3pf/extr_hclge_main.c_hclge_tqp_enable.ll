; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_tqp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_tqp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_desc = type { i64 }
%struct.hclge_cfg_com_tqp_queue_cmd = type { i32, i8*, i8* }

@HCLGE_OPC_CFG_COM_TQP_QUEUE = common dso_local global i32 0, align 4
@HCLGE_RING_ID_MASK = common dso_local global i32 0, align 4
@HCLGE_TQP_ENABLE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Tqp enable fail, status =%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32, i32)* @hclge_tqp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tqp_enable(%struct.hclge_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hclge_desc, align 8
  %10 = alloca %struct.hclge_cfg_com_tqp_queue_cmd*, align 8
  %11 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %9, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.hclge_cfg_com_tqp_queue_cmd*
  store %struct.hclge_cfg_com_tqp_queue_cmd* %14, %struct.hclge_cfg_com_tqp_queue_cmd** %10, align 8
  %15 = load i32, i32* @HCLGE_OPC_CFG_COM_TQP_QUEUE, align 4
  %16 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %9, i32 %15, i32 0)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @HCLGE_RING_ID_MASK, align 4
  %19 = and i32 %17, %18
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.hclge_cfg_com_tqp_queue_cmd*, %struct.hclge_cfg_com_tqp_queue_cmd** %10, align 8
  %22 = getelementptr inbounds %struct.hclge_cfg_com_tqp_queue_cmd, %struct.hclge_cfg_com_tqp_queue_cmd* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.hclge_cfg_com_tqp_queue_cmd*, %struct.hclge_cfg_com_tqp_queue_cmd** %10, align 8
  %26 = getelementptr inbounds %struct.hclge_cfg_com_tqp_queue_cmd, %struct.hclge_cfg_com_tqp_queue_cmd* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load i32, i32* @HCLGE_TQP_ENABLE_B, align 4
  %31 = shl i32 1, %30
  %32 = load %struct.hclge_cfg_com_tqp_queue_cmd*, %struct.hclge_cfg_com_tqp_queue_cmd** %10, align 8
  %33 = getelementptr inbounds %struct.hclge_cfg_com_tqp_queue_cmd, %struct.hclge_cfg_com_tqp_queue_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %29, %4
  %37 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %38 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %37, i32 0, i32 1
  %39 = call i32 @hclge_cmd_send(i32* %38, %struct.hclge_desc* %9, i32 1)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %44 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
