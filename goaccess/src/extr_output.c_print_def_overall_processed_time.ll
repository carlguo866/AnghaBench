; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_print_def_overall_processed_time.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_print_def_overall_processed_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"secs\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@T_GEN_TIME = common dso_local global i32 0, align 4
@OVERALL_GENTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_def_overall_processed_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_def_overall_processed_time(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %9 = load i32, i32* @T_GEN_TIME, align 4
  store i32 %9, i32* %8, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @OVERALL_GENTIME, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @fpopen_obj_attr(i32* %10, i32 %11, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @print_def_metric(i32* %14, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %5, i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @fpclose_obj(i32* %17, i32 %18, i32 0)
  ret void
}

declare dso_local i32 @fpopen_obj_attr(i32*, i32, i32) #1

declare dso_local i32 @print_def_metric(i32*, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8, i32) #1

declare dso_local i32 @fpclose_obj(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
