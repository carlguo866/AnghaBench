; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoe_freetframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoe_freetframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i32, i64, i32*, i32*, i64, i32*, %struct.aoetgt* }
%struct.aoetgt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aoe_freetframe(%struct.frame* %0) #0 {
  %2 = alloca %struct.frame*, align 8
  %3 = alloca %struct.aoetgt*, align 8
  store %struct.frame* %0, %struct.frame** %2, align 8
  %4 = load %struct.frame*, %struct.frame** %2, align 8
  %5 = getelementptr inbounds %struct.frame, %struct.frame* %4, i32 0, i32 6
  %6 = load %struct.aoetgt*, %struct.aoetgt** %5, align 8
  store %struct.aoetgt* %6, %struct.aoetgt** %3, align 8
  %7 = load %struct.frame*, %struct.frame** %2, align 8
  %8 = getelementptr inbounds %struct.frame, %struct.frame* %7, i32 0, i32 5
  store i32* null, i32** %8, align 8
  %9 = load %struct.frame*, %struct.frame** %2, align 8
  %10 = getelementptr inbounds %struct.frame, %struct.frame* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.frame*, %struct.frame** %2, align 8
  %12 = getelementptr inbounds %struct.frame, %struct.frame* %11, i32 0, i32 3
  store i32* null, i32** %12, align 8
  %13 = load %struct.frame*, %struct.frame** %2, align 8
  %14 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.frame*, %struct.frame** %2, align 8
  %16 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.frame*, %struct.frame** %2, align 8
  %18 = getelementptr inbounds %struct.frame, %struct.frame* %17, i32 0, i32 0
  %19 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  %20 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %19, i32 0, i32 0
  %21 = call i32 @list_add(i32* %18, i32* %20)
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
