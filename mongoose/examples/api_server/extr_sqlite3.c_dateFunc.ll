; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_dateFunc.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_dateFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%04d-%02d-%02d\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @dateFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dateFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca [100 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32**, i32*** %6, align 8
  %12 = call i64 @isDate(i32* %9, i32 %10, i32** %11, %struct.TYPE_4__* %7)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = call i32 @computeYMD(%struct.TYPE_4__* %7)
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sqlite3_snprintf(i32 100, i8* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %26 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %27 = call i32 @sqlite3_result_text(i32* %24, i8* %25, i32 -1, i32 %26)
  br label %28

28:                                               ; preds = %14, %3
  ret void
}

declare dso_local i64 @isDate(i32*, i32, i32**, %struct.TYPE_4__*) #1

declare dso_local i32 @computeYMD(%struct.TYPE_4__*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
