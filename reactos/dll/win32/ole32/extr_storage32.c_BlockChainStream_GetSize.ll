; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_GetSize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_storage32.c_BlockChainStream_GetSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @BlockChainStream_GetSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BlockChainStream_GetSize(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @StorageImpl_ReadDirEntry(%struct.TYPE_12__* %12, i32 %15, %struct.TYPE_10__* %4)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %18 = bitcast %struct.TYPE_9__* %2 to i8*
  %19 = bitcast %struct.TYPE_9__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call i64 @BlockChainStream_GetCount(%struct.TYPE_11__* %21)
  %23 = trunc i64 %22 to i32
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %23, %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %20, %9
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  ret i32 %33
}

declare dso_local i32 @StorageImpl_ReadDirEntry(%struct.TYPE_12__*, i32, %struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @BlockChainStream_GetCount(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
