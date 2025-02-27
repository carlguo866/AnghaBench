; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_umv_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_umv_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i64, %struct.hclge_dev* }
%struct.hclge_dev = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_vport*, i32)* @hclge_update_umv_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_update_umv_space(%struct.hclge_vport* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %6, i32 0, i32 1
  %8 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  store %struct.hclge_dev* %8, %struct.hclge_dev** %5, align 8
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %10 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %16 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %22, %14
  %28 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %29 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %34 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %32, %27
  br label %61

38:                                               ; preds = %2
  %39 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %40 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %43 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %53 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %51, %46, %38
  %57 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %58 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %56, %37
  %62 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %63 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %62, i32 0, i32 2
  %64 = call i32 @mutex_unlock(i32* %63)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
