; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { i32, %struct.TYPE_2__*, %struct.imx_ic_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.imx_ic_priv = type { i32 }

@IMX_MEDIA_GRP_ID_IPU_VDIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prp_priv*)* @prp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_start(%struct.prp_priv* %0) #0 {
  %2 = alloca %struct.prp_priv*, align 8
  %3 = alloca %struct.imx_ic_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.prp_priv* %0, %struct.prp_priv** %2, align 8
  %5 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %6 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %5, i32 0, i32 2
  %7 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %6, align 8
  store %struct.imx_ic_priv* %7, %struct.imx_ic_priv** %3, align 8
  %8 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %9 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IMX_MEDIA_GRP_ID_IPU_VDIC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load %struct.imx_ic_priv*, %struct.imx_ic_priv** %3, align 8
  %20 = getelementptr inbounds %struct.imx_ic_priv, %struct.imx_ic_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.prp_priv*, %struct.prp_priv** %2, align 8
  %23 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ipu_set_ic_src_mux(i32 %21, i32 %24, i32 %25)
  ret i32 0
}

declare dso_local i32 @ipu_set_ic_src_mux(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
