; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/cid/extr_cidriver.c_cid_get_ros.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/cid/extr_cidriver.c_cid_get_ros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i32 }

@FT_Err_Ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**, i8**, i32*)* @cid_get_ros to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cid_get_ros(%struct.TYPE_5__* %0, i8** %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %9, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8**, i8*** %6, align 8
  store i8* %17, i8** %18, align 8
  br label %19

19:                                               ; preds = %14, %4
  %20 = load i8**, i8*** %7, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8**, i8*** %7, align 8
  store i8* %25, i8** %26, align 8
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* @FT_Err_Ok, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
