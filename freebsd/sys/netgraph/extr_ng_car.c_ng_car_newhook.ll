; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_car.c_ng_car_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i8* }

@NG_CAR_HOOK_LOWER = common dso_local global i32 0, align 4
@NG_CAR_HOOK_UPPER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ng_car_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_car_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_4__* @NG_NODE_PRIVATE(i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @NG_CAR_HOOK_LOWER, align 4
  %13 = call i64 @strcmp(i8* %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i8* %16, i8** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @bzero(i32* %26, i32 4)
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = call i32 @NG_HOOK_SET_PRIVATE(i8* %28, %struct.TYPE_5__* %30)
  br label %57

32:                                               ; preds = %3
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @NG_CAR_HOOK_UPPER, align 4
  %35 = call i64 @strcmp(i8* %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @bzero(i32* %48, i32 4)
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @NG_HOOK_SET_PRIVATE(i8* %50, %struct.TYPE_5__* %52)
  br label %56

54:                                               ; preds = %32
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %15
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_4__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i8*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
