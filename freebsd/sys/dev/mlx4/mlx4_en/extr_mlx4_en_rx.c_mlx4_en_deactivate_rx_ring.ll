; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_deactivate_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_deactivate_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.mlx4_en_rx_ring = type { i32, i32 }

@TXBB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_deactivate_rx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_rx_ring*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %4, align 8
  %5 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %6 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %7 = call i32 @mlx4_en_free_rx_buf(%struct.mlx4_en_priv* %5, %struct.mlx4_en_rx_ring* %6)
  %8 = load i32, i32* @TXBB_SIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ule i64 4, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @TXBB_SIZE, align 4
  %13 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @mlx4_en_free_rx_buf(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
