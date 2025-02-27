; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_stamp_send_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_stamp_send_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_wqe_ctrl_seg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_qp*, i32)* @stamp_send_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stamp_send_wqe(%struct.mlx4_ib_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_ib_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mlx4_wqe_ctrl_seg*, align 8
  store %struct.mlx4_ib_qp* %0, %struct.mlx4_ib_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %11, %16
  %18 = call i8* @get_send_wqe(%struct.mlx4_ib_qp* %10, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.mlx4_wqe_ctrl_seg*
  store %struct.mlx4_wqe_ctrl_seg* %20, %struct.mlx4_wqe_ctrl_seg** %9, align 8
  %21 = load %struct.mlx4_wqe_ctrl_seg*, %struct.mlx4_wqe_ctrl_seg** %9, align 8
  %22 = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, %struct.mlx4_wqe_ctrl_seg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 63
  %26 = shl i32 %25, 4
  store i32 %26, i32* %7, align 4
  store i32 64, i32* %6, align 4
  br label %27

27:                                               ; preds = %39, %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %32, i64 %34
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %5, align 8
  %37 = call i32 @cpu_to_be32(i32 -1)
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 64
  store i32 %41, i32* %6, align 4
  br label %27

42:                                               ; preds = %27
  ret void
}

declare dso_local i8* @get_send_wqe(%struct.mlx4_ib_qp*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
