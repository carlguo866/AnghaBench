; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_head_root.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm.c_asm_head_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @asm_head_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_head_root(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = call i32 @asm_head_root_base(%struct.TYPE_12__* %4)
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @emit_setvmstate(%struct.TYPE_12__* %6, i64 %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = call i64 @asm_stack_adjust(%struct.TYPE_12__* %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  store i64 %15, i64* %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @emit_spsub(%struct.TYPE_12__* %20, i64 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_13__* @gcref(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  ret void
}

declare dso_local i32 @asm_head_root_base(%struct.TYPE_12__*) #1

declare dso_local i32 @emit_setvmstate(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @asm_stack_adjust(%struct.TYPE_12__*) #1

declare dso_local i32 @emit_spsub(%struct.TYPE_12__*, i64) #1

declare dso_local %struct.TYPE_13__* @gcref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
