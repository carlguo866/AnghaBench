; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_set_volmode_sync_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_set_volmode_sync_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MAXNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"volmode\00", align 1
@ZVOL_ASYNC_SET_VOLMODE = common dso_local global i32 0, align 4
@zvol_task_cb = common dso_local global i32 0, align 4
@TQ_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i8*)* @zvol_set_volmode_sync_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zvol_set_volmode_sync_cb(%struct.TYPE_5__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @MAXNAMELEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @dsl_dataset_name(i32* %17, i8* %16)
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @dsl_prop_get_int_ds(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %11)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load i32, i32* @ZVOL_ASYNC_SET_VOLMODE, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32* @zvol_task_alloc(i32 %24, i8* %16, i32* null, i32 %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %40

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @zvol_task_cb, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* @TQ_SLEEP, align 4
  %39 = call i32 @taskq_dispatch(i32 %35, i32 %36, i32* %37, i32 %38)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %30, %29, %22
  %41 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dsl_dataset_name(i32*, i8*) #2

declare dso_local i64 @dsl_prop_get_int_ds(i32*, i8*, i32*) #2

declare dso_local i32* @zvol_task_alloc(i32, i8*, i32*, i32) #2

declare dso_local i32 @taskq_dispatch(i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
