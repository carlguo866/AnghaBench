; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc.c_mmc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc.c_mmc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*)* @mmc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_remove(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %3 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %4 = icmp ne %struct.mmc_host* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @BUG_ON(i32 %6)
  %8 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @mmc_remove_card(i32* %17)
  %19 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_remove_card(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
