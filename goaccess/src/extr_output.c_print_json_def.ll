; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_print_json_def.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_print_json_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TOTAL_MODULES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c",%.*s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@nlines = common dso_local global i32 0, align 4
@NL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @print_json_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_json_def(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @conf, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @module_to_id(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @fpopen_obj_attr(i32* %10, i32 %14, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @print_panel_def_meta(i32* %17, %struct.TYPE_5__* %18, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @fpclose_obj(i32* %21, i32 %22, i32 1)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TOTAL_MODULES, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp ne i32 %27, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %33 = load i32, i32* @nlines, align 4
  %34 = load i32, i32* @NL, align 4
  %35 = call i32 @fpjson(i32* %24, i8* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @fpopen_obj_attr(i32*, i32, i32) #1

declare dso_local i32 @module_to_id(i32) #1

declare dso_local i32 @print_panel_def_meta(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @fpclose_obj(i32*, i32, i32) #1

declare dso_local i32 @fpjson(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
