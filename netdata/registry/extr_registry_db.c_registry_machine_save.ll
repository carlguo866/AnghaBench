; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_db.c_registry_machine_save.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_db.c_registry_machine_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32 }

@D_REGISTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Registry: registry_machine_save('%s')\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"M\09%08x\09%08x\09%08x\09%s\0A\00", align 1
@registry_machine_save_url = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @registry_machine_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @registry_machine_save(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* @D_REGISTRY, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @debug(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @fprintf(i32* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i8* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @registry_machine_save_url, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @dictionary_get_all(i32 %38, i32 %39, i32* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %2
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @dictionary_get_all(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
