; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_erase_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_erase_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.erase_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.erase_info*)* @erase_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erase_callback(%struct.erase_info* %0) #0 {
  %2 = alloca %struct.erase_info*, align 8
  %3 = alloca i32*, align 8
  store %struct.erase_info* %0, %struct.erase_info** %2, align 8
  %4 = load %struct.erase_info*, %struct.erase_info** %2, align 8
  %5 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @wake_up(i32* %8)
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
