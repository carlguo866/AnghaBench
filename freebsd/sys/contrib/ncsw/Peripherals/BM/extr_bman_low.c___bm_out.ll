; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c___bm_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c___bm_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bm_addr*, i64, i32)* @__bm_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bm_out(%struct.bm_addr* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.bm_addr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.bm_addr* %0, %struct.bm_addr** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bm_addr*, %struct.bm_addr** %4, align 8
  %9 = getelementptr inbounds %struct.bm_addr, %struct.bm_addr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @ptr_ADD(i32 %10, i64 %11)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @WRITE_UINT32(i32 %15, i32 %16)
  ret void
}

declare dso_local i64 @ptr_ADD(i32, i64) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
