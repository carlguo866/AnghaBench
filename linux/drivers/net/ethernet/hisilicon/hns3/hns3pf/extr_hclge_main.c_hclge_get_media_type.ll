; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_media_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_media_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32*, i32*)* @hclge_get_media_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_get_media_type(%struct.hnae3_handle* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hclge_vport*, align 8
  %8 = alloca %struct.hclge_dev*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %10 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %9)
  store %struct.hclge_vport* %10, %struct.hclge_vport** %7, align 8
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %12 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %11, i32 0, i32 0
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  store %struct.hclge_dev* %13, %struct.hclge_dev** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %16, %3
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %28 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %23
  ret void
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
