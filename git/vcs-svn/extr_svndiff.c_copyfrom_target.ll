; ModuleID = '/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_copyfrom_target.c'
source_filename = "/home/carl/AnghaBench/git/vcs-svn/extr_svndiff.c_copyfrom_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@.str = private unnamed_addr constant [38 x i8] c"invalid delta: copies from the future\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.window*, i8**, i64, i8*)* @copyfrom_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyfrom_target(%struct.window* %0, i8** %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.window*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.window* %0, %struct.window** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8**, i8*** %7, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @parse_int(i8** %11, i64* %10, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %45

16:                                               ; preds = %4
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.window*, %struct.window** %6, align 8
  %19 = getelementptr inbounds %struct.window, %struct.window* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %17, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %5, align 4
  br label %45

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i64, i64* %8, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load %struct.window*, %struct.window** %6, align 8
  %31 = getelementptr inbounds %struct.window, %struct.window* %30, i32 0, i32 0
  %32 = load %struct.window*, %struct.window** %6, align 8
  %33 = getelementptr inbounds %struct.window, %struct.window* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %10, align 8
  %38 = getelementptr inbounds i32, i32* %35, i64 %36
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strbuf_addch(%struct.TYPE_2__* %31, i32 %39)
  br label %41

41:                                               ; preds = %29
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* %8, align 8
  br label %26

44:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %23, %15
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @parse_int(i8**, i64*, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
