; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_collectionstore.c_CRYPT_CollectionCreateContextFromChild.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_collectionstore.c_CRYPT_CollectionCreateContextFromChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* (%struct.TYPE_12__*, i32*, i32)* }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_13__*, i32*, %struct.TYPE_12__*)* @CRYPT_CollectionCreateContextFromChild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @CRYPT_CollectionCreateContextFromChild(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__* (%struct.TYPE_12__*, i32*, i32)*, %struct.TYPE_12__* (%struct.TYPE_12__*, i32*, i32)** %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* @TRUE, align 4
  %18 = call %struct.TYPE_12__* %13(%struct.TYPE_12__* %14, i32* %16, i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %28

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32* %23, i32** %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %4, align 8
  br label %28

28:                                               ; preds = %22, %21
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
