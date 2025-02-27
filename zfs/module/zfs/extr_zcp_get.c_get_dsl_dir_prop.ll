; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_get.c_get_dsl_dir_prop.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zcp_get.c_get_dsl_dir_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32*)* @get_dsl_dir_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dsl_dir_prop(%struct.TYPE_10__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = call i32 @mutex_enter(i32* %13)
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %36 [
    i32 128, label %16
    i32 131, label %20
    i32 130, label %24
    i32 129, label %28
    i32 132, label %32
  ]

16:                                               ; preds = %3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = call i32 @dsl_dir_get_usedsnap(%struct.TYPE_9__* %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  br label %41

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = call i32 @dsl_dir_get_usedchild(%struct.TYPE_9__* %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = call i32 @dsl_dir_get_usedds(%struct.TYPE_9__* %25)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %41

28:                                               ; preds = %3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = call i32 @dsl_dir_get_usedrefreserv(%struct.TYPE_9__* %29)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = call i32 @dsl_dir_get_logicalused(%struct.TYPE_9__* %33)
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %41

36:                                               ; preds = %3
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = call i32 @mutex_exit(i32* %38)
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %32, %28, %24, %20, %16
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = call i32 @mutex_exit(i32* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dsl_dir_get_usedsnap(%struct.TYPE_9__*) #1

declare dso_local i32 @dsl_dir_get_usedchild(%struct.TYPE_9__*) #1

declare dso_local i32 @dsl_dir_get_usedds(%struct.TYPE_9__*) #1

declare dso_local i32 @dsl_dir_get_usedrefreserv(%struct.TYPE_9__*) #1

declare dso_local i32 @dsl_dir_get_logicalused(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
