; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_be_aas_bspc.c_AAS_CalcReachAndClusters.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_be_aas_bspc.c_AAS_CalcReachAndClusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.quakefile_s = type { i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"loading collision map...\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@worldmodel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_CalcReachAndClusters(%struct.quakefile_s* %0) #0 {
  %2 = alloca %struct.quakefile_s*, align 8
  %3 = alloca float, align 4
  store %struct.quakefile_s* %0, %struct.quakefile_s** %2, align 8
  %4 = call i32 @Log_Print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.quakefile_s*, %struct.quakefile_s** %2, align 8
  %6 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.quakefile_s*, %struct.quakefile_s** %2, align 8
  %13 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.quakefile_s*, %struct.quakefile_s** %2, align 8
  %16 = getelementptr inbounds %struct.quakefile_s, %struct.quakefile_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @strcpy(i32* %14, i32 %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.quakefile_s*, %struct.quakefile_s** %2, align 8
  %21 = bitcast %struct.quakefile_s* %20 to i8*
  %22 = load i32, i32* @qfalse, align 4
  %23 = call i32 @CM_LoadMap(i8* %21, i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 2))
  %24 = call i32 @CM_InlineModel(i32 0)
  store i32 %24, i32* @worldmodel, align 4
  %25 = call i32 (...) @AAS_InitBotImport()
  %26 = call i32 (...) @AAS_LoadBSPFile()
  %27 = call i32 (...) @AAS_InitSettings()
  %28 = call i32 (...) @AAS_InitAASLinkHeap()
  %29 = call i32 (...) @AAS_InitAASLinkedEntities()
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %30 = call i32 (...) @AAS_SetViewPortalsAsClusterPortals()
  %31 = call i32 (...) @AAS_InitReachability()
  store float 0.000000e+00, float* %3, align 4
  br label %32

32:                                               ; preds = %36, %19
  %33 = load float, float* %3, align 4
  %34 = call i64 @AAS_ContinueInitReachability(float %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load float, float* %3, align 4
  %38 = fadd float %37, 1.000000e+00
  store float %38, float* %3, align 4
  br label %32

39:                                               ; preds = %32
  %40 = call i32 (...) @AAS_InitClustering()
  ret void
}

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i32 @CM_LoadMap(i8*, i32, i32*) #1

declare dso_local i32 @CM_InlineModel(i32) #1

declare dso_local i32 @AAS_InitBotImport(...) #1

declare dso_local i32 @AAS_LoadBSPFile(...) #1

declare dso_local i32 @AAS_InitSettings(...) #1

declare dso_local i32 @AAS_InitAASLinkHeap(...) #1

declare dso_local i32 @AAS_InitAASLinkedEntities(...) #1

declare dso_local i32 @AAS_SetViewPortalsAsClusterPortals(...) #1

declare dso_local i32 @AAS_InitReachability(...) #1

declare dso_local i64 @AAS_ContinueInitReachability(float) #1

declare dso_local i32 @AAS_InitClustering(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
