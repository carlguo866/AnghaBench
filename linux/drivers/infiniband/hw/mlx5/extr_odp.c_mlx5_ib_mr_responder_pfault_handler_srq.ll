; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_mr_responder_pfault_handler_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_mr_responder_pfault_handler_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_srq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Couldn't read all of the receive WQE's content\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_srq*, i8**, i8**, i32)* @mlx5_ib_mr_responder_pfault_handler_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_mr_responder_pfault_handler_srq(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_srq* %1, i8** %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.mlx5_ib_srq*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %7, align 8
  store %struct.mlx5_ib_srq* %1, %struct.mlx5_ib_srq** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.mlx5_ib_srq*, %struct.mlx5_ib_srq** %8, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_srq, %struct.mlx5_ib_srq* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %23 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %36

26:                                               ; preds = %5
  %27 = load i8**, i8*** %9, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %28, i64 %30
  %32 = load i8**, i8*** %10, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i8**, i8*** %9, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr i8, i8* %34, i64 4
  store i8* %35, i8** %33, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %26, %21
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
