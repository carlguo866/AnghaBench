; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_nhc_dest.c_dest_nhid_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_nhc_dest.c_dest_nhid_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowpan_nhc = type { i32*, i32* }

@LOWPAN_NHC_DEST_ID_0 = common dso_local global i32 0, align 4
@LOWPAN_NHC_DEST_MASK_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lowpan_nhc*)* @dest_nhid_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dest_nhid_setup(%struct.lowpan_nhc* %0) #0 {
  %2 = alloca %struct.lowpan_nhc*, align 8
  store %struct.lowpan_nhc* %0, %struct.lowpan_nhc** %2, align 8
  %3 = load i32, i32* @LOWPAN_NHC_DEST_ID_0, align 4
  %4 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %2, align 8
  %5 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 %3, i32* %7, align 4
  %8 = load i32, i32* @LOWPAN_NHC_DEST_MASK_0, align 4
  %9 = load %struct.lowpan_nhc*, %struct.lowpan_nhc** %2, align 8
  %10 = getelementptr inbounds %struct.lowpan_nhc, %struct.lowpan_nhc* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
