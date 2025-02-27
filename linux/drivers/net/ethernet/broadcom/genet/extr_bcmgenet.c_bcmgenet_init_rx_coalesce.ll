; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_rx_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_rx_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_rx_ring = type { i32, i32, %struct.bcmgenet_net_dim }
%struct.bcmgenet_net_dim = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.dim_cq_moder = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_rx_ring*)* @bcmgenet_init_rx_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_init_rx_coalesce(%struct.bcmgenet_rx_ring* %0) #0 {
  %2 = alloca %struct.bcmgenet_rx_ring*, align 8
  %3 = alloca %struct.bcmgenet_net_dim*, align 8
  %4 = alloca %struct.dim_cq_moder, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dim_cq_moder, align 4
  store %struct.bcmgenet_rx_ring* %0, %struct.bcmgenet_rx_ring** %2, align 8
  %8 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %2, align 8
  %9 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %8, i32 0, i32 2
  store %struct.bcmgenet_net_dim* %9, %struct.bcmgenet_net_dim** %3, align 8
  %10 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %2, align 8
  %11 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %2, align 8
  %14 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.bcmgenet_net_dim*, %struct.bcmgenet_net_dim** %3, align 8
  %17 = getelementptr inbounds %struct.bcmgenet_net_dim, %struct.bcmgenet_net_dim* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load %struct.bcmgenet_net_dim*, %struct.bcmgenet_net_dim** %3, align 8
  %22 = getelementptr inbounds %struct.bcmgenet_net_dim, %struct.bcmgenet_net_dim* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @net_dim_get_def_rx_moderation(i32 %24)
  %26 = bitcast %struct.dim_cq_moder* %7 to i64*
  store i64 %25, i64* %26, align 4
  %27 = bitcast %struct.dim_cq_moder* %4 to i8*
  %28 = bitcast %struct.dim_cq_moder* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  %29 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %4, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %20, %1
  %34 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %2, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @bcmgenet_set_rx_coalesce(%struct.bcmgenet_rx_ring* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i64 @net_dim_get_def_rx_moderation(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcmgenet_set_rx_coalesce(%struct.bcmgenet_rx_ring*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
