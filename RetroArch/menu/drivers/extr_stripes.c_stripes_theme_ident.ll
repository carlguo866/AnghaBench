; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_theme_ident.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_theme_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"flatui\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"retroactive\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"retrosystem\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"neoactive\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"systematic\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dot-art\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"monochrome-inverted\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"monochrome\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stripes_theme_ident() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = call %struct.TYPE_5__* (...) @config_get_ptr()
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %18 [
    i32 135, label %8
    i32 130, label %9
    i32 129, label %10
    i32 131, label %11
    i32 132, label %12
    i32 128, label %13
    i32 136, label %14
    i32 137, label %15
    i32 133, label %16
    i32 134, label %17
  ]

8:                                                ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %20

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %20

10:                                               ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %20

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %20

12:                                               ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %20

13:                                               ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %20

14:                                               ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %20

15:                                               ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  br label %20

16:                                               ; preds = %0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  br label %20

17:                                               ; preds = %0
  br label %18

18:                                               ; preds = %0, %17
  br label %19

19:                                               ; preds = %18
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** %1, align 8
  br label %20

20:                                               ; preds = %19, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %21 = load i8*, i8** %1, align 8
  ret i8* %21
}

declare dso_local %struct.TYPE_5__* @config_get_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
