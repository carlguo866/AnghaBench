; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_vma_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_vma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64 }
%struct.mlx5_ib_vma_private_data = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @mlx5_ib_vma_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_vma_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.mlx5_ib_vma_private_data*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %5 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.mlx5_ib_vma_private_data*
  store %struct.mlx5_ib_vma_private_data* %7, %struct.mlx5_ib_vma_private_data** %3, align 8
  %8 = load %struct.mlx5_ib_vma_private_data*, %struct.mlx5_ib_vma_private_data** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_vma_private_data, %struct.mlx5_ib_vma_private_data* %8, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = load %struct.mlx5_ib_vma_private_data*, %struct.mlx5_ib_vma_private_data** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_vma_private_data, %struct.mlx5_ib_vma_private_data* %10, i32 0, i32 0
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.mlx5_ib_vma_private_data*, %struct.mlx5_ib_vma_private_data** %3, align 8
  %14 = call i32 @kfree(%struct.mlx5_ib_vma_private_data* %13)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_vma_private_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
