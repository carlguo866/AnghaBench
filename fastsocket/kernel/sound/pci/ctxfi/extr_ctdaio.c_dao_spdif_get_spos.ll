; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_spdif_get_spos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctdaio.c_dao_spdif_get_spos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dao = type { i32, i64 }
%struct.hw = type { i32 (i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dao*, i32*)* @dao_spdif_get_spos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dao_spdif_get_spos(%struct.dao* %0, i32* %1) #0 {
  %3 = alloca %struct.dao*, align 8
  %4 = alloca i32*, align 8
  store %struct.dao* %0, %struct.dao** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.dao*, %struct.dao** %3, align 8
  %6 = getelementptr inbounds %struct.dao, %struct.dao* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.hw*
  %9 = getelementptr inbounds %struct.hw, %struct.hw* %8, i32 0, i32 0
  %10 = load i32 (i32, i32*)*, i32 (i32, i32*)** %9, align 8
  %11 = load %struct.dao*, %struct.dao** %3, align 8
  %12 = getelementptr inbounds %struct.dao, %struct.dao* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 %10(i32 %13, i32* %14)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
