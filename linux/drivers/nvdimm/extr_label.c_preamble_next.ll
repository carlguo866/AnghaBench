; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_preamble_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_preamble_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { i32 }
%struct.nd_namespace_index = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_drvdata*, %struct.nd_namespace_index**, i64**, i32*)* @preamble_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preamble_next(%struct.nvdimm_drvdata* %0, %struct.nd_namespace_index** %1, i64** %2, i32* %3) #0 {
  %5 = alloca %struct.nvdimm_drvdata*, align 8
  %6 = alloca %struct.nd_namespace_index**, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i32*, align 8
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %5, align 8
  store %struct.nd_namespace_index** %1, %struct.nd_namespace_index*** %6, align 8
  store i64** %2, i64*** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %5, align 8
  %10 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %5, align 8
  %11 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nd_namespace_index**, %struct.nd_namespace_index*** %6, align 8
  %14 = load i64**, i64*** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @preamble_index(%struct.nvdimm_drvdata* %9, i32 %12, %struct.nd_namespace_index** %13, i64** %14, i32* %15)
  ret i32 %16
}

declare dso_local i32 @preamble_index(%struct.nvdimm_drvdata*, i32, %struct.nd_namespace_index**, i64**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
