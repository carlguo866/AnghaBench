; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_effect_getval_inline.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_effect_getval_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"effect_getval_inline: invalid param\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"effect_getval_inline: invalid data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i64)* @effect_getval_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @effect_getval_inline(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @LOG_ERROR, align 4
  %12 = call i32 @blog(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %33

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @LOG_ERROR, align 4
  %18 = call i32 @blog(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %33

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @min(i64 %20, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @memcpy(i8* %26, i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %19, %16, %10
  ret void
}

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
