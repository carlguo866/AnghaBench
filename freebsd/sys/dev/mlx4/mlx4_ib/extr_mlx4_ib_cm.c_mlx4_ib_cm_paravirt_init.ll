; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cm.c_mlx4_ib_cm_paravirt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cm.c_mlx4_ib_cm_paravirt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@RB_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_ib_cm_paravirt_init(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %2, align 8
  %3 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = call i32 @spin_lock_init(i32* %5)
  %7 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load i32, i32* @RB_ROOT, align 4
  %12 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @idr_init(i32* %17)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
