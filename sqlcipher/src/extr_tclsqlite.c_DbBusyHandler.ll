; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_DbBusyHandler.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_DbBusyHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@TCL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @DbBusyHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DbBusyHandler(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [30 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @sqlite3_snprintf(i32 30, i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [30 x i8], [30 x i8]* %8, i64 0, i64 0
  %21 = call i32 @Tcl_VarEval(i32 %16, i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* null)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @TCL_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @Tcl_GetStringResult(i32 %28)
  %30 = call i64 @atoi(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %2
  store i32 0, i32* %3, align 4
  br label %34

33:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @Tcl_VarEval(i32, i32, i8*, i8*, i8*) #1

declare dso_local i64 @atoi(i32) #1

declare dso_local i32 @Tcl_GetStringResult(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
