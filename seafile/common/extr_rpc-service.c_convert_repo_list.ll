; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_convert_repo_list.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_convert_repo_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_9__* }

@free_repo_obj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*)* @convert_repo_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @convert_repo_list(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  store i32* null, i32** %6, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  br label %9

9:                                                ; preds = %28, %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @convert_repo(i32* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = load i32, i32* @free_repo_obj, align 4
  %23 = call i32 @g_list_free_full(%struct.TYPE_9__* %21, i32 %22)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %35

24:                                               ; preds = %12
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call %struct.TYPE_9__* @g_list_prepend(%struct.TYPE_9__* %25, i32* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %4, align 8
  br label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %5, align 8
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = call %struct.TYPE_9__* @g_list_reverse(%struct.TYPE_9__* %33)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %2, align 8
  br label %35

35:                                               ; preds = %32, %20
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %36
}

declare dso_local i32* @convert_repo(i32*) #1

declare dso_local i32 @g_list_free_full(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.TYPE_9__* @g_list_prepend(%struct.TYPE_9__*, i32*) #1

declare dso_local %struct.TYPE_9__* @g_list_reverse(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
