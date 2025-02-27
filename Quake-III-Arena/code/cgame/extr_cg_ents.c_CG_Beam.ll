; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_Beam.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_Beam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@RT_BEAM = common dso_local global i32 0, align 4
@RF_NOSHADOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_Beam(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %4, align 8
  %7 = call i32 @memset(%struct.TYPE_9__* %3, i32 0, i32 20)
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @VectorCopy(i32 %11, i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @VectorCopy(i32 %17, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AxisClear(i32 %22)
  %24 = load i32, i32* @RT_BEAM, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @RF_NOSHADOW, align 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_9__* %3)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @AxisClear(i32) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
