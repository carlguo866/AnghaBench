; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_free_fast_reg_page_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_free_fast_reg_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fast_reg_page_list = type { i32, i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_ib_fast_reg_page_list = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.mlx4_ib_fast_reg_page_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_ib_free_fast_reg_page_list(%struct.ib_fast_reg_page_list* %0) #0 {
  %2 = alloca %struct.ib_fast_reg_page_list*, align 8
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca %struct.mlx4_ib_fast_reg_page_list*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_fast_reg_page_list* %0, %struct.ib_fast_reg_page_list** %2, align 8
  %6 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %2, align 8
  %7 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mlx4_ib_dev* @to_mdev(i32 %8)
  store %struct.mlx4_ib_dev* %9, %struct.mlx4_ib_dev** %3, align 8
  %10 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %2, align 8
  %11 = call %struct.mlx4_ib_fast_reg_page_list* @to_mfrpl(%struct.ib_fast_reg_page_list* %10)
  store %struct.mlx4_ib_fast_reg_page_list* %11, %struct.mlx4_ib_fast_reg_page_list** %4, align 8
  %12 = load %struct.ib_fast_reg_page_list*, %struct.ib_fast_reg_page_list** %2, align 8
  %13 = getelementptr inbounds %struct.ib_fast_reg_page_list, %struct.ib_fast_reg_page_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_fast_reg_page_list, %struct.mlx4_ib_fast_reg_page_list* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %4, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_fast_reg_page_list, %struct.mlx4_ib_fast_reg_page_list* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dma_free_coherent(i32* %23, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_fast_reg_page_list, %struct.mlx4_ib_fast_reg_page_list* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %34, align 8
  %36 = call i32 @kfree(%struct.mlx4_ib_fast_reg_page_list* %35)
  %37 = load %struct.mlx4_ib_fast_reg_page_list*, %struct.mlx4_ib_fast_reg_page_list** %4, align 8
  %38 = call i32 @kfree(%struct.mlx4_ib_fast_reg_page_list* %37)
  ret void
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_fast_reg_page_list* @to_mfrpl(%struct.ib_fast_reg_page_list*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_fast_reg_page_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
