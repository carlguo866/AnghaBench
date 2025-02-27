; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_entry_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib4_entry_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib4_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlxsw_sp_fib_node* }
%struct.mlxsw_sp_fib_node = type { i32 }

@common = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib4_entry*, i32)* @mlxsw_sp_fib4_entry_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fib4_entry_replace(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib4_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_fib4_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %8 = alloca %struct.mlxsw_sp_fib4_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_fib4_entry* %1, %struct.mlxsw_sp_fib4_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_fib4_entry, %struct.mlxsw_sp_fib4_entry* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %11, align 8
  store %struct.mlxsw_sp_fib_node* %12, %struct.mlxsw_sp_fib_node** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %29

16:                                               ; preds = %3
  %17 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %5, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @common, i32 0, i32 0), align 4
  %19 = call %struct.mlxsw_sp_fib4_entry* @list_next_entry(%struct.mlxsw_sp_fib4_entry* %17, i32 %18)
  store %struct.mlxsw_sp_fib4_entry* %19, %struct.mlxsw_sp_fib4_entry** %8, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %21 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %8, align 8
  %22 = call i32 @mlxsw_sp_fib4_node_entry_unlink(%struct.mlxsw_sp* %20, %struct.mlxsw_sp_fib4_entry* %21)
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %24 = load %struct.mlxsw_sp_fib4_entry*, %struct.mlxsw_sp_fib4_entry** %8, align 8
  %25 = call i32 @mlxsw_sp_fib4_entry_destroy(%struct.mlxsw_sp* %23, %struct.mlxsw_sp_fib4_entry* %24)
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %27 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %7, align 8
  %28 = call i32 @mlxsw_sp_fib_node_put(%struct.mlxsw_sp* %26, %struct.mlxsw_sp_fib_node* %27)
  br label %29

29:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.mlxsw_sp_fib4_entry* @list_next_entry(%struct.mlxsw_sp_fib4_entry*, i32) #1

declare dso_local i32 @mlxsw_sp_fib4_node_entry_unlink(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib4_entry*) #1

declare dso_local i32 @mlxsw_sp_fib4_entry_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib4_entry*) #1

declare dso_local i32 @mlxsw_sp_fib_node_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
