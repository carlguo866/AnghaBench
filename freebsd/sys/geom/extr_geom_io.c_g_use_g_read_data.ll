; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_use_g_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_io.c_g_use_g_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"g_use_g_read_data: non-NULL *bufp %p\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_use_g_read_data(i8* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.g_consumer*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8**, i8*** %8, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = load i8**, i8*** %8, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @KASSERT(i32 %14, i8* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.g_consumer*
  store %struct.g_consumer* %19, %struct.g_consumer** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %22 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = srem i32 %20, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %4
  %31 = load %struct.g_consumer*, %struct.g_consumer** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @g_read_data(%struct.g_consumer* %31, i32 %32, i32 %33, i32* null)
  %35 = load i8**, i8*** %8, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i8**, i8*** %8, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* %5, align 4
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %39, %28
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
