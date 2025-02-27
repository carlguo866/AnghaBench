; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_alloc_cmd_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_alloc_cmd_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_3__*, %struct.hclge_hw }
%struct.TYPE_3__ = type { i32 }
%struct.hclge_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hclge_cmq_ring, %struct.hclge_cmq_ring }
%struct.hclge_cmq_ring = type { i32, %struct.hclge_dev* }

@HCLGE_TYPE_CSQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"descriptor %s alloc error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CSQ\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"CRQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_alloc_cmd_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_alloc_cmd_queue(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_hw*, align 8
  %7 = alloca %struct.hclge_cmq_ring*, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 1
  store %struct.hclge_hw* %10, %struct.hclge_hw** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @HCLGE_TYPE_CSQ, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.hclge_hw*, %struct.hclge_hw** %6, align 8
  %16 = getelementptr inbounds %struct.hclge_hw, %struct.hclge_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.hclge_hw*, %struct.hclge_hw** %6, align 8
  %20 = getelementptr inbounds %struct.hclge_hw, %struct.hclge_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi %struct.hclge_cmq_ring* [ %17, %14 ], [ %21, %18 ]
  store %struct.hclge_cmq_ring* %23, %struct.hclge_cmq_ring** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %7, align 8
  %26 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %28 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %7, align 8
  %29 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %28, i32 0, i32 1
  store %struct.hclge_dev* %27, %struct.hclge_dev** %29, align 8
  %30 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %7, align 8
  %31 = call i32 @hclge_alloc_cmd_desc(%struct.hclge_cmq_ring* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %22
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @HCLGE_TYPE_CSQ, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %34
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @hclge_alloc_cmd_desc(%struct.hclge_cmq_ring*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
