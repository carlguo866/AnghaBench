; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_gene_ropm2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_gene_ropm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv50_gr_construct_gene_ropm2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_construct_gene_ropm2(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %4 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %4, i32 0, i32 0
  %6 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  store %struct.nvkm_device* %6, %struct.nvkm_device** %3, align 8
  %7 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %8 = call i32 @xf_emit(%struct.nvkm_grctx* %7, i32 1, i32 0)
  %9 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %10 = call i32 @xf_emit(%struct.nvkm_grctx* %9, i32 1, i32 262957185)
  %11 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %12 = call i32 @xf_emit(%struct.nvkm_grctx* %11, i32 2, i32 0)
  %13 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %14 = call i32 @xf_emit(%struct.nvkm_grctx* %13, i32 1, i32 0)
  %15 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %16 = call i32 @xf_emit(%struct.nvkm_grctx* %15, i32 2, i32 0)
  %17 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %18 = call i32 @xf_emit(%struct.nvkm_grctx* %17, i32 1, i32 0)
  %19 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %20 = call i32 @xf_emit(%struct.nvkm_grctx* %19, i32 1, i32 0)
  %21 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %22 = call i32 @xf_emit(%struct.nvkm_grctx* %21, i32 1, i32 0)
  %23 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %24 = call i32 @xf_emit(%struct.nvkm_grctx* %23, i32 1, i32 0)
  %25 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %26 = call i32 @xf_emit(%struct.nvkm_grctx* %25, i32 2, i32 0)
  %27 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %28 = call i32 @xf_emit(%struct.nvkm_grctx* %27, i32 1, i32 82034655)
  %29 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %30 = call i32 @xf_emit(%struct.nvkm_grctx* %29, i32 1, i32 82034655)
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %32 = call i32 @xf_emit(%struct.nvkm_grctx* %31, i32 1, i32 0)
  %33 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %34 = call i32 @xf_emit(%struct.nvkm_grctx* %33, i32 1, i32 0)
  %35 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %36 = call i32 @xf_emit(%struct.nvkm_grctx* %35, i32 1, i32 0)
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %38 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @IS_NVA3F(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %44 = call i32 @xf_emit(%struct.nvkm_grctx* %43, i32 1, i32 17)
  br label %45

45:                                               ; preds = %42, %1
  %46 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %47 = call i32 @xf_emit(%struct.nvkm_grctx* %46, i32 1, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i64 @IS_NVA3F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
