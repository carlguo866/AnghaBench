; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cq.c_mlx4_cq_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cq.c_mlx4_cq_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx4_cq = type { i32 (%struct.mlx4_cq*)*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Completion event for bogus CQ %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cq_completion(%struct.mlx4_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_cq*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %7 = call %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev* %6)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %10, %15
  %17 = call %struct.mlx4_cq* @radix_tree_lookup(i32* %9, i32 %16)
  store %struct.mlx4_cq* %17, %struct.mlx4_cq** %5, align 8
  %18 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %19 = icmp ne %struct.mlx4_cq* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @mlx4_dbg(%struct.mlx4_dev* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %30 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %29, i32 0, i32 0
  %31 = load i32 (%struct.mlx4_cq*)*, i32 (%struct.mlx4_cq*)** %30, align 8
  %32 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %33 = call i32 %31(%struct.mlx4_cq* %32)
  br label %34

34:                                               ; preds = %24, %20
  ret void
}

declare dso_local %struct.mlx4_cq* @radix_tree_lookup(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
