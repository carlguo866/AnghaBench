; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_get_storage_server.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_service.c_get_storage_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@g_sorted_storages = common dso_local global i32 0, align 4
@g_storage_count = common dso_local global i32 0, align 4
@storage_cmp_by_server_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i8*)* @get_storage_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @get_storage_server(i8* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 @memset(%struct.TYPE_7__* %4, i32 0, i32 4)
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strcpy(i32 %10, i8* %11)
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %5, align 8
  %13 = load i32, i32* @g_sorted_storages, align 4
  %14 = load i32, i32* @g_storage_count, align 4
  %15 = load i32, i32* @storage_cmp_by_server_id, align 4
  %16 = call i64 @bsearch(%struct.TYPE_7__** %5, i32 %13, i32 %14, i32 8, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %17, %struct.TYPE_7__*** %6, align 8
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %19 = icmp eq %struct.TYPE_7__** %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %2, align 8
  br label %24

24:                                               ; preds = %21, %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %25
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @bsearch(%struct.TYPE_7__**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
