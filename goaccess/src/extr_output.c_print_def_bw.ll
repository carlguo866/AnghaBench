; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_output.c_print_def_bw.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_output.c_print_def_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"12%\00", align 1
@MTRC_BW_LBL = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_def_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_def_bw(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  %11 = load i32, i32* @MTRC_BW_LBL, align 4
  store i32 %11, i32* %10, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @conf, i32 0, i32 0), align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @print_def_block(i32* %16, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %5, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @print_def_block(i32*, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
